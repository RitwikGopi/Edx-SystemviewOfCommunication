#= takes an string as the argument and returns an row matrix with binary representation for each character in the string=#

function c2b(c)
	l = 8;
	b = int(zeros(l))
	while(c>0)
		b[l] = c%2;
		l -= 1;
		c = int(floor(c/2));
	end
	return b
end

function t2b(s)
	j = 0;
	r = int(zeros(100))';
	r = [r int(ones(100))'];
	r = [r int(zeros(100))'];
	for i in s
		r = [r c2b(i)']
	end
	return r[301:end]'
end
		
