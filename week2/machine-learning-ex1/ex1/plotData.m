function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y);


plot(X,y,'rx','MarkerSize',10);
%axis([4 24 -5 25]);
ylabel('profit in $10,000s');
xlabel('population of city in 10,000s')
% Find Indices of Positive and Negative Examples pos = find(y==1); neg = find(y == 0);

% Plot Examples 
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7); 
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);

% ============================================================

end
