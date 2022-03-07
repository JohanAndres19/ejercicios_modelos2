funcionL n = map(*2) [1..n]

valormedio n lista = reverse(drop n (reverse(drop n (lista))))
