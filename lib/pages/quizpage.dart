import 'package:app/utils/questions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List questions = [
    Question.name("Are you Bot?", true),
    Question.name("Are you Arijit?", true),
    Question.name("Are you a girl?", false),
    Question.name("Are you a Working Professional?", false)
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Quiz"),
        centerTitle: true,
      ),
      body: Builder(builder: (BuildContext context) {
        return Column(
          children: [
            Container(
              height: 150,
              child: Center(
                  child: Text(
                "Flutter Quiz App",
                style:
                    GoogleFonts.lato(fontSize: 24, fontWeight: FontWeight.w600),
              )),
            ),
            Container(
                height: 75,
                child: Center(
                  child: Text(
                    questions[currentIndex].question,
                    style: GoogleFonts.lora(
                      fontSize: 22,
                    ),
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        checkAnswer(true, context);
                      });
                    },
                    child: Text("Yes")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        checkAnswer(false, context);
                      });
                    },
                    child: Text("No")),
                // ElevatedButton(
                //     onPressed: () {
                //       setState(() {
                //         nextQuestion();
                //       });
                //     },
                //     child: Text("->"))
              ],
            )
          ],
        );
      }),
    );
  }

  nextQuestion() {
    currentIndex = (currentIndex + 1) % questions.length;
    //1 = 2 % 6
  }

  checkAnswer(bool ans, BuildContext context) {
    if (ans == questions[currentIndex].isCorrect) {
      final snack = SnackBar(
        content: Text("You are Correct"),
        duration: Duration(milliseconds: 100),
      );
      Scaffold.of(context).showSnackBar(snack);
    } else {
      final snack = SnackBar(
          content: Text("You are in Correct"),
          duration: Duration(milliseconds: 100));
      Scaffold.of(context).showSnackBar(snack);
    }
    nextQuestion();
  }
}
// data model : quiz(bool)
// data model : mcq
// option 1
// option 2
//option 3
//option 4
