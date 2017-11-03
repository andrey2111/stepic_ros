#include "ros/ros.h"
#include "my_service/AddInts.h"
#include <iostream>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "add_ints_publisher");

	ros::NodeHandle n;
	ros::ServiceClient client = n.serviceClient<my_service::AddInts>("add_two_ints");
	my_service::AddInts srv;

	while (ros::ok()) {
		int a, b;
		std::cout << "input the first integer:";
		std::cin >> a;
		std::cout << "input the second integer:";
		std::cin >> b;

		srv.request.first = a;
		srv.request.second = b;

		if(client.call(srv)) {
			std::cout << "sum =" << srv.response.sum << std::endl;
		}
		else{
			std::cout << "Failed to call service" << std::endl;
			return 1;
		}
	}
	return 0;
}
