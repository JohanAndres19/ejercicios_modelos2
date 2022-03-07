factorial n | n==0 = 1 | n>0 = n * factorial (n-1) | otherwise=0 
coeficiente  n r = factorial(n)/(factorial(n-r)*factorial(r))
