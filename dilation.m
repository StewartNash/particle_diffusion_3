%PLEASE SUBMIT MODIFICATIONS AND IMPROVEMENTS!

%File: dilation.m (MATLAB)
%Version: 0.0
%Author: Stewart Nash
%Date: February 25, 2015
%Description: Increases visual size of particle on grid by turning on immediately adjacent (non-diagonal) pixels

%Note: Particle index means a consecutive list of integers starting with 1.

%>>>>Input Parameters<<<<%
%input_domain - square grid
%domain_length - number of rows (or columns) of square input grid

function output_domain = dilation(input_domain, domain_length)
    domain = input_domain;
    domain_2 = domain;
    for i = 1 : domain_length
        for j = 1 : domain_length
            if (i == 1)
                if (j == 1)
                    if (domain(i+1, j) || domain(i,j + 1))
                        domain_2(i,j) = 1;
                    end
                end
                if (j > 1 && j < domain_length)
                    if (domain(i+1, j) || domain(i,j + 1) || domain(i, j - 1))
                        domain_2(i,j) = 1;
                    end
                end
                if (j == domain_length)
                    if (domain(i+1, j) || domain(i, j - 1))
                        domain_2(i,j) = 1;
                    end
                end
            end
            if (i > 1 && i < domain_length)         
                if (j == 1)
                    if (domain(i+1, j) || domain(i-1,j) || domain(i,j + 1))
                        domain_2(i,j) = 1;
                    end
                end
                if (j > 1 && j < domain_length)
                    if (domain(i+1, j) || domain(i-1,j) || domain(i,j + 1) || domain(i, j - 1))
                        domain_2(i,j) = 1;
                    end
                end
                if (j == domain_length)
                    if (domain(i+1, j) || domain(i-1,j) || domain(i, j - 1))
                        domain_2(i,j) = 1;
                    end
                end            
            end
            if (i == domain_length)
                 if (j == 1)
                    if (domain(i-1,j) || domain(i,j + 1))
                        domain_2(i,j) = 1;
                    end
                end
                if (j > 1 && j < domain_length)
                    if (domain(i-1,j) || domain(i,j + 1) || domain(i, j - 1))
                        domain_2(i,j) = 1;
                    end
                end
                if (j == domain_length)
                    if (domain(i-1,j) || domain(i, j - 1))
                        domain_2(i,j) = 1;
                    end
                end             
            end      
        end
    end

    output_domain = domain_2;
end