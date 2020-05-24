import '../../../model/QuizQuestionsModel.dart';

class Questions {
  List<QuizQuestionsModel> _list = [
    QuizQuestionsModel(
        id: '1',
        question: 'Motherfucker do that shit to me, he better paralyze my ass, cause I\'ll kill the motherfucker, know what I\'m sayin\'?',
        choice: ['Yes', 'No', 'I have no idea'],
        answer: 'Yes'),
    QuizQuestionsModel(
        id: '2',
        question: 'You can lead a cow down stairs but not up stairs.',
        choice: ['TRUE', 'FALSE'],
        answer: 'TRUE'),
    QuizQuestionsModel(
        id: '3',
        question: 'The single cell formed after fertilisation is called...',
        choice: ['Embryo', 'Gamete', 'Foetus', 'Zygote'],
        answer: 'Zygote'),
  ];

  QuizQuestionsModel get(int index) {
    if (index < _list.length) return _list[index];
    else return null;
  }

  int length() {
    return _list.length;
  }
}
