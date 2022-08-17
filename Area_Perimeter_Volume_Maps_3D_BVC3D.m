%% This Program Generates Workdone=Distance * Angles Feature Maps
clc;
close all;
clear all;

%% Loading Mapar

load mapar_fullbody_BVC3D;
load srt;

contents=ls;
for i=3:length(contents)
try
   extnposn=find(contents(i,:)=='.');
   Action=contents(i,1:extnposn-1);
   name=contents(i,:);
   name(name==' ')=[];
   d=mcread(name);
   d.markerName=d.markerName(1:39,1); % This was included to avoid unwanted 40th marker label in the d.markerName
   d.nMarkers=39;
   d=mcsort(d, srt);
   d.data=d.data(:,1:105);
   F_Name= fullfile('C:', 'Users', 'Vicon', 'Documents', 'MATLAB', 'Area_Per_Volume_Maps','BVC3D_Action_Program','Maps','Subject_5-SaiTeja', Action);
   mkdir(F_Name)
 
%% Saving Feature Maps as color encoded Images
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(d);
newmap=colormap(jet);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_0_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_0_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_0_Volume.jpg']);
%%
for j=30:20:270
    
r26= mcrotate(d, 90, [0 1 0]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r26);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_90Y_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_90Y_Area.jpg']);
% imwrite(Quadri_Area1*0.00055525,newmap,'Clapping_HDM_tr_05-01_01_120_Area_90Y.jpg');
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_90Y_Volume.jpg']);

r29= mcrotate(d, 90, [1 0 1]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r29);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_90XZ_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_90XZ_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_90XZ_Volume.jpg']);

r32= mcrotate(d, 270, [0 1 0]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r32);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_270Y_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_270Y_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_270Y_Volume.jpg']);

r35= mcrotate(d, 270, [1 0 1]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r35);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_270XZ_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_270XZ_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_270XZ_Volume.jpg']);

r14= mcrotate(d, 45, [0 1 0]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r14);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_45Y_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_45Y_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_45Y_Volume.jpg']);


r17= mcrotate(d, 45, [1 0 1]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r17);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_45XZ_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_45XZ_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_45XZ_Volume.jpg']);

r20= mcrotate(d, 60, [0 1 0]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r20);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_60Y_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_60Y_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_60Y_Volume.jpg']);


r23= mcrotate(d, 60, [1 0 1]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r23);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_60XZ_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_60XZ_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_60XZ_Volume.jpg']);


r38= mcrotate(d, 300, [0 1 0]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r38);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_300Y_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_300Y_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_300Y_Volume.jpg']);

r41= mcrotate(d, 300, [1 0 1]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r41);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_300XZ_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_300XZ_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_300XZ_Volume.jpg']);

r44= mcrotate(d, 315, [0 1 0]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r44);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_315Y_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_315Y_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_315Y_Volume.jpg']);

r47= mcrotate(d, 315, [1 0 1]);
[Quadri_Area1,Perimeter1,Quadri_Volume1]= Area_Perimeter_Volume_BVC3D(r47);
imwrite(Perimeter1*0.019678,newmap,[fullfile(F_Name, Action) ,'_315XZ_Perimeter.jpg']);
imwrite(Quadri_Area1*0.00035525,newmap,[fullfile(F_Name, Action) ,'_315XZ_Area.jpg']);
imwrite(Quadri_Volume1*0.0000035525,newmap,[fullfile(F_Name, Action) ,'_315XZ_Volume.jpg']);
catch
    
end
end


