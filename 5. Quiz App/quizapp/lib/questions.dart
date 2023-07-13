//Questions

class Question {
  Question(this.question, this.options);
  final String question;
  final List<String> options;
}

List questionList = [
  //Q1
  Question(
    'What is the Developer\'s Github Id?',
    [
      'Abh1noob',
      'Abhinav',
      'Who cares',
      'I dont know',
    ],
  ),

  //Q2
  Question(
    'Why is he making this app?',
    [
      'Want to learn flutter',
      'He is too smart',
      'Who cares??',
      'Please dont ask me',
    ]
  ),

  //Q3
  Question(
    'more questions can be asked on?',
    [
      'Personal life',
      'College life',
      'Please stop asking me questions',
      'Can think of specific category',
    ]
  ),

  //Q4
  Question(
    'When will the developer stop asking questions?',
    [
      'When we will have 5 questions',
      'I dont know',
      'I dont care',
      'When will this enddd!!!',
    ]
  ),

  //Q5
  Question(
    'Ok, this is last question',
    [
      'Lets goo!!!',
      'Finally!',
      'Option 3 lol',
      'Creativity exhausted uff...',
    ]
  )
];
