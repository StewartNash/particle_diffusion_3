%PLEASE SUBMIT MODIFICATIONS AND IMPROVEMENTS!

%File: updatedomain.m (MATLAB)
%Version: 0.0
%Author: Stewart Nash
%Date: February 26, 2015
%Description: Function indicates position in square grid where particles are present with a value of 1

%Note: Particle index means a consecutive list of integers starting with 1.

%>>>>Input Parameters<<<<%
%input_position - position of particles indexed by particle number
%input_size - number of particles in index (maximum index number)
%domain_size - size of grid (array)

function output_domain = updatedomain(input_position, input_size, domain_size)
	domain = zeros(domain_size);
	for i = 1 : input_size
		if (input_position(i, 1) < domain_size(1) & input_position(i, 1) >= 0.5 & input_position(i, 2) < domain_size(2) & input_position(i, 2) >= 0.5)
			domain(round(input_position(i, 1)), round(input_position(i, 2))) = 1;
		end
	end
	output_domain = domain;
end