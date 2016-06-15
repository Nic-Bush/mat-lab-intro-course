clear all
clc

fid_out = fopen('survey.txt','w');

aline='Applied Math';
fprintf(fid_out,'%s\n',aline);

bline = 'sophomore';
fprintf(fid_out,'%s\n',bline);

cline = 7;
fprintf(fid_out,'%u\n',cline);

dline = 7;
fprintf(fid_out,'%u\n',dline);

fclose(fid_out);