%% Clear Workspace

close all; 
clc; 
clear;
 
%% Step 1

load Data;
 
%% Step 2

for x=1:500:5000
    imagesc(images(:,:,x));
    colormap(gray(256))
    title(sprintf('Index: %0.0f',x))
    pause(.3);
end
 
%% Step3

testImages = images(:,:,1:50:5000);
trainImages = images(:,:,rem(1:5000,50) ~= 1);
 
%% Step 4

testLabels = labels(1:50:5000);
trainLabels = labels(rem(1:5000,50) ~= 1);
 
 
%% Steps 5-8

correct = 0;
for idx_1 = 1:length(testLabels)
    for idx_2 = 1:length(trainLabels)
        % Euclidean distance for each image
        D = (testImages(:,:,idx_1) - trainImages(:,:,idx_2)).^ 2;
        Distance(idx_2, 1) = sqrt(sum(D(:)));
    end
    % Determine minDistance for each image
    [minDistNum,min_idx]=min(Distance(:, 1));
    % Display train and test images
    subplot(1,2,1);
    imagesc(testImages(:,:,idx_1));
    subplot(1,2,2);
    imagesc(trainImages(:,:, min_idx));
    title(sprintf('Digit Number: %0.0f',testLabels(idx_1)));
    % Training
    if(testLabels(idx_1)==trainLabels(min_idx))
        correct = correct+1;
    else
        fprintf('Testing image %d index %d against training image %d index %d failed\n',testLabels(idx_1), idx_1, trainLabels(min_idx), min_idx);
    end
    pause(0.3);
end

%% Step 9

accuracy = (correct / length(testImages)) * 100;
fprintf('\nThe overall accuracy is %d%%', accuracy);
