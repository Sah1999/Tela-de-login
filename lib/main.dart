import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool remember = false;

  get fontSize => null;
  lembrarSenha() {
    if (remember) {
      remember = false;
    } else {
      remember = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios),
                SizedBox(height: 24),
                Text(
                  "Acessar",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "com e-mail e senha para entrar ",
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "Digite seu e-mail:",
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0XFFD5D3E4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.openSans(
                          color: Color(0XFFA3A4B0),
                        ),
                        hintText: 'E-mail',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "Digite sua senha:",
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0XFFD5D3E4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.openSans(
                          color: Color(0XFFA3A4B0),
                        ),
                        hintText: 'Senha',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Checkbox(
                        value: remember,
                        onChanged: (value) {
                          lembrarSenha();
                        },
                        side: const BorderSide(
                          color: Color(0XFFA3A4B0),
                        ),
                      ),
                    ),
                    Text(
                      "Lembrar minha senha",
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontSize: 12,
                            color: Color(0XFF5E51F0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Esqueci minha senha",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 155,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Cadastrar",
                          style: GoogleFonts.openSans(
                            fontSize: 16,
                            color: const Color(0XFF323232),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(),
                          foregroundColor: Color(0XFF5E51F0),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 155,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Entrar",
                          style: GoogleFonts.openSans(
                              fontSize: 16, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color(0XFF5E51F0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Color(0XFFA3A4B0),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Ou entrar com',
                      style: GoogleFonts.openSans(
                          color: const Color(0XFFA3A4B0), fontSize: 12),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Divider(
                        color: Color(0XFFA3A4B0),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 40,
                          height: 40,
                          child: SvgPicture.asset(
                            'imagens/google.svg',
                          ),
                        ),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              splashColor:
                                  const Color(0XFF5E51F0).withOpacity(0.3),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0XFF1877F2),
                          ),
                          width: 40,
                          height: 40,
                          child: SvgPicture.asset(
                            'imagens/facebook.svg',
                          ),
                        ),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              splashColor:
                                  const Color(0XFF5E51F0).withOpacity(0.3),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
