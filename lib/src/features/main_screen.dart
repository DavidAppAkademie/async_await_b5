import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () async {
            int x = await getParticipantsCount();

            debugPrint("Es gibt $x Teilnehmer");
          },
          child: const Text("Los!"),
        ),
      ),
    );
  }

  //  Vorher synchron:
  //      int getParticipantsCount() {
  Future<int> getParticipantsCount() async {
    // simuliere Dauer der Datenbank-Anfrage
    await Future.delayed(const Duration(seconds: 3));

    // gib dann erst Ergebnis zurueck.
    return 24;
  }
}
