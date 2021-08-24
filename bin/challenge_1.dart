import 'package:challenge_1/challenge_1.dart' as challenge_1;

void main(List<String> arguments) {
  var n = 5;
  print('Soal 1');
  for (int i = 0; i < n; i++) {
    var bintang = '';
    for (int j = 0; j <= i; j++) {
      bintang = bintang + '*';
    }
    print(bintang);
  }

  var m = 5;
  print('Soal 2');
  for (var i = 0; i < m; i++) {
    var bintang = '';
    for (int j = m; j > i; j--) {
      bintang = bintang + '*';
    }
    print(bintang);
  }
}
