void main() 
{
  //safety();
  //variaveis();
  //fluxo();
  //repeticao();
  class_met_atr();
}

void class_met_atr()
{
  
}

void repeticao()
{
  int i, aux=18;
  
  print('a tabuada de $aux eh:');
  
  for(i=0; i<=10; i++)
  {
    print('$i X $aux = ${aux*i}');
  }
  
  while(i >= -4)
  {
    print('$i');
    i--;
  }
}

void fluxo()
{
  int aux = 1, aux2 = 2;
  
  bool seguirBOOL=true;
  
  if (seguirBOOL)
  {
    print('andar');
  }else{print('pare (CAVALO)');}
  
  if (aux > aux2)
  {
    print ('aux($aux) eh maior que aux2($aux2)');
  }else{print('aux($aux) nao eh maior que aux2($aux2)');}
  
  int valorSW = 7; 
  
  switch(valorSW)
  {
    case 0:
      print('voce digitou $valorSW');
      break;
    case 1:
      print('voce digitou $valorSW');
      break;
    case 2:
      print('voce digitou $valorSW');
      break;
    case 3:
      print('voce digitou $valorSW');
      break;
    default:
      print('voce digitou $valorSW, mas esse nao eh um valor valido');
      break;
  }
}

void safety() /*null safety*/
{
  String? nome;
  nome = 'lindo';
  print(nome);
  nome = null;
  
  late String sobrenome;
  sobrenome = 'fuzila';
  print(sobrenome);
  //sobrenome = null;
}

void variaveis()
{
  
  String VarName = "neymar";
  int valor = 10;
  bool verdFALSE = true;
  
  List<String> listaNomes = ["predo"/* posicao 0*/, "sonic"/* posicao 1*/];
  
  print(VarName);
  print(valor);
  print(verdFALSE);
  
  
  if(verdFALSE =! true)
  {
    print(listaNomes[0]);
  }else{print('${listaNomes[1]} - ${listaNomes[0]}');}
}