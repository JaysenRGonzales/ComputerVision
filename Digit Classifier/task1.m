load_mnist

average2 = zeros(28,28);
average3 = zeros(28,28);

%example value for i
for i = 1:10000

% get the i-th image out of test digits
   var = mnist_digits(:,:,i);

% the label is a number between 0 and 9, telling us
% which digit is contained in the i-th image.
   label = mnist_labels(i);  
   if label == 2
       average2 = average2 + var;
   end
   
   if label == 3
       average3 = average3 + var;
   end 
end

%average2 = average2/10000;
%average3 = average3/10000;

figure(1);imshow(average2,[])
figure(2);imshow(average3,[])

display(average2)
display(average3)