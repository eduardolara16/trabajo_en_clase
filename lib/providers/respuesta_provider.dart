import 'package:flutter/material.dart';
import 'package:flutter_api_yesorno/domain/entities/respuesta.dart';
import 'package:flutter_api_yesorno/helper/get_yes_or_no_answer.dart';

class RespuestaProvider extends ChangeNotifier {
  final _getYesOrNoAnswer = GetYesOrNoAnswer();
  Respuesta mensaje = Respuesta(answer: 'Hola', forced: false, image: '');

  Future<void> loadRespuesta() async {
    await Future.delayed(const Duration(seconds: 5));
    mensaje = await _getYesOrNoAnswer.getRespuesta();
    notifyListeners();
  }
}