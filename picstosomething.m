function picstosomething
x = csvread('fer2013.csv');
map = colormap(gray(256));
for k=1:7704
    f = zeros (48,48);
    index =1 ;
    for i=1:48
        for j=1:47
         f(i,j)=x(k,index);
         index=index+1;
        end
    index=index+1;
    end
    filename = strcat('d',num2str(k),'.png');
    imwrite(f,map,filename);
end
end