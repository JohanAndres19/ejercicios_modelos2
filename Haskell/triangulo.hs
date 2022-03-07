areaTriangulo a b c 
    |d == True = sqrt((t/2)*((t/2)-a)*((t/2)-b)*((t/2)-c)) 
    |otherwise = error "No es un triangulo" 
    where d = triangular a b c  
          t = a+b+c
triangular a b c = a <b+c && b<a+c && c<a+b