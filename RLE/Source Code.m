%Husni Abdelsalam Husni Abed 129316
A=imread('coins.png');
B=im2bw(A);
D=B(:);%to convert binary image to one dimension
resultRLT=[];%to store the result
count=1;
for i=1:length(D)-1
    if (D(1) ==0)%check the first element is zero
        if (D(i)==D(i+1))
        count=count+1;
        else
        resultRLT=[resultRLT,D(i),count,];%#ok<*AGROW> % to store the element and the value of counter as [element counter]
        count=1;% reset counter for the next element 
        end
    else
        resultRLT(1:2)=0;%if the first element in image doesn't zero is one so must first element in compression file is zero 
        if (D(i)==D(i+1))
        count=count+1;
        else
        resultRLT=[resultRLT,D(i),count,];
        count=1;
        end
    end
    
end
resultRLT=[resultRLT,D(length(D)),count];
disp(resultRLT);%to view the output on Command window also, we can click right on resultRLT and then choice the "open resultRLT"