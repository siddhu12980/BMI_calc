import 'package:flutter/material.dart';

class Mydeccopage extends StatefulWidget {
  const Mydeccopage({super.key});

  @override
  State<Mydeccopage> createState() => _MydeccopageState();
}

class _MydeccopageState extends State<Mydeccopage> {
  double height = 0;
  double age = 0;
  double answer = 0;
  double weight = 0;

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstcontrol1 = TextEditingController();
    final TextEditingController firstcontrol2 = TextEditingController();
    final TextEditingController firstcontrol3 = TextEditingController();

    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 114, 157, 231),
        width: 2,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    double bmi(double a, double b, double c) {
      if (a == 0 || b == 0) {
        return 0;
      } else {
        return (((weight / height) / height) * 10000);
      }
    }

    // const Color normalColor = Color.fromARGB(255, 114, 157, 231);
    // const Color notNormalColor = Color.fromARGB(255, 210, 134, 128);
    Color backgroundColor;

    if (answer < 18.5 && answer != 0) {
      backgroundColor = const Color.fromARGB(255, 227, 162, 157); // Underweight
    } else if (answer >= 18.5 && answer < 24.9) {
      backgroundColor =
          const Color.fromARGB(255, 114, 157, 231); // Normal weight
    } else if (answer == 0) {
      backgroundColor =
          const Color.fromARGB(255, 114, 157, 231); // Normal weight
    } else {
      backgroundColor = Colors.red; // Overweight
    }

    return Scaffold(
      backgroundColor:
          backgroundColor, //const Color.fromARGB(255, 114, 157, 231),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 114, 157, 231),
        title: const Text(
          "BMI CALC",
          style: TextStyle(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 40),
              child: Text(
                answer.toStringAsFixed(0),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: const Text(
                    "Weight : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  
                  child: TextField(
                    controller: firstcontrol1,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter your Weight",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: const Text(
                    "Height : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: TextField(
                    controller: firstcontrol2,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter your Height",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: const Text(
                    " AGE    : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: TextField(
                    controller: firstcontrol3,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter your AGE",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
              child: ElevatedButton(
                onPressed: () {
                  setState(
                    () {
                      weight = double.parse(firstcontrol1.text);
                      height = double.parse(firstcontrol2.text);
                      age = double.parse(firstcontrol3.text);
//[weight (kg) / height (cm) / height (cm)] x 10,000
                      answer = bmi(weight, height, age);
                    },
                  );
                },
                style: TextButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.blueAccent,
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("Calculate"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
