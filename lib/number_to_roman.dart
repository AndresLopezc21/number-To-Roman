int calculate() {
  return 6 * 7;
}

String convertirARomano(int numero) {
  List<String> numRomanos = [
    "D",
    "CD",
    "C",
    "XC",
    "L",
    "XL",
    "X",
    "IX",
    "V",
    "IV",
    "I"
  ];
  List<int> numeros = [500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];

  String resultado = "";
  for (int i = 0; i < numeros.length; i++) {
    while (numero >= numeros[i]) {
      resultado += numRomanos[i];
      numero -= numeros[i];
    }
  }
  return resultado;
}
