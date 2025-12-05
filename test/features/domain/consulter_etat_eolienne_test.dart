import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';
import 'package:windenergy/features/domain/usecases/consulter_etat_eolienne.dart';

class MockEolienneRepository extends Mock implements EolienneRepository {}

void main() {
  late MockEolienneRepository repository;
  late ConsulterEtatEolienne consulterEtatEolienne;

  setUp(() {
    repository = MockEolienneRepository();
    consulterEtatEolienne = ConsulterEtatEolienne(repository: repository);
  });

  test("devrait appeler [EolienneRepository.consulterEtatEolienne]", () async {
    final idEolienne = 0;
    when(
      () => repository.consulterEtatEolienne(idEolienne),
    ).thenAnswer((_) async => Succes(true));
    await consulterEtatEolienne({"idEolienne": idEolienne});

    verify(() => repository.consulterEtatEolienne(idEolienne));
  });
}
