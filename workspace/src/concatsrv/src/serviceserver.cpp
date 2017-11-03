#include "ros/ros.h"
#include "concatsrv/ConCat.h"

bool concat(concatsrv::ConCat::Request &req,
		concatsrv::ConCat::Response &res)
{
	res.concat = req.first + req.second;
	ROS_INFO("request: x=%s, y=%s", req.first, req.second);
	ROS_INFO("sending back response: [%s]", res.concat);
	return true;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "concat_server");
	ros::NodeHandle n;
	std::string name = ros::this_node::getName() + "/concat";
	ros::ServiceServer service = n.advertiseService(name, concat);
	ROS_INFO("Ready to concat.");
	ros::spin();

	return 0;
}

