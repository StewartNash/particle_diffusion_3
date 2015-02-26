%PLEASE SUBMIT MODIFICATIONS AND IMPROVEMENTS!

%File: updateposition.m (MATLAB)
%Version: 0.0
%Author: Stewart Nash
%Date: February 25, 2015
%Description: Function returns position of indexed particles given indexed velocity, current position, time increment, and index size

%Note: Particle index means a consecutive list of integers starting with 1.

%>>>>Input Parameters<<<<%
%input_velocity - velocity indexed by particle number
%input_position - current position indexed by particle number
%input_time - time increment to advance over
%input_size - number of indexed particles, the maximum index number

function output_position = updateposition(input_velocity, input_position, input_time, input_size)
	position = zeros(input_size, 2);
	for i = 1 : input_size
		position(i, 1) = input_position(i, 1) + input_velocity(i, 1) * input_time;
		position(i, 2) = input_position(i, 2) + input_velocity(i, 2) * input_time;
	end
	output_position = position;
end