import 'package:intl/intl.dart';

// funcion para calcular fecha de nacimiento
int calculateYearOfBirth(String dateOfBirth) {
  // Verificar que la fecha de nacimiento no esté vacía.
  if (dateOfBirth.isEmpty) {
    return 0;
  }

  try {
    // Dividir la fecha de nacimiento en día, mes y año.
    List<String> parts = dateOfBirth.split('-');
    if (parts.length != 3) {
      throw FormatException('Invalid date format', dateOfBirth);
    }
    int year = int.parse(parts[2]);
    int month = int.parse(parts[1]);
    int day = int.parse(parts[0]);

    // Crear un objeto DateTime usando el año, mes y día.
    DateTime birthDate = DateTime(year, month, day);

    // Devolver solo el año.
    return birthDate.year;
  } on FormatException {
    // Manejo de la excepción si el formato no es correcto.
    print('Error: Formato incorrecto');
    return 0;
  }
}
