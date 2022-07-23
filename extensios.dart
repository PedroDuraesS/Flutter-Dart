void main()
{
  String nome = 'neymar';
  
  //print(nome[0].toUpperCase() + nome.substring(1)); 
  //primeira letra a partir do index da "lista" de caracteres.
  //neymar -> Neymar
  
  print('1\n');
  print(Utils().toFirstCharToUpperCase(nome));
  //metodo criado manualmente na classe "Utils"
  
  print('\n2');
  print(nome.toFirstCharToUpperCase());
  //metodo criado dentro do tipo string usando "extensions";
  
  print('\n3');
  print('maluma'.toFirstCharToUpperCase());
  
}

extension ExtensiosString on String 
{
  String toFirstCharToUpperCase()
  {
    return this[0].toUpperCase() + this.substring(1);
  }
}

class Utils 
{
  toFirstCharToUpperCase(String value)
  {
    return value[0].toUpperCase() + value.substring(1);
  }
}