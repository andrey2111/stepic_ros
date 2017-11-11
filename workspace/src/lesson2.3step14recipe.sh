mkdir workspace
cd workspace
mkdir src
cd src
catkin_create_pkg concatsrv message_generation message_runtime roscpp
cd concatsrv
mkdir srv
cd srv
touch ConCat.srv
echo "string first
string second
---
string concat" > ConCat.srv
cd ../
sed -i '13istd_msgs' CMakeLists.txt
sed -i '62iadd_service_files(FILES ConCat.srv)' CMakeLists.txt
sed -i '75igenerate_messages(DEPENDENCIES std_msgs)' CMakeLists.txt
touch src/serviceserver.cpp
sed -i '140iadd_executable(serviceserver src/serviceserver.cpp)' CMakeLists.txt
echo 'target_link_libraries(serviceserver ${catkin_LIBRARIES})' >> CMakeLists.txt

