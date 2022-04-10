import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var form = Form(
      key: formKey,
      child: Column(children: [
        TextFormField(
          style: const TextStyle(color: Color(0xffECEFF4)),
          decoration: const InputDecoration(
            hintText: 'Nome de usuário',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          style: const TextStyle(color: Color(0xffECEFF4)),
          decoration: const InputDecoration(
            hintText: 'Senha',
          ),
        )
      ]),
    );

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Image.asset("assets/images/logo_login.png"),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                form,
                const SizedBox(
                  height: 4,
                ),
                Container(
                  alignment: const Alignment(1, 0),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Esqueceu sua senha?",
                        style: TextStyle(
                            color: const Color(0xffECEFF4).withOpacity(0.6))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text(
                      "Iniciar Sessão",
                    ),
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Não tem uma conta? Cadastre-se",
                    style: TextStyle(
                        color: const Color(0xffECEFF4).withOpacity(0.6)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
