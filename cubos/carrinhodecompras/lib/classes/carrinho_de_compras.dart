List carrinhoDeCompras = [];
double somarValores() {
  double total = 0;
  for (var compra in carrinhoDeCompras) {
    total += compra.valor;
  }
  return total;
}
