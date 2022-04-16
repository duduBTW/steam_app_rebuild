import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

String generateRandomString(int len) {
  var r = Random();
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}

class Guard extends StatefulWidget {
  const Guard({Key? key}) : super(key: key);

  @override
  State<Guard> createState() => _GuardState();
}

class _GuardState extends State<Guard> {
  late Timer _timer;
  int _inicio = 30;
  String codigo = generateRandomString(5);

  void iniciarTimer() {
    const umSegundo = Duration(seconds: 1);

    _timer = Timer.periodic(umSegundo, (timer) {
      if (_inicio == 0) {
        setState(() {
          _inicio = 30;
          codigo = generateRandomString(5);
        });
      } else {
        setState(() {
          _inicio--;
        });
      }
    });
  }

  Color getCorProgresso(double progresso) {
    if (progresso <= 0.1) return const Color(0xffFF453A);
    if (progresso <= 0.25) return const Color(0xffFFD60A);

    return const Color(0xff5AA0EA);
  }

  @override
  void initState() {
    iniciarTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var porcentagem = _inicio / 30;
    double tamanhoMinimo = min(MediaQuery.of(context).size.width - 120,
        MediaQuery.of(context).size.height - 400);
    double tamanhoMaximo = max(tamanhoMinimo, 300);

    return Center(
      child: SingleChildScrollView(
        child: CircularPercentIndicator(
          radius: tamanhoMaximo,
          lineWidth: 14.0,
          animation: true,
          animateFromLastPercent: true,
          percent: porcentagem,
          startAngle: 360,
          center: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                codigo.toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 46.0,
                    color: Color(0xffECEFF4)),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "0:$_inicio",
                style: TextStyle(
                    fontSize: 20,
                    color: const Color(0xffECEFF4).withOpacity(0.3)),
              ),
            ],
          ),
          footer: const FooterGuard(),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: getCorProgresso(porcentagem),
          backgroundColor: const Color(0xffECEFF4).withOpacity(0.18),
          backgroundWidth: 4,
        ),
      ),
    );
  }
}

class FooterGuard extends StatelessWidget {
  const FooterGuard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 28,
        ),
        Text(
          "Sessão iniciada como",
          style: TextStyle(
              fontSize: 16, color: const Color(0xffECEFF4).withOpacity(0.6)),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "dudubtw",
          style: TextStyle(fontSize: 16, color: Color(0xffECEFF4)),
        ),
      ],
    );
  }
}
