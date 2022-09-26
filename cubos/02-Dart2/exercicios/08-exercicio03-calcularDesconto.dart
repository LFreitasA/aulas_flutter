void main() {
  double desconto = 10;
  double produto1 = 500;
  double produto2 = 2500;
  double produto3 = 157.34;
  calcularDesconto(desconto, produto1);
  calcularDesconto(desconto, produto2);
  calcularDesconto(desconto, produto3);
}

void calcularDesconto(double desconto, valorProduto) {
  desconto = desconto / 100;
  double precoAPagar = valorProduto - (valorProduto * desconto);
  print("Preço do produto RS $valorProduto");
  print("Desconto de ${desconto * 100}");
  print("preco do produto com o desconto $precoAPagar");
}
