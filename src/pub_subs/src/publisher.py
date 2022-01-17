#!/usr/bin/env python3
import rospy
from std_msgs.msg import String


def talker():
	pub=rospy.Publisher('chatter',String,queue_size=10)
	rospy.init_node('talker',anonymous=True)
	rate=rospy.Rate(1)
	i=0
	
	while not rospy.is_shutdown():
		pub.publish("hello"+str(i))
		print("hello"+str(i))
		rate.sleep()
		i=i+1
		
if __name__=="__main__":
	talker()
