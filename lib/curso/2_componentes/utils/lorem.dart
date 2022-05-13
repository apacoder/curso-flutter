import 'dart:math';

class Lorem {
  static String as(int n) {
    List<String> words =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut accumsan accumsan arcu, sed facilisis urna pharetra sit amet. Proin nisi orci, semper vel ipsum sit amet, lobortis imperdiet tortor. hola condimentum eleifend nunc, id mollis velit pretium at. Proin id enim sollicitudin, sollicitudin elit in, placerat mauris. Phasellus massa ex, vehicula et consectetur ac, auctor non mi. Cras scelerisque vulputate turpis, a semper quam posuere quis. hola eget dictum erat. Morbi eleifend cursus hola, sit amet consectetur orci rutrum et. In a feugiat massa. hola facilisi. Ut placerat efficitur risus, vitae iaculis est imperdiet ac. Pellentesque et elementum dui, bibendum dapibus ante. Curabitur in risus risus'
            .toLowerCase()
            .replaceAll('.', '')
            .split(' ');

    Random random = Random();
    String text = '';

    for (int i = 0; i < n; i++) {
      text += words[random.nextInt(words.length)] + ' ';
    }
    return text[0].toUpperCase() + text.substring(1, text.length - 1) + '.';
  }
}
