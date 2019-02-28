function answer = dichotomy(a, b, eps)
dist = b - a;
while dist > eps
    dist = b - a;
    printf("dist is: %f\n", dist)
    printf("a is: %f\n", a)
    printf("b is: %f\n\n", b)
    dx = dist / 2;
    answer = a + dx;
    if (f(a) <= f(answer))
        b = answer;
    else
        a = answer;
end
answer = f((answer - a) / 2);
end

