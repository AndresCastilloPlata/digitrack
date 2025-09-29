import 'package:digitrack/domain/entities/transaccion.dart';
import 'package:digitrack/domain/repositories/transaccion_repository.dart';

class GetTransaccionesUsecase {
  final TransaccionRepository _repository;

  GetTransaccionesUsecase(this._repository);

  Future<List<Transaccion>> call() async {
    return _repository.getTransacciones();
  }
}
