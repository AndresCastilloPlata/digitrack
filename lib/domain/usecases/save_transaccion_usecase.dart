import 'package:digitrack/domain/entities/transaccion.dart';
import 'package:digitrack/domain/repositories/transaccion_repository.dart';

// Este caso de uso maneja tanto la creación como la actualización.
class SaveTransaccionUsecase {
  final TransaccionRepository _repository;

  SaveTransaccionUsecase(this._repository);

  // El método call permite que la clase se use como una función.
  Future<void> call(Transaccion transaccion) async {
    if (transaccion.id.isEmpty) {
      await _repository.saveTransaccion(transaccion);
    } else {
      await _repository.updateTransaccion(transaccion);
    }
  }
}
