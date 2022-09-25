String formateAmount(int amount) {
  String amountInString = amount.toString();
  List listChar = amountInString.split('');
  String result = '';
  int counter = 0;
  final reversedListChar = listChar.reversed.toList();
  for (var i = 0; i < listChar.length; i++) {
    counter++;
    result = reversedListChar[i] + result;
    if (counter == 3 && (listChar.length - (i + 1)) != 0) {
      counter = 0;
      result = '.$result';
    }
  }
  return result;
}
