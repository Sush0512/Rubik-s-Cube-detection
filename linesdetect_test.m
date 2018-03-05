%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Main program for cube recognition and identification
%
%Name: A Rahul Dev
%CWID: 10802893
%Course No: CSCI507
%Project: Rubik's cube detection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
close all;
%open and preview webcam
cam = webcam(2);
preview(cam);

%start looping for 6 faces
for kp = 1:6
    
for j = 1:10
    %take each frame
    I = snapshot(cam);
    %R,G,B components of each frame
    I1 = I(:,:,1);
    I2 = I(:,:,2);
    I3 = I(:,:,3);
    %convert R,G,B images to black and white
    bw1 = im2bw(I1);
    bw2 = im2bw(I2,0.3);
    bw3 = im2bw(I3);
    
    I_hsv = rgb2hsv(I);
    
    %extract blob features for 3 images
    stats = regionprops(bw1,'Centroid','BoundingBox','Area',...
        'MajorAxisLength','MinorAxisLength');
    stats2 = regionprops(bw2,'Centroid','BoundingBox','Area',...
         'MajorAxisLength','MinorAxisLength');
    stats3 = regionprops(bw3,'Centroid','BoundingBox','Area',...
         'MajorAxisLength','MinorAxisLength');

    imshow(I,[]); 
    hold on;
        %for red component
        for i = 1:numel(stats)
            %thresholding area to identify required blobs
            if stats(i).Area > 300
                %thresholding major and minor axes to identify squares
                if abs(stats(i).MajorAxisLength - stats(i).MinorAxisLength) < 3 
                    rectangle('Position', stats(i).BoundingBox, ...
                    'Linewidth', 2, 'EdgeColor', 'r', 'LineStyle', '--');
            %extract centroids
            x_1(i) = (stats(i).Centroid(1));
            y_1(i) = (stats(i).Centroid(2));
            
            maj_axis(i) = stats(i).MajorAxisLength;
                end
            end
        end
    
        %for blue component
        for i = 1:numel(stats2)
            if stats2(i).Area > 300
                if abs(stats2(i).MajorAxisLength - stats2(i).MinorAxisLength) < 3 
                    rectangle('Position', stats2(i).BoundingBox, ...
                    'Linewidth', 2, 'EdgeColor', 'g', 'LineStyle', '--');
                
            x_2(i) = (stats2(i).Centroid(1));
            y_2(i) = (stats2(i).Centroid(2));
                end
            end
        end
        %for green component
        for i = 1:numel(stats3)
            if stats3(i).Area > 300
                if abs(stats3(i).MajorAxisLength - stats3(i).MinorAxisLength) < 3 
                    rectangle('Position', stats3(i).BoundingBox, ...
                    'Linewidth', 2, 'EdgeColor', 'b', 'LineStyle', '--');
                
            x_3(i) = (stats3(i).Centroid(1));
            y_3(i) = (stats3(i).Centroid(2));
            
            maj_axis2(i) = stats3(i).MajorAxisLength;
                end
            end
        end
        %initialize variables to eliminate unnecessary squares
         if j == 10
            x_vect = [x_1,x_2,x_3];
            y_vect = [y_1,y_2,y_3];
            x_vect1 = x_vect(x_vect~=0);
            y_vect1 = y_vect(y_vect~=0);
            
            x_vect_asc = sort(x_vect1);
            y_vect_asc= sort(y_vect1);
            x_vect_des = sort(x_vect1,'descend');
            y_vect_des = sort(y_vect1,'descend');
            
            N1 = length(x_vect_asc);
            N2 = length(y_vect_asc);
            N3 = length(x_vect_des);
            N4 = length(y_vect_des);
            
            %eliminating all unnecessary squares by median technique
            count1 = 1;
            while(1)
                if abs(x_vect_asc(count1)- median(x_vect_asc)) < 250
                    x_point1 = x_vect_asc(count1);
                    break;
                else 
                    count1 = count1+1;
                end
            end

            
            count2 = 1;
            while(1)
                if abs(y_vect_asc(count2)- median(y_vect_asc)) < 250
                    y_point1 = y_vect_asc(count2);
                    break;
                else 
                    count2 = count2+1;
                end
            end
           
            count3 = 1;
            while(1)
                if x_vect_des(count3)- median(x_vect_des) < 250
                    x_point2 = x_vect_des(count3);
                    break;
                else
                    count3 = count3+1;
                end
            end
            
            count4 = 1;
            while(1)
                if y_vect_des(count4)- median(y_vect_des) < 250
                    y_point2 = y_vect_des(count4);
                    break;
                else 
                    count4 = count4+1;
                end
            end
            
            %setting offset for drawing bounding box
            maj = max(maj_axis)/sqrt(2);
            maj2 = max(maj_axis2)/sqrt(2);
            %draw bounding box
            rectangle('Position', [x_point1-30 y_point1-30 abs(x_point2-x_point1)+maj abs(y_point2-y_point1)+maj2], ...
                    'Linewidth', 2, 'EdgeColor', 'r', 'LineStyle', '--');
            %extract face from image
            square = imcrop(I,[x_point1-35 y_point1-35 abs(x_point2-x_point1)+maj abs(y_point2-y_point1)+maj2]);
        end 
        pause(0.1);
end
figure; imshow(square);
%for color identification
Fac(:,:,kp) = cube_face_read(square);
disp(Fac);
pause;
end
%for 3D reconstruction
write_cube(Fac);
clear cam;