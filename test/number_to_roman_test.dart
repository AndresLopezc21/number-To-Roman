import 'package:number_to_roman/number_to_roman.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('I cuando numero es 1', () async {
    expect("I", "I");
    convertirARomano(1);
  });

  test('III cuando numero es 3', () async {
    expect("III", "III");
    convertirARomano(3);
  });

  test('IX cuando numero es 9', () async {
    expect("IX", "IX");
    convertirARomano(9);
  });
  test('XXIV cuando numero es 24', () async {
    expect("XXIV", "XXIV");
    convertirARomano(24);
  });

  test('D cuando numero es 500', () async {
    expect("D", "D");
    convertirARomano(500);
  });
}

String convertirARomano(int numero) {
  List<String> numRomanos = ["X", "IX", "V", "IV", "I"];
  List<int> numeros = [10, 9, 5, 4, 1];

  String resultado = "";
  for (int i = 0; i < numeros.length; i++) {
    while (numero >= numeros[i]) {
      resultado += numRomanos[i];
      numero -= numeros[i];
    }
  }
  return resultado;
}
