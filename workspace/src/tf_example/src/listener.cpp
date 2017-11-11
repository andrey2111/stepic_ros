#include <ros/ros.h>
#include <geometry_msgs/PointStamped.h>
#include <tf/transform_listener.h>
#include <stdlib.h>
#include "time.h"

void transformPoint(const tf::TransformListener& listener){
	geometry_msgs::PointStamped laser_point;
	laser_point.header.frame_id = "base_laser";
	laser_point.header.stamp = ros::Time();

	laser_point.point.x = float((rand()%10))/10;
	laser_point.point.y = float((rand()%10))/10;
	laser_point.point.z = float((rand()%10))/10;

	try{
		geometry_msgs::PointStamped base_point;
		listener.transformPoint("base_link", laser_point, base_point);

		ROS_INFO("base_laser: (%.2f,%.2f,%.2f) ----> base_link: (%.2f,%.2f,%.2f)",
				laser_point.point.x, laser_point.point.y, laser_point.point.z,
				base_point.point.x, base_point.point.y, base_point.point.z);
	}
	catch(tf::TransformException& ex){
		ROS_ERROR(ex.what());
	}
}

int main(int argc, char **argv)
{
  //Initiate ROS
  ros::init(argc, argv, "robot_tf_subscriber");
  ros::NodeHandle n;
  srand(time(0));

  tf::TransformListener listener;

  ros::Rate r(1);
  while(n.ok()){
	  transformPoint(listener);
	  r.sleep();
  }
  return 0;
}
