import 'package:digitrack/domain/repositories/transaccion_repository.dart';

class DeletTransaccionUsecase {
  final TransaccionRepository _repository;

  DeletTransaccionUsecase(this._repository);

  Future<void> call(String id) async {
    await _repository.deleteTransaccion(id);
  }
}
