import 'package:windenergy/core/resultat/resultat.dart';

abstract class EolienneRepository {
  FutureResultat authentifier(String email, String motDePasse);

  FutureResultat enregistrer(
    String email,
    String nom,
    String prenom,
    String motDePasse,
  );

  FutureResultat consulterEtatEolienne(int idEolienne);
  FutureResultat consulterListeEoliennes();
  FutureResultat ajouterEolienne(String numeroSerie);
  FutureResultat supprimerEolienne(int idEolienne);
}
