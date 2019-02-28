function answer = fibonacci(a, b, eps, n)
fib = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610];
it = 1;
while n > 2
y0 = a + (fib(n - 1)/fib(n+1))* (b - a);
z0 = a + (fib(n)/fib(n+1)) * (b - a);
printf("________________\n")
printf("iteration %d\n", it)
printf("F(n-2) = %d | F(n-1) = %d | F(n) = %d\n", fib(n-1), fib(n), fib(n+1))
printf("a = %f\n", a)
printf("b = %f\n", b)
printf("y0 is: %f\n", y0)
printf("z0 is: %f\n\n", z0)
n = n - 1;
f0 = f(y0);
f1 = f(z0);
printf("f0 is: %f\n", f0)
printf("f1 is: %f\n", f1)
printf("f0 <= f1 ??? |%d| \n", (f0 <= f1))
it = it + 1;
if (f0 <= f1)
b = z0;
printf("b = z0\n")
printf("ans = %f\n", f((b - a) / 2))
printf("Достигнута заданная точность? |%d|\n", b-a < eps)
printf("b - a = %f\n", b - a)
printf("________________\n")
else
a = y0;
printf("a = y0\n")
printf("ans = %f\n", f((b - a) / 2))
printf("b - a = %f\n", b - a)
printf("Достигнута заданная точность? |%d|\n", b-a < eps)
printf("________________\n")
end
end
answer = f((b - a) / 2);


end



