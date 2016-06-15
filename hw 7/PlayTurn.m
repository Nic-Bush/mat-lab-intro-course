function [ B ] = PlayTurn( B, turn )
% INPUTS:  game board B, turn number
% OUTPUT:  revised board B

if mod(turn,2) == 1
    disp('It is X''s turn.')
else
    disp('It is O''s turn.')
end

tolerance = 5; %to prevent an infinite loop
while tolerance > 0    
    if (mod(turn,2)~=1)
        A = randperm(9);
        pick = A(1);
        %I only added this if statement to make the computer move the
        %circles because circles are represented when mod(turn,2)~=1 also
        %because i make A a random assortment of the numbers between 1 and
        %9 and the code forces a player to repeat their selection if it
        %isn't applicable, the computer will always move. 
    else pick = input('Where do you want to make your move? ');
    end
    if isnumeric(pick)
        pick = round(pick);
        if pick >=0 && pick <= 9
            row = ceil(pick/3);
            col = mod(pick,3);
            if col == 0
                col = 3;
            end
            
            if B(row,col) ~= 0
                disp('That spot has already been used')
            else
                B(row,col) = (-1)^(mod(turn,2) + 1); %play 'X' or 'O'
                break
            end
        end
    end
    tolerance = tolerance - 1;
end

end

