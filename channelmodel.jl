#= takes an array of 0s and 1s representing msg as input with constants a and k. Calculates the output of channel using recursive channel model. The output is returned with added noise=#

using PyPlot

function recur(x,ly,a,k)
	return a*ly + (1-a) * k * x;
end
function cm(x,a,k)
	y = 1+recur(x[1],0,a,k);
	ly = y;
	for i = 2:length(x)
		ly = recur(x[i],ly,a,k);
		y = [y 1+ly];
	end
	noise = randn(length(y));
	noise /= maximum(abs(noise));
	y += noise';
	return y
end


