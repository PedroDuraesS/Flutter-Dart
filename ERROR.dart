void main()
{
  /*try //tentar movimento
  { 
    print((2/0).toInt()); 
  } catch (e, stackStrace) { //capturar a falha
    print('erro, burro!! $e');
    //rethrow; //propaga o erro;
    throw Exception('erro, burro. DNV!? erro XPTO'); //retornar erro 
  }*/  
  
  Login login = Login();
  
  try{
    login.logar();
  } on PasswordLengthERROR catch (e){
    print('falha, insolente!!!');
  } catch(e) {
    print('mais um erro!!');
  } finally { print('final');}
  
}

class Login 
{
  void logar()
  {
    String user = 'ademiro';
    String pass = '12345';
    if (pass.length <=6 ) throw PasswordLengthERROR(); //indica erro personalizado
  }
}

class PasswordLengthERROR implements Exception 
{
  PasswordLengthERROR();
}

//'erro, burro!!'