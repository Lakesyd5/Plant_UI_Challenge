class ButtonModel {
  ButtonModel({required this.text, this.isPressed = false});

  String text;
  bool isPressed;
}

List<ButtonModel> buttons = [
  ButtonModel(text: 'Indoor Plant'),
  ButtonModel(text: 'Out Door Plant'),
  ButtonModel(text: 'Small Plants'),
];