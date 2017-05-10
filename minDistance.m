function minIndex = minDistance(dist, sptSet)

min = Inf;
minIndex = 0;
n = size(dist);

for v = 1:n
    if sptSet(v) == 0 && dist(v) <= min
        min = dist(v);
        minIndex = v;
    end
end
end
