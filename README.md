
# RJI Image Ranking System

Machine Learning Image Classifier Designed to Help Journalists and Photographers

## CS4320 Software Engineering

## Group 17: Antonio Valazquez, Byron Hammann, Weston Verhulst

### Live Deployment Environment

Check out our final project [here.](http://ec2-3-88-210-63.compute-1.amazonaws.com/)  

### What Our Project Does

Our final project is a fully working ranking system that takes user-uploaded images and gives them a score. Then, the user is allowed to view and sort the images they've uploaded, and select any or all photos that they'd like to redownload. 

### How It's Made

This website design is based off of a bootstrap template. Server side code is handled via php, which interacts with a mySQL database. We're hosting our system on an Amazon EC2 instance, which again can be [found here.](http://ec2-3-88-210-63.compute-1.amazonaws.com/) The image classifier that we use to score and rank the images is the [idealo image classifier](https://github.com/idealo/image-quality-assessment), which we are also hosting on the EC2 server. This classifier has not been trained on our data set, and is simply the "out-of-the-box" model. 
