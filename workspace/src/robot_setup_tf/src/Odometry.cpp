#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Twist.h>
#include "geometry_msgs/PoseWithCovarianceStamped.h"
#include "geometry_msgs/PoseArray.h"
#include "geometry_msgs/Pose.h"
#include <apriltags_ros/MetaPose.h>
//#define _USE_MATH_DEFINES
//#include <cmath>
//#include <apriltags_ros/MetaPose.h>
//#include <cam_data_filter/cam_data_filter.h>
//move_base requires position from amcl amcl_pose but amcl uses the walls and is shitty so we convert aprilTag position to
//odom message and make move base think it is coming from amcl... stupid robots
double posX = 0.0;
double posY = 0.0;
double posZ = 0.0;
double oX = 0.0;
double oY = 0.0;
double oZ = 0.0;
void motorfunct(const geometry_msgs::Twist::ConstPtr& vel)
{}
void pose_funct(const apriltags_ros::MetaPose& pose)
{
   posX = pose.pose.position.x;
   posY = pose.pose.position.y;
   posZ = pose.pose.position.z;
   oX = pose.pose.orientation.x;
   oY = pose.pose.orientation.y;
   oZ = pose.pose.orientation.z;
}
int main(int argc, char** argv){
 ros::init(argc, argv, "odometry_publisher");  ros::NodeHandle n;
 ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom", 50);
 ros::Subscriber vel_sub = n.subscribe("cmd_vel", 1, motorfunct);
 ros::Subscriber pose_sub = n.subscribe("filteredCamData", 1, pose_funct);
 tf::TransformBroadcaster odom_broadcaster;
 //ros::Publisher pose_pub = n.advertise<geometry_msgs::PoseWithCovarianceStamped>("amcl_pose", 2, true);




  double x = posX; //0.0;
  double y = posY; //0.0;
  double th = oZ * M_PI / 180; //0.0;
  double xPrev = posX;
  double yPrev = posY;
  double thPrev = th;

  double vx = 0.0;
  double vy = 0.0;
  double vth = 0.0;

  ros::Time current_time, last_time;
  current_time = ros::Time::now();
  last_time = ros::Time::now();

  ros::Rate r(1.0);
  while(n.ok()){

    ros::spinOnce();               // check for incoming messages
    current_time = ros::Time::now();

    //compute odometry in a typical way given the velocities of the robot
    double dt = (current_time - last_time).toSec();
    double delta_x = x - xPrev;
    double delta_y = y - yPrev;
    double delta_th = th - thPrev;
    vx = delta_x / dt;
    vy = delta_y / dt;
    vth = delta_th / dt;
    x = posX; //+= delta_x;
    y = posY; //+= delta_y;
    th = oZ * M_PI / 180 ; // delta_th;

    //since all odometry is 6DOF we'll need a quaternion created from yaw
    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(th);

    //first, we'll publish the transform over tf
    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = current_time;
    odom_trans.header.frame_id = "odom";
    odom_trans.child_frame_id = "base_link";

    odom_trans.transform.translation.x = x;
    odom_trans.transform.translation.y = y;
    odom_trans.transform.translation.z = 0.0;
    odom_trans.transform.rotation = odom_quat;

    //send the transform
    odom_broadcaster.sendTransform(odom_trans);

    //next, we'll publish the odometry message over ROS
    nav_msgs::Odometry odom;
    odom.header.stamp = current_time;
    odom.header.frame_id = "odom";

    //set the position
    odom.pose.pose.position.x = x;
    odom.pose.pose.position.y = y;
    odom.pose.pose.position.z = 0.0;
    odom.pose.pose.orientation = odom_quat;

    //set the velocity
    odom.child_frame_id = "base_link";
    odom.twist.twist.linear.x = vx;
    odom.twist.twist.linear.y = vy;
    odom.twist.twist.angular.z = vth;

    //publish the message
    odom_pub.publish(odom);

    last_time = current_time;
    xPrev = x;
    yPrev = y;
    thPrev = th;
    r.sleep();
  }
}
