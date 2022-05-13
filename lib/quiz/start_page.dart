import 'package:flutter/material.dart';
import 'package:flutter_quizapp/quiz/quiz_state.dart';
import 'package:flutter_quizapp/services/models.dart';
import 'package:provider/provider.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key, required this.quiz}) : super(key: key);

  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<QuizState>(context);

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            quiz.title,
            style: Theme.of(context).textTheme.headline4,
          ),
          const Divider(),
          Expanded(
            child: Text(
              quiz.description,
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: state.nextPage,
                label: const Text('Start quiz!'),
                icon: const Icon(Icons.poll),
              ),
            ],
          )
        ],
      ),
    );
  }
}
