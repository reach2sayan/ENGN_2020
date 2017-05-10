function dist = dijkstra(graph, src)
%DIJK Summary of this function goes here
%   Detailed explanation goes here

[~, n] = size(graph);
dist = Inf(n,1);
sptSet = zeros(n,1);

dist(src) = 0;

for i=1:n-1
    u = minDistance(dist, sptSet);
    
    sptSet(u) = 1;
    for v=1:n
        if ~sptSet(v) && graph(u,v) && dist(u) ~= Inf && (dist(u) + graph(u,v) < dist(v))
            dist(v) = dist(u) + graph(u,v);
        end
    end
end
end

