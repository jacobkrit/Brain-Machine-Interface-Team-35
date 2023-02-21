%%% Team Members: WRITE YOUR TEAM MEMBERS' NAMES HERE
%%% BMI Spring 2015 (Update 17th March 2015)

        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %         PLEASE READ BELOW            %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Function positionEstimator has to return the x and y coordinates of the
% monkey's hand position for each trial using only data up to that moment
% in time.
% You are free to use the whole trials for training the classifier.

% To evaluate performance we require from you two functions:

% A training function named "positionEstimatorTraining" which takes as
% input the entire (not subsampled) training data set and which returns a
% structure containing the parameters for the positionEstimator function:
% function modelParameters = positionEstimatorTraining(training_data)
% A predictor named "positionEstimator" which takes as input the data
% starting at 1ms and UP TO the timepoint at which you are asked to
% decode the hand position and the model parameters given by your training
% function:

% function [x y] = postitionEstimator(test_data, modelParameters)
% This function will be called iteratively starting with the neuronal data 
% going from 1 to 320 ms, then up to 340ms, 360ms, etc. until 100ms before 
% the end of trial.


% Place the positionEstimator.m and positionEstimatorTraining.m into a
% folder that is named with your official team name.

% Make sure that the output contains only the x and y coordinates of the
% monkey's hand.


function [modelParameters] = positionEstimatorTraining(training_data)
  % Arguments:
  
  % - training_data:
  %     training_data(n,k)              (n = trial id,  k = reaching angle)
  %     training_data(n,k).trialId      unique number of the trial
  %     training_data(n,k).spikes(i,t)  (i = neuron id, t = time)
  %     training_data(n,k).handPos(d,t) (d = dimension [1-3], t = time)
  
  % ... train your model
  
  % Return Value:
  
  % - modelParameters:
  %     single structure containing all the learned parameters of your
  %     model and which can be used by the "positionEstimator" function.
  
end

function [x, y] = positionEstimator(test_data, modelParameters)

  % **********************************************************
  %
  % You can also use the following function header to keep your state
  % from the last iteration
  %
  % function [x, y, newModelParameters] = positionEstimator(test_data, modelParameters)
  %                 ^^^^^^^^^^^^^^^^^^
  % Please note that this is optional. You can still use the old function
  % declaration without returning new model parameters. 
  %
  % *********************************************************

  % - test_data:
  %     test_data(m).trialID
  %         unique trial ID
  %     test_data(m).startHandPos
  %         2x1 vector giving the [x y] position of the hand at the start
  %         of the trial
  %     test_data(m).decodedHandPos
  %         [2xN] vector giving the hand position estimated by your
  %         algorithm during the previous iterations. In this case, N is 
  %         the number of times your function has been called previously on
  %         the same data sequence.
  %     test_data(m).spikes(i,t) (m = trial id, i = neuron id, t = time)
  %     in this case, t goes from 1 to the current time in steps of 20
  %     Example:
  %         Iteration 1 (t = 320):
  %             test_data.trialID = 1;
  %             test_data.startHandPos = [0; 0]
  %             test_data.decodedHandPos = []
  %             test_data.spikes = 98x320 matrix of spiking activity
  %         Iteration 2 (t = 340):
  %             test_data.trialID = 1;
  %             test_data.startHandPos = [0; 0]
  %             test_data.decodedHandPos = [2.3; 1.5]
  %             test_data.spikes = 98x340 matrix of spiking activity
  
  
  
  % ... compute position at the given timestep.
  
  % Return Value:
  
  % - [x, y]:
  %     current position of the hand
   
end

