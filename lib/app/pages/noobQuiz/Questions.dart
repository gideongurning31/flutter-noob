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
        question: 'Which one of these Villains is not one of Spider-Man\'s foe?',
        choice: ['Wilson Fisk', 'Flint Marko', 'Jonathan Crane', 'Felicia Hardy'],
        answer: 'Jonathan Crane'),
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
        question: 'How many books of the Bible are named after a woman?',
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
    QuizQuestionsModel(
        id: '15',
        question: 'What problem did Leonardo da Vinci, Winston Churchill, Albert Einstein and Thomas Edison have in common?',
        choice: ['Colorblind', 'Dyslexia', 'Autism', 'Insomnia'],
        answer: 'Dyslexia'),
    QuizQuestionsModel(
        id: '16',
        question: 'In which movie did Leonardo DiCaprio won an Oscar as Best Actor?',
        choice: ['The Wolf of Wall Street', 'Shutter Island', 'The Revenant', 'The Aviator'],
        answer: 'The Revenant'),
    QuizQuestionsModel(
        id: '17',
        question: 'Which one of these characters whose not an alter ego of The Flash?',
        choice: ['Barry Allen', 'Hal Jordan', 'Wally West', 'Jay Garrick'],
        answer: 'Hal Jordan'),
    QuizQuestionsModel(
        id: '18',
        question: 'What\'s the first name of the first Director of Federal Bureau of Investigation, J. Edgar Hoover?',
        choice: ['John', 'James', 'Jacob', 'Jason'],
        answer: 'John'),
    QuizQuestionsModel(
        id: '19',
        question: 'Which one of these movies was not produced/directed by Christopher Nolan?',
        choice: ['Dunkirk', 'The Martian', 'Interstellar', 'The Prestige'],
        answer: 'The Martian'),
    QuizQuestionsModel(
        id: '20',
        question: 'What\'s the name of mythology creature whose had a lion\'s head, a goat\'s body and a dragon\'s tail?',
        choice: ['Leviathan', 'Minotaur', 'Griffins', 'Chimera'],
        answer: 'Chimera'),
    QuizQuestionsModel(
        id: '21',
        question: 'Which one of these tech products are not classified as a search engine?',
        choice: ['Google', 'Cortana', 'DuckDuckGo', 'Bing'],
        answer: 'Cortana'),
    QuizQuestionsModel(
        id: '22',
        question: 'Which biblical figure built an ark?',
        choice: ['Jonah', 'Moses', 'Noah', 'King Salomon'],
        answer: 'Noah'),
    QuizQuestionsModel(
        id: '23',
        question: 'Which of these below are the reason a blood cell is colored red?',
        choice: ['Clorofil', 'Hemoglobin', 'Oxygen', 'Carbon Dioxide'],
        answer: 'Hemoglobin'),
    QuizQuestionsModel(
        id: '24',
        question: 'What was the Former USA President, Ronald Reagan, occupation before turning to politics?',
        choice: ['Actor', 'Movie Producer', 'Musician', 'Athlete'],
        answer: 'Actor'),
    QuizQuestionsModel(
        id: '25',
        question: 'Who wasn\'t a member of The Legendary Rock Band, Queen?',
        choice: ['Brian May', 'Freddie Mercury', 'Roger Taylor', 'Ringo Starr'],
        answer: 'Ringo Starr'),
  ];
}