%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%[face] = cube_face_read(img)
%
%cube_face_read function takes image of a face of a cube and detects colors
%
%Logic: Input image is one side of a rubik's cube. The image is first
%converted into HSV and then broken down into 9 equal parts by splitting
%horizontally and vertically. Then each sub_image's average hue, value and
%saturation is computed. Based on the hue, value and saturation; the sub
%image/each color of the 9 colors in the cube's face is detected.
%
%[output] = face = [3x3] matrix containing a character representing the
%color of the sub_face
%red = r, yellow = y, blue = b, green = g, orange = o, white = w
%
%[input] = img = one face of the rubiks cube
%
%Name: A Rahul Dev
%CWID: 10802893
%Course No: CSCI507
%Project: Rubik's cube detection
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function face = cube_face_read(img)
%convert into HSV
img = rgb2hsv(img);

%get number of rows, columns, depth of the image
[r,c,d]= size(img);

%for splitting horizontally and vertically into 3 components respectively
r_bit = r/3;
c_bit = c/3;

%each color on a face is named as a sub_face. There are 9 subfaces for a
%given face of a cube
%initializing subface as zero
sub_face = zeros(3,3,3);

%cutting subfaces 
for depth = 1:3
    sub_face(1,1,depth) = median(median(img(1:r_bit,1:c_bit,depth)));
    sub_face(1,2,depth) = median(median(img(1:r_bit,c_bit+1:2*c_bit,depth)));
    sub_face(1,3,depth) = median(median(img(1:r_bit,2*c_bit+1:3*c_bit,depth)));
    sub_face(2,1,depth) = median(median(img(r_bit+1:2*r_bit,1:c_bit,depth)));
    sub_face(2,2,depth) = median(median(img(r_bit+1:2*r_bit,c_bit+1:2*c_bit,depth)));
    sub_face(2,3,depth) = median(median(img(r_bit+1:2*r_bit,2*c_bit+1:3*c_bit,depth)));
    sub_face(3,1,depth) = median(median(img(2*r_bit+1:3*r_bit,1:c_bit,depth)));
    sub_face(3,2,depth) = median(median(img(2*r_bit+1:3*r_bit,c_bit+1:2*c_bit,depth)));
    sub_face(3,3,depth) = median(median(img(2*r_bit+1:3*r_bit,2*c_bit+1:3*c_bit,depth)));
end

% disp(sub_face);

%taking the median HSV components of each subface and classifying into
%colors
for row = 1:3
    for col = 1:3
       cubit = sub_face(row,col,1);
            %orange
            if (0.01<cubit) && (cubit<0.08)
                face(row,col) = 'm';
            %yellow
            elseif (0.10<cubit) && (cubit<0.28)
                face(row,col) = 'y';
            %green 
            elseif (0.32<cubit) && (cubit<0.49)
                face(row,col) = 'g';
            %blue 0.5895
            elseif (0.56<cubit) && (cubit<0.68)
                if sub_face(row,col,2) < 0.5
            %white 0.6032
                     face(row,col) = 'w';
                else
                     face(row,col) = 'b';
                end
            % red 0.8797
            elseif (0.81<cubit) && (cubit<=1.00)
               face(row,col) = 'r';
            else
                face(row,col) = 'w';
            end
    end
end
%blue 0.6 - 0.61
%orange 0.02 - 0.06
%green 0.37 - 0.48
%yellow 0.12 - 0.16
%red 0.90 - 1.00