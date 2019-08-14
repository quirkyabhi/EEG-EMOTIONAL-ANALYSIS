%{
	% we will load the csv file here
	load()

	for i = 1:1280
		for j = 1:115
			for k = 0:31
				PLV_new(((i*j)+k), :)
				PLV_new((i*))
			end
		end
	end

%}


row = 1;
matrix = zeros(147000, 32);

%{
for i = 1:115
	
	%column = 1
	
	for j = 0:31
		matrix(row, j+1) = (115*j)+i;
		%column = column + 1
	row = row + 1;
	end
end
%}
counter = 0;
for i = 0:1279
	for j = 1:115
		for k = 0:31
			matrix(row, k+1) = 3680*i + (115*k)+j;
			
		end
		row = row + 1;
		
	end
end
