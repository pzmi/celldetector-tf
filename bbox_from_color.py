from matplotlib import pyplot as plt
import cv2
import numpy as np

def load_img(img_path):
    img = cv2.imread(img_path)
    img = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    hsv_img = cv2.cvtColor(img, cv2.COLOR_RGB2HSV)
    return hsv_img


def mask_color(img, lower_color, upper_color):
    mask = cv2.inRange(img, lower_color, upper_color)
    kernel_open = np.ones((5,5))
    kernel_close = np.ones((20,20))
    mask_open = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel_open)
    mask_close = cv2.morphologyEx(mask_open, cv2.MORPH_CLOSE, kernel_close)
    masked = cv2.bitwise_and(img, img, mask=mask_close)
    return masked


def detect_bounds(img):
    mins = [240, 320] # y,x
    maxes = [0, 0]
	for y in range(masked.shape[0]):
		for x in range(masked.shape[1]):
		    if not masked[y][x][0] == 0:
		        if y < mins[0]:
		            mins[0] = y
		        if y > maxes[0]:
		            maxes[0] = y
		        if x < mins[1]:
		            mins[1] = x
		        if x > maxes[1]:
		            maxes[1] = x
    mins.reverse()
	maxes.reverse()            
	return [(mins[0], maxes[1]), maxes, (maxes[0], mins[1]), (mins)]



