import 'dart:io';
import 'class.dart';
void main() {
  var authUser = AuthUser();
  User? loggedUser;
  String? username, password;
  showFirstMenu();
  String? authOption = stdin.readLineSync();
  while (authOption!= "3") {
    switch (authOption) {
      case "1":
        print("Masukkan username!");
        username = stdin.readLineSync();
        print("Masukkan password!");
        password = stdin.readLineSync();
        print("Masukkan saldo awal!");
        double? balance = double.parse(stdin.readLineSync()!);
        if(username != null && password != null) {
          authUser.register(username, password, balance);
        } else {
          print("Masukkan username dan password anda dengan benar!");
        }
        break;

      case "2":
        print("Masukkan username anda!");
        username = stdin.readLineSync();
        print("Masukkan username anda!");
        password = stdin.readLineSync();
        if (username != null && password != null) {
          loggedUser = authUser.login(username, password);
          if (loggedUser != null) {
            print("Login berhasil, selamat datang ${loggedUser.username}");
            bankSystem(loggedUser);
          } else {
            print("Anda salah memasukkan username atau password");
          }
        } else {
          print("Masukkan username dan password anda dengan benar!");
        }
        break;
    }
    showFirstMenu();
    authOption = stdin.readLineSync();
  }
  print("Terimakasih telah menggunakan aplikasi kami.");
}

void bankSystem(User loggedUser) {
  showBankSystemMenu();
  String? option = stdin.readLineSync();
  while(option != "4") {
    switch(option){
      case "1":
      print("Sisa saldo anda: ${loggedUser.balance}");
      break;

      case "2":
      print("Masukkan nominal yang ingin anda depositkan!");
      double? deposit = double.parse(stdin.readLineSync()!);
      loggedUser.deposit(deposit);
      break;

      case "3":
      print("Masukkan nominal yang ingin anda tarik");
      double? withDraw = double.parse(stdin.readLineSync()!);
      loggedUser.withDraw(withDraw);
      break;

      case "4":
      print("Anda berhasil logout!");
      break;
    }
    showBankSystemMenu();
    option = stdin.readLineSync();
  }

}


void showBankSystemMenu()  {
  print("==== MENU ====");
  print("1. Check Saldo");
  print("2. Deposit Saldo");
  print("3. Tarik Saldo");
  print("4. Exit");
}

void showFirstMenu()  {
  print("==== MENU ====");
  print("1. Registrasi Akun");
  print("2. Login");
  print("3. Exit");
}