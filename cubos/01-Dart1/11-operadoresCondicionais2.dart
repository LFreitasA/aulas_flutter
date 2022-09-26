void main() {
  int posicao = 4;
  switch (posicao) {
    case 1:
      {
        print("Primeiro lugar");
      }
      break;
    case 2:
      {
        print("Segundo lugar");
      }
      break;
    case 3:
      {
        print("Terceiro lugar");
      }
      break;
    default:
      {
        print("Não foi ao podio");
      }
  }

  String posicao1 = "A";
  switch (posicao1) {
    case "A":
      {
        print("Primeiro lugar");
      }
      break;
    case "B":
      {
        print("Segundo lugar");
      }
      break;
    case "C":
      {
        print("Terceiro lugar");
      }
      break;
    default:
      {
        print("Não foi ao podio");
      }
  }
  print("***********************************");

  print("Operador Ternario");

  String resultado = false ? "Verdadeiro" : "Falso";
  print(resultado);

  int numero = 2;
  String num = numero % 2 == 0 ? "Par" : "Impar";
  print(num);
}
