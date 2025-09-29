import 'package:hive/hive.dart';

// Importante: La parte generada se crea después de la ejecución
part 'transaccion.g.dart';

// El 'typeId' debe ser un número único y constante para esta clase en tu base de datos Hive
@HiveType(typeId: 0)
class Transaccion extends HiveObject {
  Transaccion({
    required this.id,
    required this.descripcion,
    required this.monto,
    required this.fecha,
    required this.esIngreso,
  });

  // 1. ID único (Necesario para identificar y manipular la transacción)
  @HiveField(0)
  final String id;

  // 2. Descripción de la transacción
  @HiveField(1)
  final String descripcion;

  // 3. Monto (usamos double para manejar decimales)
  @HiveField(2)
  final double monto;

  // 4. Fecha del movimiento
  @HiveField(3)
  final DateTime fecha;

  // 5. Tipo: true = Ingreso (suma), false = Egreso (resta)
  @HiveField(4)
  final bool esIngreso;
}
