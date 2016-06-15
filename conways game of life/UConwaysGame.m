%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Nicholas Bush
% Math 50 final
% 3/13/14
% purpose, to recreate conway's game of life and reach an equalibrium i
% guess.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% 1.  initialize
n=50;
d=rand();



% 2. construct Anow

Anow = rand(n,n);

z = Anow < d;

% 3. for loop construction


for a = 1:300
    spy(z);
    
    z =  NextGeneration(z , n);
    
    pause(.1);
    
end