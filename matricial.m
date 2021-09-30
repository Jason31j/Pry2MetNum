function x = matricial(matriz, matrizInde)
  if (det(matriz) == 0)
    display('La matriz no puede ser invertida.');
    display('El sistema no puede ser resuelto por este método.')
  else
    x = inv(matriz) * matrizInde;
  endif
endfunction