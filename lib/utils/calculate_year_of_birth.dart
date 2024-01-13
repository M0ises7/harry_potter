import 'package:intl/intl.dart';
// funcion para calcular fecha de nacimiento
int calculateYearOfBirth(String dob) {
  if (dob.isEmpty) return 0; 
  try {
    DateTime birthDate = DateFormat('yyyy-MM-dd').parse(dob);
    DateTime currentDate = DateTime.now();
    int yearDiff = currentDate.year - birthDate.year;
    if (currentDate.month < birthDate.month || 
       (currentDate.month == birthDate.month && currentDate.day < birthDate.day)) {
      yearDiff--;
    }
    return yearDiff;
  } catch (e) {
    return 0; 
  }
}
