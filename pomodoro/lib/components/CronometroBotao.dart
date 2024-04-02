// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../store/pomodoro.store.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao(
      {super.key, required this.texto, required this.icone, this.click});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
        ),
        onPressed: click,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                icone,
                size: 35,
                color: store.estaTrabalhando() ? Colors.red : Colors.green,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              texto,
              style: TextStyle(
                color: store.estaTrabalhando() ? Colors.red : Colors.green,
                fontSize: 25,
              ),
            ),
          ],
        ));
  }
}
