%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nic
% 2-27-2014
% Math 50
% Lecturer:  Derek
% 
% print a .txt file to matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc


fid = fopen('codemonkey.txt','r'); 
fid_out = fopen('codemonkey_out.txt','w');
                             

j = 1;
while 1
    tline = fgetl(fid); 
    if ~ischar(tline)   
        break          
    end
    disp(tline)         
    
    
    fprintf(fid_out, '%s\n', tline); 
    
    
    
    j = j + 1;
end
                             

fclose(fid);
fclose(fid_out);