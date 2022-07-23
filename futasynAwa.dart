void main() async
{
  
  String nome = 'Pedro';
  Future<String> cepFuture = getCepByName("Rua JK");
  late String cep;
  
  //cepFuture.then((result) => cep = result);
  
  cep = await cepFuture;
  
  print(cep); 
}

Future<String> getCepByName(String name)
{
  return Future.value("67890345");
}