# (Simulated) multiple laser scans from a single RGB-D camera

Header header		# timestamp in the header is the acquisition time of
					# the scan.
					#
					# in frame frame_id, angles are measured around 
					# the positive Z axis (counterclockwise, if Z is up)
					# with zero angle being forward along the X axis

sensor_msgs/LaserScan[] laser_scans	# range data of multiple levels

float32[] heights			# height of each scan (according to frame frame_id)

