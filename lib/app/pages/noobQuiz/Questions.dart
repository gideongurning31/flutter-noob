import '../../../model/QuizQuestionsModel.dart';

class Questions {
  QuizQuestionsModel get(int index) {
    if (index < _list.length) return _list[index];
    else return null;
  }

  int length() {
    return _list.length;
  }

  List<QuizQuestionsModel> _list = [
    QuizQuestionsModel(
        id: '1',
        question: 'What is Scooby Doo\'s real name?',
        choice: ['Scott Doo', 'Scoobert Doo', 'Scooby Doofer', 'Scooby Doobey Doo'],
        answer: 'Scoobert Doo'),
    QuizQuestionsModel(
        id: '2',
        question: 'You can lead a cow down stairs but not up stairs.',
        choice: ['TRUE', 'FALSE'],
        answer: 'FALSE'),
    QuizQuestionsModel(
        id: '3',
        question:'The name of God is never mentioned in only one book of the Bible, which one?',
        choice: ['The Book of Nehemiah', 'The Book of Lamentations', 'The Book of Esther', 'The Book of Job'],
        answer: 'The Book of Esther'),
    QuizQuestionsModel(
        id: '4',
        question: 'If you dug a hole through the centre of the earth starting from Wellington in New Zealand, which European country would you end up in?',
        choice: ['Soviet Union', 'Spain', 'Tiongkok', 'Tunisia'],
        answer: 'Spain'),
    QuizQuestionsModel(
        id: '5',
        question: 'Can you sneeze in your sleep?',
        choice: ['Yes', 'Nope', 'I have no idea'],
        answer: 'Nope'),
    QuizQuestionsModel(
        id: '6',
        question: 'Which bird is nicknamed The Laughing Jackass?',
        choice: ['White Cockatoo', 'Mockingbird', 'Kookaburra', 'Australian Magpie'],
        answer: 'Kookaburra'),
    QuizQuestionsModel(
        id: '7',
        question: 'What is Coprastastaphobia people fear of?',
        choice: ['Tiny Rooms', 'Spiders', 'Constipations', 'Conspirations'],
        answer: 'Constipations'),
    QuizQuestionsModel(
        id: '8',
        question: 'How many time zones are there in China?',
        choice: ['One', 'Two', 'Three', 'Four'],
        answer: 'One'),
    QuizQuestionsModel(
        id: '9',
        question: 'How many books of the Bible are named after a women?',
        choice: ['none', '1', '2', '4'],
        answer: '2'),
    QuizQuestionsModel(
        id: '10',
        question: 'What planet is most like earth in size, mass, density and gravity?',
        choice: ['Mercurius', 'Venus', 'Mars', 'Uranus'],
        answer: 'Venus'),
  ];
}
