# Sprint 3

## Group 17

### Our Classifier

We have decided to use the "Idealo" classifier, [found here](https://github.com/idealo/image-quality-assessment). We chose this one because does exactly what we want it to do, provide a score, based on technical and asthetic ratings, to an image or batch of images. Furthermore, we chose to use this classifier because it had the capability to be hosted on an EC2 instance, which is where we've deployed our system.

### Training

In terms of training the classifier, we have not chosen to do this. The main reason we are not doing this is because of the time constraints we have with this being due at the end of the semester. Obviously, training this classifier would make it more effective. Currently, no matter what image you send the classifier, it will get a score between 4.0-6.9. This means, you could submit an all black picture, and it will still receive a score of 4.0 or higher. Clearer, this is something that training it would help out a lot with. However,in it's current state, the classifier still does provide a ranking, and that is enough for us to build our system around.