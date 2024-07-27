function [x, e] = Example7(f,a,b,n)

c = f(a); d = f(b);
if c*d > 0.0
    error('Function has same sign at both endpoints')
end 
disp('  x          y')
for i = 1:n
    x= (a+b)/2;
    y = f(x);
    disp([ x     y])
    if y == 0.0
     
        break
    end
    if c*y < 0
        b= x;
    else
        a=x;
    end
end
x = (a+b)/2;
e = (b-a)/2;
end