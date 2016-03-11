/*
 * slam_gmapping
 * Copyright (c) 2008, Willow Garage, Inc.
 *
 * THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS CREATIVE
 * COMMONS PUBLIC LICENSE ("CCPL" OR "LICENSE"). THE WORK IS PROTECTED BY
 * COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE WORK OTHER THAN AS
 * AUTHORIZED UNDER THIS LICENSE OR COPYRIGHT LAW IS PROHIBITED.
 * 
 * BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE TO
 * BE BOUND BY THE TERMS OF THIS LICENSE. THE LICENSOR GRANTS YOU THE RIGHTS
 * CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND
 * CONDITIONS.
 *
 */

/* Author: Brian Gerkey */

#include <ros/ros.h>

#include "slam_gmapping.h"

int
main(int argc, char** argv)
{
  ros::init(argc, argv, "slam_gmapping");

  SlamGMapping gn;

  timeval start , end;
  long long time;

  gettimeofday(&start , NULL);

  gn.startLiveSlam();

  gettimeofday(&end, NULL);
  time = 1000000*(end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec);

  std::cout << "The startLiveSlam Time = "<<time << "\n";

  ros::spin();

  return(0);
}

