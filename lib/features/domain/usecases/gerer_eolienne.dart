import 'package:windenergy/core/resultat/resultat.dart';
import 'package:windenergy/features/domain/repositories/eolienne_repository.dart';

class AjouterEolienne {
  EolienneRepository repository;

  AjouterEolienne({required this.repository});

  @override
  FutureResultat call(Map<String, String> params) {
    final numeroSerie = params["numeroSerie"]!;
    return repository.ajouterEolienne(numeroSerie);
  }
}

class SupprimerEolienne {
  EolienneRepository repository;

  SupprimerEolienne({required this.repository});

  @override
  FutureResultat call(Map<String, int> params) {
    final idEolienne = params["idEolienne"]!;
    return repository.supprimerEolienne(idEolienne);
  }
}
