class User {
  String username;
  String password;
  double? balance;
  User({required this.username, required this.password, this.balance});

  void deposit(double number) {
    if(number > 0) {
      balance = (balance ?? 0) + number;
    } else {
      print("Masukkan jumlah dengan benar!");
    }
  }

  void withDraw(double number) {
    if(number <= (balance ?? 0)) {
      balance = (balance ?? 0) - number;
    } else {
      print("Saldo anda tidak cukup");
    }
  }
}

class AuthUser{
    List<User> users = [];

    // prosedur register
    void register(String username, String password, double balance) {
      // memeriksa apakah username sudah ada atau belum
      if (users.any((user) => user.username == username)) {
        print('Username sudah terdaftar!');
      } else {
        var newUser = User(username: username, password: password, balance: balance);
        users.add(newUser);
        print("Registrasi Berhasil!");
      }
    }

    // fungsi login
    User? login(String username, String password) {
      for (var i = 0; i < users.length; i++) {
        if(users[i].username == username && users[i].password == password) {
          return users[i];
        }
      }
      return null;
    }
}