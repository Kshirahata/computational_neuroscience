function [mean_v,mode_v,median_v] = get_static_parameters(array)
mean_v = mean(array);
mode_v = mode(array);
median_v = median(array);
end