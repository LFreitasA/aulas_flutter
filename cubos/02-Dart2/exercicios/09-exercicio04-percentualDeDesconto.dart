void main() {
  final desconto = 23;
  final precoProduto = 500;
  calculoDeDesconto(precoProduto, desconto);
}

void calculoDeDesconto(precoProduto, desconto) {
  double precoFinal = precoProduto - (precoProduto * (desconto / 100));
  print("Preço do produto RS $precoProduto");
  print("Desconto de %desconto RS ${precoProduto * (desconto / 100)}");
  print("Preço do produto com desconto RS $precoFinal");
}
