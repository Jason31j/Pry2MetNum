function xs = main()
  display('Resoluci�n de sistemas de ecuaciones lineales')
  choice = menu('�Qu� m�todo desea utilizar?', {'M�todo matricial', 'M�todo de Gauss simple'} );
  cantIncog = input('ingrese la cantidad de inc�gnitas del sistema: ')
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
  matrizInde = input('Ingrese la matriz de t�rminos independientes: ')
  matriz
  matrizInde
  if (choice == 1)
    xs = matricial(matriz, matrizInde);
  else
    xs = gauss(matriz, matrizInde);
  endif
endfunction