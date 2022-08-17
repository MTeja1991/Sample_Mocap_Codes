function [Quadri_Area,Perimeter,Quadri_Volume]= Area_Perimeter_Volume_BVC3D(d)
d1=d;
k=size(d1.data,1)
% for k=1:size(d1.data,1)
l1=1
for i1=1:36
    for j1=i1+1:37
        for k1=j1+1:38
            for m1=k1+1:39
%                 a(:,j1-1,i1)=mcmarkerdist(d1,i1,j1);
%                 b(:,j1-1,i1)=mcmarkerdist(d1,j1,k1);
%                 c(:,j1-1,i1)=mcmarkerdist(d1,k1,m1);
%                 d12(:,j1-1,i1)=mcmarkerdist(d1,m1,i1);
%                 A(:,j1-1,i1)=mcsegmangle_1(d1, m1, i1, j1);
%                 C(:,j1-1,i1)=mcsegmangle_1(d1, m1, k1, j1);
%                 Volume(:,j1-1,i1)=mcquadrivolume(d1, i1, j1, k1, m1);
                  Volume=mcquadrivolume(d1, i1, j1, k1, m1);
                  Volume_Final(:,l1)=Volume;
                  l1=l1+1;
                
            end
        end
    end
end

% a1=reshape(a,[k,1024]);
% a2=a1(:,any(a1));
% 
% b1=reshape(b,[k,1024]);
% b2=b1(:,any(b1));
% 
% c1=reshape(c,[k,1024]);
% c2=c1(:,any(c1));
% 
% d112=reshape(d12,[k,1024]);
% d2=d112(:,any(d112));
% 
% Perimeter=a2+b2+c2+d2;
% 
% s=Perimeter/2;
% 
% A1=reshape(A,[k,1024]);
% % A2=A1(:,any(A1));
% A2 = A1(A1 ~= 0);
% A3=reshape(A2,[k,528]);
% A3(isnan(A3))=0;
% 
% C1=reshape(C,[k,1024]);
% % C2=C1(:,any(C1));
% C2 = C1(C1 ~= 0);
% C3=reshape(C2,[k,528]);
% C3(isnan(C3))=0;
% Theta=A3+C3;
% Quadri_Area = abs(sqrt(((s-a2).*(s-b2).*(s-c2).*(s-d2))-((0.5).*(a2).*(b2).*(c2).*(d2).*(1+cos(A3+C3)))));

%% Calculating Quadrilateral Volume

Volume=reshape(Volume,[k,82251]);
Volume= Volume(Volume ~= 0);
Quadri_Volume=reshape(Volume,[k,666]);

end

