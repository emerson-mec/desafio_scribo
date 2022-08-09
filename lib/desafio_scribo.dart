import 'dart:io';

void main(List<String> arguments) {
  print('DIGITE UM NÚMERO INTEIRO POSITIVO: ');

  final int? numeroDigitado = int.tryParse(stdin.readLineSync().toString());
  
  //validação de entrada de dados.
  if (numeroDigitado != null && numeroDigitado.toString().isNotEmpty && !numeroDigitado.isNegative) {
    print("O somatório de todos os valores inteiros divisíveis por 3 ou 5 é ${somatorio(numeroDigitado)}.");
  } else {
    print('Por favor, digite um número inteiro positivo!');
  }
}

int somatorio(int numeroDigitado) {
  int total = 0;

  for (int i = 0; i < numeroDigitado; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      total += i;
    }
  }

  return total;
}
