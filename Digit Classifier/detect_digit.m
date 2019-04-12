function [x] = detect_digit(image,template)


%%

img = read_gray(image);
average = template;
newMatrix = normalized_correlation(img, average);
[M, index] = max(newMatrix(:));
%row and column of best matching position 
[row,col] = ind2sub(size(newMatrix),index);

%28 by 28 bounding box
left = max(col -28, 1);
right = min(col +28, 100);
bottom = min(row +28, 100);
top = max(row -28, 1);

result_image = img;

new_image = draw_rectangle1(result_image,top,bottom,left,right);

final = new_image/255;
figure(1);imshow(final);

%resizing to 28x28
final_resized = imresize(final,[28 28]);


display([row,col]);

end

