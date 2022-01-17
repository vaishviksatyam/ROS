#!/usr/bin/env python3

from trail.srv import SquareService
from trail.srv import SquareServiceRequest
from trail.srv import SquareServiceResponse
import rospy


def send_data():
	rospy.wait_for_service('SquareServerService')
	SquareServerService=rospy.ServiceProxy('SquareServerService',SquareService)
	res=SquareServerService(x)
	print("returned data=",res.square)		
				
if __name__=="__main__":
	x=5
	send_data()
