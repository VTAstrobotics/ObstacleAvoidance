#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "robot_tf_publisher");
  ros::NodeHandle n;

  ros::Rate r(100);

  tf::TransformBroadcaster broadcaster;


  while(n.ok()) {
   broadcaster.sendTransform (
     tf::StampedTransform (
       tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0)),
       ros::Time::now(),"map", "odom"));

//     broadcaster.sendTransform (
//      tf::StampedTransform (
//      tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0)),
//        ros::Time::now(),"odom", "base_link"));

    broadcaster.sendTransform (
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, -1, 1), tf::Vector3(.0089, 0.127, 0.0635)),//actual robot transform(0.5, -0.1, 0.13)),
        ros::Time::now(),"base_link", "kinect2_link"));

    broadcaster.sendTransform (
      tf::StampedTransform(
        tf::Transform(tf::Quaternion(0, 0, 0, 1), tf::Vector3(0, 0, 0)),
        ros::Time::now(),"kinect2_ir_optical_frame", "camera_depth_frame"));
  }
}
