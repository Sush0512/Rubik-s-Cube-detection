function write_cube(Fac)
%draw_rect
f(:,:,1) = Fac(:,:,1);      %front
f(:,:,2) = Fac(:,:,2);      %top
f(:,:,3) = Fac(:,:,3);      %bottom show top first, rotate 180 clockwise
f(:,:,4) = Fac(:,:,4);      %right
f(:,:,5) = Fac(:,:,5);      %left
f(:,:,6) = Fac(:,:,6);      %back
for j = 1:6
if j == 1
count1 = 3;
count2 = 3;
count3 = 3;
   for i = 1:9
    if mod(i,3) == 1
        plot3( [(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)],[0 0 0 0 0],[(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)]);
        fill3([(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)],[0 0 0 0 0],[(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)],f((i+2)/3,1,1));
        axis([0 10 0 10 0 10]);
        count1 = count1-1;
        hold on;
    end
    if mod(i,3) == 2
        plot3( [(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))],[0 0 0 0 0],[(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)]);
        fill3([(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))],[0 0 0 0 0],[(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)],f((i+1)/3,2,1));
        axis([0 10 0 10 0 10]);
        count2 = count2-1;
        hold on;
    end
    if mod(i,3) == 0
        plot3( [(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)],[0 0 0 0 0],[(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)]);
        fill3([(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)],[0 0 0 0 0],[(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)],f((i)/3,3,1));
        axis([0 10 0 10 0 10]);
        count3 = count3-1;
        hold on;
    end
    end 
end


if j == 2
count1 = 3;
count2 = 3;
count3 = 3;
for i = 1:9
    if mod(i,3) == 1
        plot3( [(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)], [6 6 6 6 6]);
        fill3([(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)], [6 6 6 6 6],f((i+2)/3,1,2));
        axis([0 10 0 10 0 10]);
        count1 = count1-1;
        hold on;
    end
    if mod(i,3) == 2
        plot3( [(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)], [6 6 6 6 6]);
        fill3([(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)], [6 6 6 6 6],f((i+1)/3,2,2));
        axis([0 10 0 10 0 10]);
        count2 = count2-1;
        hold on;
    end
    if mod(i,3) == 0
        plot3( [(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)], [6 6 6 6 6]);
        fill3([(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)], [6 6 6 6 6],f((i)/3,3,2));
        axis([0 10 0 10 0 10]);
        count3 = count3-1;
        hold on;
    end
end
end

if j == 3    
count1 = 3;
count2 = 3;
count3 = 3;
   for i = 1:9
    if mod(i,3) == 1
        plot3( [(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)], [0 0 0 0 0]);
        fill3([(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)], [0 0 0 0 0],f((i+2)/3,3,3));
        axis([0 10 0 10 0 10]);
        count1 = count1-1;
        hold on;
    end
    if mod(i,3) == 2
        plot3( [(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)], [0 0 0 0 0]);
        fill3([(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)], [0 0 0 0 0],f((i+1)/3,2,3));
        axis([0 10 0 10 0 10]);
        count2 = count2-1;
        hold on;
    end
    if mod(i,3) == 0
        plot3( [(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)], [0 0 0 0 0]);
        fill3([(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)], [0 0 0 0 0],f((i)/3,1,3));
        axis([0 10 0 10 0 10]);
        count3 = count3-1;
        hold on;
    end
    end 
end


if j == 4
count1 = 3;
count2 = 3;
count3 = 3;
for i = 1:9
    if mod(i,3) == 1
        plot3( [6 6 6 6 6],[(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)]);
        fill3([6 6 6 6 6],[(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)],f((i+2)/3,1,4));
        axis([0 10 0 10 0 10]);
        count1 = count1-1;
        hold on;
    end
    if mod(i,3) == 2
        plot3([6 6 6 6 6],[(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)]);
        fill3([6 6 6 6 6],[(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)],f((i+1)/3,2,4));
        axis([0 10 0 10 0 10]);
        count2 = count2-1;
        hold on;
    end
    if mod(i,3) == 0
        plot3([6 6 6 6 6],[(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)]);
        fill3([6 6 6 6 6],[(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)],f((i)/3,3,4));
        axis([0 10 0 10 0 10]);
        count3 = count3-1;
        hold on;
    end
end
end


if j == 5
count1 = 3;
count2 = 3;
count3 = 3;
for i = 1:9
    if mod(i,3) == 1
        plot3( [0 0 0 0 0],[(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)]);
        fill3([0 0 0 0 0],[(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)], [(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)],f((i+2)/3,3,5));
        axis([0 10 0 10 0 10]);
        count1 = count1-1;
        hold on;
    end
    if mod(i,3) == 2
        plot3([0 0 0 0 0],[(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)]);
        fill3([0 0 0 0 0],[(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))], [(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)],f((i+1)/3,2,5));
        axis([0 10 0 10 0 10]);
        count2 = count2-1;
        hold on;
    end
    if mod(i,3) == 0
        plot3([0 0 0 0 0],[(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)]);
        fill3([0 0 0 0 0],[(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)], [(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)],f((i)/3,1,5));
        axis([0 10 0 10 0 10]);
        count3 = count3-1;
        hold on;
    end
end
end

if j == 6
count1 = 3;
count2 = 3;
count3 = 3;
   for i = 1:9
    if mod(i,3) == 1
        plot3( [(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)],[6 6 6 6 6],[(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)]);
        fill3([(mod(i,3)-1) (mod(i,3)-1) (mod(i,3)-1)+2 (mod(i,3)-1)+2 (mod(i,3)-1)],[6 6 6 6 6],[(count1*2) (count1*2)-2 (count1*2)-2 (count1*2) (count1*2)],f((i+2)/3,3,6));
        axis([0 10 0 10 0 10]);
        count1 = count1-1;
        hold on;
    end
    if mod(i,3) == 2
        plot3( [(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))],[6 6 6 6 6],[(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)]);
        fill3([(mod(i,3)) (mod(i,3)) (mod(i,3))+2 (mod(i,3))+2 (mod(i,3))],[6 6 6 6 6],[(count2*2) (count2*2)-2 (count2*2)-2 (count2*2) (count2*2)],f((i+1)/3,2,6));
        axis([0 10 0 10 0 10]);
        count2 = count2-1;
        hold on;
    end
    if mod(i,3) == 0
        plot3( [(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)],[6 6 6 6 6],[(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)]);
        fill3([(mod(i,3)+4) (mod(i,3)+4) (mod(i,3)+4)+2 (mod(i,3)+4)+2 (mod(i,3)+4)],[6 6 6 6 6],[(count3*2) (count3*2)-2 (count3*2)-2 (count3*2) (count3*2)],f((i)/3,1,6));
        axis([0 10 0 10 0 10]);
        count3 = count3-1;
        hold on;
    end
    end 
end

end

end

