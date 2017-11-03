#include "ros/ros.h"
#include "std_msgs/Int32.h"

class Handler {
public:
	void recieve(const std_msgs::Int32& msg) {
		std::cout << ros::this_node::getName() << ": data: " << msg.data << std::endl;
		return;
	}
};

int main(int argc, char **argv) {
  ros::init(argc, argv, "subscriber");
  ros::NodeHandle n;
  Handler h;
  ros::Subscriber sub = n.subscribe("/topic", 1000, &Handler::recieve, &h);
  ros::spin();
  return 0;
}
