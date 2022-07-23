void main()
{
  map();
}

void lista()
{
  List<String> lista = ['neymar', 'hulk'];
  print(lista[0]);
  print(lista[1]);
}

void map()
{
  Map<String, String> mapazin= {'chave':'valor'};
  print(mapazin['chave']); //acessa "valor" pelo nome "chave";
  
  mapazin.putIfAbsent('novaChave', ()=> 'novoValor');
  
  print(mapazin); //printa o novo objeto setado com "putIfAbsent";
  
  mapazin['novaChave2'] = 'novoValorDOIS';
  
  print(mapazin); //printa novo objeto setado manualmente;
  
  mapazin.remove('chave');
  print(mapazin); //printa objeto sem a "chave", 
                  //pois foi exluída utilizando o metodo "remove";
  
  mapazin['novaChave2'] = 'ValorAtualizado';
  print(mapazin);//printa o "ValorAtualizado" que antes era "novoValorDOIS";
  
}