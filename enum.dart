// PARA FINS EDUCATIVOS
// MELHOR USAR "EXTENSIONS" DO QUE "ENUM"

void main ()
{
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.BOLETO);
}

enum TipoPagamento 
{
  PIX, BOLETO, CARTAO;
}

extension ExtensionTipoPagamento on TipoPagamento
{
  String toValue()
  {
    Map map = {
      TipoPagamento.PIX: 'Pix', 
      TipoPagamento.BOLETO: 'Boleto',
      TipoPagamento.CARTAO: 'Cartao',
    };
    
    return map[this];
  }
}

class Pagamento 
{
  void pagar(TipoPagamento tipoPagamento)
  {
    if(tipoPagamento.toValue() == 'Pix')
    {
      print('pagamento no pix...');
    } else if (tipoPagamento.toValue() == 'Boleto'){
      print('pagamento no Boleto...');    
    } else if (tipoPagamento.toValue() == 'Cartao'){
      print('pagamento no Cartao...');
    }
  }
}