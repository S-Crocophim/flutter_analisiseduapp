import 'package:flutter/material.dart';

class LoginController {
  BuildContext? get context => null;

  void login(String username, String password) {
    // 1. Validasi input
    if (username.isEmpty || password.isEmpty) {
      // Tampilkan pesan error jika input kosong
      return;
    }

    // 3. Simpan data login (contoh: shared preferences, database, atau API call)
    //...

    // 4. Navigasi ke halaman selanjutnya
    ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context!, '/dashboard');
      },
      child: const Text('Login'),
    );
    //...
  }
}
