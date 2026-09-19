# Hardware setup

The experiment uses a human-operated driving cockpit connected through ROS to an F1/10 vehicle. The operator provides throttle and steering commands and receives vehicle feedback.

![F1/10 teleoperation hardware setup](teleop_fltenth_pic.png)

Operational ROS launch files, ROS nodes, and the baseline no-imposed-delay hardware teleoperation workflow are maintained in the laboratory's [F1-10-human-racing repository](https://github.com/resilient-autonomous-systems-lab/F1-10-human-racing/tree/main). Bring up and verify that baseline hardware workflow before using the research controllers in this repository.

Before executing a model against hardware, verify ROS connectivity, topic routing, command saturation, physical operating area, emergency-stop behavior, and personnel readiness.
