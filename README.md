# Introduction
  The aim of this project is to implement digit recognition of handwritten numbers in MATLAB. Initially given a data set of 5000 images containing handwritten values ranging from 0-9, MATLAB is able to classify each image based on its calculated Euclidean distance. In order to be able to train the program, the initial data set has to be split into a training set and a testing set. For this project, every 50th image is used for testing and the rest of the 4900 images are used for training. After the data set is split, a nested loop for determining the Euclidean distance is created. Once the Euclidean distance has been calculated, the minimum distance for each value is determined and is connected to the corresponding label.
  
# Theoretical Calculations
  While there are many ways to classify an image for digit recognition, the Euclidean distance is chosen due to its simplicity. The Euclidean distance can be defined as </br>
<div style="text-align:center"><a href="https://www.codecogs.com/eqnedit.php?latex=d&space;=&space;\sqrt{(x_2-x_1)^2&plus;(y_2-y_1)^2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;=&space;\sqrt{(x_2-x_1)^2&plus;(y_2-y_1)^2}" title="d = \sqrt{(x_2-x_1)^2+(y_2-y_1)^2}" /></a></div></br>
In terms of the digit recognition program, the Euclidean distance equation can be rewritten to

 </br><div style="text-align:center"><a href="https://www.codecogs.com/eqnedit.php?latex=d&space;=&space;\sqrt{(testImages(:,:,idx_1)-trainImages(:,:,idx_2))^2}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?d&space;=&space;\sqrt{(testImages(:,:,idx_1)-trainImages(:,:,idx_2))^2}" title="d = \sqrt{(testImages(:,:,idx_1)-trainImages(:,:,idx_2))^2}" /></a></div></br>
where the length of the testing labels is idx_1 and the length of the training labels is idx_2.

# Experimental Results
Overall, the program is a success, with the percent accuracy at 95%. As seen in Appendix A, the code uses the formula found in Equation 2 in order to classify the images. The program uses the minimum distance in the training data set in order to differentiate between different digits.
<div style="text-align:center"><img src="https://raw.githubusercontent.com/gabehoban/matlabCharRec/master/CorrectSolution.png" /></div>
Figure 1 shows how the training image on the left correctly classified the testing image on the right as the number 9. While using the Euclidean distance is simple, it is not perfect. As seen in Figure 2, the program failed to differentiate the number 8 on the left to the number one on the right. By comparing the testLabel and the trainLabel, it can be determined if the digit recognition is accurate.
<div style="text-align:center"><img src="https://raw.githubusercontent.com/gabehoban/matlabCharRec/master/IncorrectSolution.png" /></div>

# Conclusion
In this project, a set of data is split into two separate groups, one with 100 images and another with the other 4900 images. It is important to point out that from finding the minimum Euclidean distance for each number, it can be matched to a separate image in the testing images. In order to increase the accuracy of the program, it would need a much larger data set of images.
