import 'dart:io';

void main() {
  double saldo = 0;
  double? number;
  showMenu();
  String? option = stdin.readLineSync();
  while (option != "4" ) {
    switch (option) {
      case "1":
        print("Saldo anda berjumlah: ${saldo}");
        break;
      case "2":
        print("Masukkan jumlah deposit yang ingin anda masukkan: ");
        number = double.parse(stdin.readLineSync()!);
        saldo = saldo + number;
        break;
      case "3":
        print("Masukkan nominal yang ingin kamu tarik");
        number = double.parse(stdin.readLineSync()!);
        if (number > saldo) {
          print("Maaf saldo kamu hanya tersisa ${saldo}");
        } else {
          saldo = saldo - number;
          print("Kamu berhasil menarik saldo, sisa saldo kamu: ${saldo}");
        }
        break;
    }
    showMenu();
    option = stdin.readLineSync();
  }
  print("Kamu berhasil keluar");
}

void showMenu()  {
  print("MENU");
  print("1. Check Saldo");
  print("2. Deposit Saldo");
  print("3. Tarik Saldo");
  print("4. Exit");
  print("input nomor menu yang ingin kamu inginkan: ");
}