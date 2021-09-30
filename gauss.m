function xn = gauss(matriz, matrizInde)
  
  n = length(matrizInde)
  for j=1:n-1
    for k = j+1:n;
      cm = -matriz(k, j)/matriz(j, j);
      for m = j:n;
        matriz(k, m) = matriz(k, m)+cm*matriz(j, m);
      endfor
      matrizInde(k) = matrizInde(k)+cm*matrizInde(j);
    endfor
  endfor
  B = [matriz matrizInde]
  xn = sustitucion(matriz, matrizInde);
  
endfunction

function x = sustitucion(A, b)
  A = [A b];
  [n, m] = size(A);
  x = zeros(n, 1);
  x(n) = A(n, n+1)/A(n, n);
  for(i = n-1:-1:1);
    sum = 0;
    for j=n:-1:i+1
      sum = sum +A(i, j)*x(j);
    endfor
    x(i)=(A(i, n+1)-sum)/A(i, i);
  endfor
  
  endfunction