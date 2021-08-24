void main() {
  EWallet taufiq = new EWallet('Muhammad Taufiq');
  print('Nilai Awal');
  print(taufiq.getNama);
  print(taufiq.getSaldo);
  print(taufiq.getMutasi);

  taufiq.request(2000000);
  print('Request');
  print(taufiq.getSaldo);
  print(taufiq.getMutasi);
  taufiq.transfer(500000);
  print('Transfer');
  print(taufiq.getSaldo);
  print(taufiq.getMutasi);
}

class EWallet {
  String namaPemilik;
  int saldo = 0;
  List mutasi = [];

  get getNama {
    return namaPemilik;
  }

  get getSaldo {
    return saldo;
  }

  get getMutasi {
    return mutasi;
  }

  set setNama(String nama) {
    this.namaPemilik = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  set setMutasi(List mutasi) {
    this.mutasi = mutasi;
  }

  EWallet(
    this.namaPemilik,
  );

  transfer(int nominal) {
    saldo = saldo - nominal;
    addMutasi('Transfer $nominal ');
  }

  request(int nominal) {
    saldo = saldo + nominal;
    addMutasi('Request $nominal');
  }

  addMutasi(String transaksi) {
    mutasi.add(transaksi);
  }
}
