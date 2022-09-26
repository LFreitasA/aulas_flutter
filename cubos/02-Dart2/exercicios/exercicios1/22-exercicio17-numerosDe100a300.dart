void main() {
  int de = 100;
  int ate = 300;
  contador(de, ate);
}

void contador(de, ate) {
  for (int i = de; i <= ate; i = i + 10) {
    print(i);
  }
}
