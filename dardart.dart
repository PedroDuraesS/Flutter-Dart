void main() 
{
  //safety();
  //variaveis();
  //fluxo();
  //repeticao();
  //class_met_atr();
  //poobjetos();
  //herPolAbs();
}

void herPolAbs()
{
  Deivid deivid = Deivid();
  deivid.falar();
  
//polimorfismo-------------------------------------
  
  Pagamento pagamento = PagarComPix();
  pagamento.pagar();
  print('agr no boleto: ');
  pagamento = PagarComBoleto();
  pagamento.pagar();
}

abstract class Pagamento 
{
  void pagar();
}

class PagarComBoleto implements Pagamento 
{
  void pagar ()
  {
    print('pagar com boleto');
  }
}

class PagarComPix implements Pagamento
{
  void pagar ()
  {
    print('pagar com pix');
  }
}

class Pai 
{
  String falar()
  {
    return "girias";
  }
}

class Deivid extends Pai
{
  // herdou FALAR de "Pai"
}


class Falar 
{
  String falar()
  {
    return "papai";
  }
}

abstract class Pessoa
{
  String comunicar();
}

class PessoaET implements Pessoa
{
  String comunicar() {
    return "Olá Mundo";
  }
}

class PessoaNaoET implements Pessoa 
{
  String comunicar()
  {
    return "bom dia";
  }
}

//-------------------------------------------------------------------------

void poobjetos()
{
  Carro mercedes = Carro("mercedes");
  Carro gol = Carro("gol");
}

class Carro
{
  final String modelo;
  
  String _segredo ='dinheiro demais'; //variavel privada atribuido pela underline
  
  int _valor= 1000;
  
  int get valorDoCarro => _valor; //acessar valor privado
  
  void setValue(int valor) => _valor = valor; //permitir o set valor
  
  Carro(this.modelo);
}

//metodos e classes ______________________________________________
void class_met_atr()
{
  //classe  //objeto'Celular' //atributos(codigo, cor, tamanho e peso);
  Celular celularDoNeymar = Celular(345, 'bege', 15, 45);
  Celular celularDoHulk = Celular(678, 'preto', 17, 89);
  
  double valorBASE = 500;
  
  print('Celular do ney:');
  print(celularDoNeymar.toString());
  print('o valor do celular do Neymar eh:');
  print(celularDoNeymar.valorCEL(valorBASE));
  
  print('\nCelular do Hulk:');
  print(celularDoHulk.toString());
  
  double precoCEL_HULK = celularDoHulk.valorCEL(valorBASE);
  
  print('o valor do celular do Hulk eh: $precoCEL_HULK');
  
}

class Celular 
{
  final int codeCEL;
  final  String cor;
  final double tamanho;
  final double peso;
  
  Celular(this.codeCEL, this.cor, this.tamanho, this.peso);
  
    String toString () //MÉTODO
  {
    return 'Codigo do celular: $codeCEL\nCor: $cor\nTamanho: $tamanho\nPeso: $peso';
  }
  
  double valorCEL(double valor)
  {
    return valor + tamanho * peso;
  }
}

//metodos e classes ______________________________________________

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