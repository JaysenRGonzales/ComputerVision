function result = recognize_digit(image,average2,average3)

%%

image = rgb2gray(image);
%%

img = read_gray('image.jpg');
figure(1);imshow(img);
%%
newMatrix = normalized_correlation(img, average2);
[M, index] = max(newMatrix(:));

newMatrix2 = normalized_correlation(img, average3);
[M2, index2] = max(newMatrix2(:));

%compare max values, higher max value correlates with number
if M2 > M
    result = 3;
else
    result = 2;
end






end

