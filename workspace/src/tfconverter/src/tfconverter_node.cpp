#include <ros/ros.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/PointStamped.h>
#include <tf/transform_listener.h>

typedef geometry_msgs::Point Point;
typedef geometry_msgs::PointStamped PointStamped;
typedef tf::TransformListener TL;

class SubscribeAndPublish
{
public:
  SubscribeAndPublish()
  {
	  //Topic you want to publish
	  pub_ = n_.advertise<Point>("/output", 1000);

      //Topic you want to subscribe
      sub_ = n_.subscribe("/input", 1000, &SubscribeAndPublish::callback, this);
  }

  void callback(const PointStamped& input)
  {
	  TL listener;
	  PointStamped base_point;
	  listener.transformPoint("core_frame", input, base_point);
	  Point output(base_point.point);
	  pub_.publish(output);

  }

private:
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_;

};//End of class SubscribeAndPublish

int main(int argc, char **argv)
{
  //Initiate ROS
  ros::init(argc, argv, "tfconverter");

  //Create an object of class SubscribeAndPublish that will take care of
  SubscribeAndPublish SAPObject;

  ros::spin();

  return 0;
}
