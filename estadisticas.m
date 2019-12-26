function m = estadisticas(data)  [row,col] = size(data);mean_vector = 0;std_vector = 0;min_vector = 0;max_vector = 0;for i=1:col    mean_vector(i) = mean(data(:,i));    std_vector(i) = std(data(:,i));    min_vector(i) = min(data(:,i));    max_vector(i) = max(data(:,i));end  m = [mean_vector ; std_vector ; min_vector ; max_vector];   
endfunction
