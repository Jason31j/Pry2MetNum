function xs = main()
  display('Resolución de sistemas de ecuaciones lineales')
  choice = menu('¿Qué método desea utilizar?', {'Método matricial', 'Método de Gauss simple'} );
  cantIncog = input('ingrese la cantidad de incógnitas del sistema: ')
  matriz = [];
  fila = [];
  for (i = 1:cantIncog)
    printf("Ingrese los coeficientes de la ecuacion %d:\t", i);
    fila = input('')
    if (i == 1)
      matriz = [fila]
    else
      matriz = [matriz ; fila]
    endif
  endfor
  matrizInde = input('Ingrese la matriz de términos independientes: ')
  matriz
  matrizInde
  if (choice == 1)
    xs = matricial(matriz, matrizInde);
  else
    xs = gauss(matriz, matrizInde);
  endif
endfunction