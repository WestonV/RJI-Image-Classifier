# Sprint 1

## Group 17

You can find our deployment environment [here](http://ec2-54-165-106-189.compute-1.amazonaws.com/).

## Functional Requirement Specs

### User shall be able to upload images
- System will have an upload area on the home page, which can be found by scrolling down or 
clicking on the upload tab in the home bar.
- User will be able to either drag individual images or multiple images into the upload area or
will be able to select individual or multiple images from the file explorer if they open a prompt instead of dragging. 
- The system will only allow image formats to be uploaded.
- The system will cap total uploads to 10 GB
- The system will display progress information as upload is occuring. 

### User shall be able to rate photos 
- System will display photos sorted by ranking algorithm descending after completing upload
- User will be able to assign/reassign 0-5 star ratings on images
- System will record rating tags in the database


### User shall be able to download completed images. 
- System will display photos sorted by ranking algorithm descending after completing upload
- User will be able to select all images they wish to download
- System will have a download button
- User will be able to click download button and select where to save the files on their system
- System will prepare selected images for download by adding their quality score as well as ratings assigned by the user
- System will initiate download to user's selected location. 

## Database schema

Our database can can be found [here](../Sprint1/PhotoDatabaseRJI.sql).

The ERD for our database is shown below:
![ERD Image](../Sprint1/Sprint1ERD.jpg)

## Design Documents

## Languages we will be using

1. HTML/CSS/JS
    -needed to create web interface for user interaction
2. Python
    -used for the ranking algorithms
    -potential use for backend of web app
3. SQL
    -database language

### Skill Gaps

1. Tony and Weston are somewhat familiar with web dev.
2. Byron is proficient with SQL and DB area.
3. We all are new to Python, but willing to learn by finding examples on the web to help. Or asking for help if we get stuck.
