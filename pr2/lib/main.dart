import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Практическая работа 2',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Авторизация',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(239, 239, 238, 243),
                  hintText: "Логин",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.0, horizontal: 13.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Задание радиуса углов
                    borderSide: const BorderSide(
                        color: Colors.transparent), // Прозрачный цвет границы
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Задание радиуса углов
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 75, 129, 255),
                        width: 2), // Прозрачный цвет границы
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 255, 255, 255)),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(239, 239, 238, 243),
                  hintText: "Пароль",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 13.0, horizontal: 13.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Задание радиуса углов
                    borderSide: const BorderSide(
                        color: Colors.transparent), // Прозрачный цвет границы
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Задание радиуса углов
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 75, 129, 255),
                        width: 2), // Прозрачный цвет границы
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Центрирование по вертикали
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Центрирование по горизонтали
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (bool? value) {},
                      side: const BorderSide(
                        // Изменение цвета контура
                        color: Colors.grey, // Цвет контура
                        width: 1.5,
                      ),
                      fillColor: MaterialStateProperty.all(
                          Color.fromARGB(239, 239, 238, 243)),
                    ),
                    const Text(
                      'Запомнить меня',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 75, 129, 255),
                    elevation: 0,
                    padding:
                        EdgeInsets.symmetric(vertical: 13.0, horizontal: 30.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(
                            width: 0,
                            color: const Color.fromARGB(255, 75, 129, 255))),
                  ),
                  child: Text("Войти", style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 75, 129, 255),
                    elevation: 0,
                    padding:
                        EdgeInsets.symmetric(vertical: 13.0, horizontal: 30.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                            width: 2,
                            color: const Color.fromARGB(255, 75, 129, 255))),
                    backgroundColor: Colors.white,
                  ),
                  child: Text("Регистрация", style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text("Восстановить пароль",
                style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
