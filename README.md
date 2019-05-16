
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

### Deployment Instructions

We elected to use Amazon Web Services to deploy our project. We selected the Amazon Linux AMI for our server as it already came with MySQL, Docker, and the appropriate Python libraries already installed.  Should you chose to deploy our project on a different Linux environment, you will need to install Docker, MySQL and at minimum Python 2.7. You will also need to install Exiftool by Phil Harvey. There is not a repository to fetch Exiftool, so you will have to acquire it using wget to retrieve the needed packets; enter the following commands

wget http://owl.phy.queensu.ca/~phil/exiftool/Image-ExifTool-11.38.tar.gz  
tar -xzf Image-Exiftool-11.38.tar.gz  
cd Exiftool-11.38  
sudo cp -r exiftool lib /usr/local/bin  

Steps
1.	Image Selection
![Deployment Image](https://github.com/WestonV/RJI-Image-Classifier/blob/master/Sprint%204/Deployment.png)
 
 
-	Our server ran best when selecting the t2.small type instance, as the extra memory helped the photo ranker run smoother.
-	We also used 30 GB for our storage size.
-	Make sure to allow HTTP traffic in the security group.
2.	Install a LAMP Server
o	https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/install-LAMP.html
o	Follow these instructions to install Apache and Mysql
3.	Download our Git html repository and place it at /var/www/html in the system. 
4.	Change directory to /var/www/html/image-quality-assessment
5.	The following commands will get the docker machine and image up and running.
a.	sudo yum install docker
b.	sudo usermod -aG docker ec2-user
c.	sudo service docker start
d.	docker build -t nima-cpu . -f Dockerfile.cpu
6.	Make predict.sh and rank.sh executable 
7.	You can test that docker is working using the following command in the image-quality-assessment directory.
	./predict  \
	--docker-image nima-cpu \
	--base-model-name MobileNet \
	--weights-file $(pwd)/models/MobileNet/weights_mobilenet_technical_0.11.hdf5 \
	--image-source $(pwd)/src/tests/test_images/42039.jpg
8.	Mysql stuff:  You will need to configure your local database. To do this log into the mysql prompt with the credentials you created in step 2. Then enter the following commands
	mysql> use db_name;
	mysql> source sprint2.sql;


### Thank You
