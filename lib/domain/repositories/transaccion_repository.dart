import 'package:digitrack/domain/entities/transaccion.dart';

abstract class TransaccionRepository {
  Future<List<Transaccion>> getTransacciones();

  Future<void> saveTransaccion(Transaccion transaccion);

  Future<void> updateTransaccion(Transaccion transaccion);

  Future<void> deleteTransaccion(Transaccion transaccion);
}
