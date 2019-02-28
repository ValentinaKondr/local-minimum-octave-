function answer = gSection(a, b, eps)
F = 0.382;
it = 1;
while abs(b - a) > eps
y0 = a + F * (b - a);
z0 = a + b - y0;
printf("________________\n")
printf("iteration %d\n", it)
printf("a = %f\n", a)
printf("b = %f\n", b)
printf("y0 is: %f\n", y0)
printf("z0 is: %f\n\n", z0)
f0 = f(y0);
f1 = f(z0);
printf("f0 is: %f\n", f0)
printf("f1 is: %f\n", f1)
printf("f0 <= f1 ??? |%d| \n\n\n", (f0 <= f1))
it = it + 1;
    if (f0 <= f1)
    b = z0;
    else
    a = y0;
end
answer = f((b - a) / 2);
end


