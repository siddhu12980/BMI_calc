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
    const Color normalColor = Color.fromARGB(255, 114, 157, 231);
    const Color notNormalColor = Color.fromARGB(255, 210, 134, 128);

    return Scaffold(
      backgroundColor: answer > 25 ? notNormalColor : normalColor,
 

      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 114, 157, 231),
        title:const Text("BMI CALC",

        style: TextStyle(
        

        ),
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 114, 157, 231),
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 114, 157, 231),
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 114, 157, 231),
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 114, 157, 231),
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 114, 157, 231),
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 114, 157, 231),
                          width: 2,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 20),
              child: ElevatedButton(
                onPressed: () {

                  setState(() {
                    weight = double.parse(firstcontrol1.text);
                    height = double.parse(firstcontrol2.text);
                    age = double.parse(firstcontrol3.text);

//[weight (kg) / height (cm) / height (cm)] x 10,000

                    answer = (((weight / height) / height) * 10000);
                  });
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
