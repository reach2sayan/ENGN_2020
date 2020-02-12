function [rhos,iters] = cas_project(b,x)

%CAS_PROJECT Summary of this function goes here
%   Detailed explanation goes here
 w = 1;
 iters = [];
 rhos = [];
 for t=[0.2,0.5,0.8,0.9]
     A = [1,t,t; t,1,t; t,t,1];
     [L,U,rho,xnew,iter] = gauss_seidel_cas_project_SOR( A,b,x,3,false );
     iters = [iters, iter];
     rhos = [rhos, rho];
 end
end

