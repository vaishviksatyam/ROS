#!/usr/bin/env python3

from trail.srv import SquareService
from trail.srv import SquareServiceRequest
from trail.srv import SquareServiceResponse
import rospy

def calculation(req):
	print("got data %s",req.a)
	return SquareServiceResponse(req.a * req.a)

def handle_server():
	rospy.init_node('SquareServer')
	rospy.Service('SquareServerService',SquareService,calculation)
	print("Ready to calculate")
	rospy.spin()
	
if __name__ =="__main__":
	handle_server()
