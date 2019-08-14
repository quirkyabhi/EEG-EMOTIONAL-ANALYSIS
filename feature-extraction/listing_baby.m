
PLV_final_dist2 = 0;
row = 1;

for i  = 1:147200
	list = dist2indices(i, :);
    column = 1;
	for j = 1:32
        
		for k = 1:32
			PLV_final_dist2(row,column) = PLV(PLV_new(list(j), :), PLV_new(list(k), :));
			column = column + 1;
		end
	end
	row = row + 1;
    
end
