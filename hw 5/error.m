function [ errs_fprimer, errs_fprimec, errs_fprimel ] = error( f, a, b, n, set_fprime )
% Nic
% 2-27-2014
% Math 50
% Lecturer:  Derek
%
% INPUTS:  function f, interval [a,b], number of grid points n known f'
% OUTPUT:  errors
%
% will use this to compare left right and central estimates for deriv
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% initialization
h = (b-a)/n;

fprime = zeros(1,n);
errs_fprimec = zeros(1,n);
errs_fprimel = zeros(1,n);
errs_fprimer = zeros(1,n);
for  j=1:n
    fprime(j) = set_fprime(j*h);
end
%     error would be (predicted - actual)


errs_fprimec =(fprimec(f,a,b,n)- fprime); 
%this provides a detailed matrix of the errors of fprimec and the next two
%do the same thing for fprimel and fprimer

errs_fprimel =(fprimel(f,a,b,n)- fprime);
errs_fprimel(1)=0;%must reset this to zero as fprimel has no value here

errs_fprimer= (fprimer(f,a,b,n)- fprime);
errs_fprimer(n) = 0; %must reset this to zero as fprimer has no value here

errorc = norm(errs_fprimec)%this prints the error that i will use to 
%compare all three of these
errorl = norm (errs_fprimel)
errorr = norm(errs_fprimer)

% for some reason when using this on a sin function error r was smaller
% than the others and l was the largest, this is probaly because i used it
% between 0 and pi/3
%when i plugged in x.^2 and 2*x both l and r were the same value and c was 
%smaller than both of them 
end

