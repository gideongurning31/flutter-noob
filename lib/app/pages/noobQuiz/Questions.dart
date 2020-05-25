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
        question: 'Which one of these Villains is one of Spider-Man\'s foe?',
        choice: ['Selina Kyle', 'Susan Storm', 'Oswald Cobblepot', 'Felicia Hardy'],
        answer: 'Felicia Hardy'),
    QuizQuestionsModel(
        id: '7',
        question: 'What is Coprastastaphobia people fear of?',
        choice: ['Constipations', 'Conspirations', 'Tiny Rooms', 'Spiders'],
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
    QuizQuestionsModel(
        id: '11',
        question: 'According to the Caribbean, what kind of animal is Mountain Chicken (Leptodactylus fallax)?',
        choice: ['Fish', 'Birds/Chickens', 'Cats', 'Frogs'],
        answer: 'Frogs'),
    QuizQuestionsModel(
        id: '12',
        question: 'Which one of these actors has never been cast as Batman?',
        choice: ['George Clooney', 'Harrison Ford', 'Val Kilmer', 'Ben Affleck'],
        answer: 'Harrison Ford'),
    QuizQuestionsModel(
        id: '13',
        question: 'Which bird is nicknamed "The Laughing Jackass"?',
        choice: ['White Cockatoo', 'Australian Magpie', 'Mockingbird', 'Kookaburra'],
        answer: 'Kookaburra'),
    QuizQuestionsModel(
        id: '14',
        question: 'Which one of these fictional character is a villain and comes from Marvel franchise?',
        choice: ['Alexander Luthor Jr.', 'Tim Drake', 'Quentin Beck', 'Marc Spector'],
        answer: 'Quentin Beck'),
  ];
}