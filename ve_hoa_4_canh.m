l1=10; l2=10;
for t=0:0.05:8
    x = (2+cos(4*t))*cos(t); %pt tham so hinh hoa 4 la
    y = (2+cos(4*t))*sin(t);
    c2 = (x^2+y^2-l1^2-l2^2)/(2*l1*l2);
    s2 = sqrt(abs(1-c2^2));
    t2 = atan2(s2,c2); 
    c1 = x*(l1+l2*c2)+y*l2*s2;
    s1 = y*(l1+l2*c2)-x*l2*s2;
    t1 = atan2(s1,c1);
    Px = l1*cos(t1)+l2*cos(t1+t2);
    Py = l1*sin(t1)+l2*sin(t1+t2);
    subplot(2,1,1);
    plot(t,t1,"--o",t,t2,"-o");
    pause(0.005);
    xlabel('t');
    ylabel('rotation');
    hold on;
    subplot(2,1,2);
    plot(Px,Py,'*');
    xlabel('x(cm)');
    ylabel('y(cm)');
    pause(0.005);
    hold on;   
    axis equal; %c�n �?i tr?c
end