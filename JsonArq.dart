import 'dart:convert';

void main()
{
  //json to object -> manipulando JSON
  
  jsonOb();

  //object to json
  
  obJson();
  
  
}

void jsonOb()
{
  String json = '''
  {
    "usuario": "email@gmail.com",
    "senha": 1717,
    
    "permissoes": [
      "owen","admin"
    ] 
    
  }
'''; // "permissoes" é lista c/ index -> 'permissoes'[0] = 'owen'; e 'permissoes'[1] = 'admin'
  
  print(json);
  
  Map resultJson = jsonDecode(json);
  
  print(resultJson);
  print(resultJson.runtimeType); //O ARQUIVO JSON É TRABALHADO COMO MAP
  print(resultJson["senha"]);
  print(resultJson['permissoes']);
  print(resultJson['permissoes'][1]); //Lista com index dentro do objeto json.
}

void obJson()
{
  Map mapa = 
  {
    'nome': 'neymar',
    'pe': 'direito',
    'pos': ['PE','MEI'] //FORMATO INVALIDO PARA JSON
  };
  
  var result = jsonEncode(mapa); // CONVERSAO PARA FORMATO JSON;
  print(result); 

}