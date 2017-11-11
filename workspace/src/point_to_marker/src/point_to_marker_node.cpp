#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

typedef visualization_msgs::Marker Marker;
typedef geometry_msgs::Point Point;

class SubscribeAndPublish
{
public:
  SubscribeAndPublish() : count_(0), mrk_()
  {
	  //Topic you want to publish
	  pub_ = n_.advertise<Marker>("/output", 1000);

      //Topic you want to subscribe
      sub_ = n_.subscribe("/input", 1000, &SubscribeAndPublish::callback, this);
  }

  void callback(const Point& input)
  {
	  mrk_.type = visualization_msgs::Marker::POINTS;
	  mrk_.points.push_back(input);
	  count_++;
	  if (count_ % 5 == 0) {
		  pub_.publish(mrk_);
		  mrk_.points.clear();
	  }
  }

private:
  ros::NodeHandle n_;
  ros::Publisher pub_;
  ros::Subscriber sub_;
  Marker mrk_;
  int count_;

};//End of class SubscribeAndPublish

int main(int argc, char **argv)
{
  //Initiate ROS
  ros::init(argc, argv, "point_to_marker");

  //Create an object of class SubscribeAndPublish that will take care of
  SubscribeAndPublish SAPObject;

  ros::spin();

  return 0;
}
