void main() {
  perhitungan(3);
}

void perhitungan(int n) {
  for (var i = 1; i <= n; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
