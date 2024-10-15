const assetPath = 'assets/images';

enum InputType {
  rock,
  scissors,
  paper;

  String get path => '$assetPath/$name.png';
}

enum Result {
  playerWin('Player Win!'), draw('Draw!'), comWin('Com Win!');

  const Result(this.displayString);

  final String displayString;
}