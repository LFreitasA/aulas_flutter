void main() {
  String sexo = "masculino";
  double altura = 1.68;

  String sexo1 = "feminino";
  double altura1 = 1.65;
  calculoPesoIdeal(sexo, altura);
  calculoPesoIdeal(sexo1, altura1);
}

void calculoPesoIdeal(sexo, altura) {
  if (sexo == "masculino") {
    double formula = (72.7 * altura) - 58;
    print("Peso ideal: $formula Kg");
  } else {
    double formula = (62.1 * altura) - 44.7;
    print("Peso ideal: $formula Kg");
  }
}
