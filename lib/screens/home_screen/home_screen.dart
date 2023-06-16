import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, Routes.qrScannerScreen),
                child: Text("Scan Qr Code"),
              ),
              ElevatedButton(
                onPressed: () {
                  final key =
                      encrypt.Key.fromUtf8('bf3c199c2470cb477d907b1e0917c17b');
                  final iv = encrypt.IV.fromUtf8(
                    '5183666c72eec9e4',
                  );
                  final encryptedText =
                      'Main9lQcM/imQuyPF5cqCV7tvJp02BBW1xX1ECJxHLGhDnyqrYKOL84+I3FxOBAD';

                  final encrypter = encrypt.Encrypter(
                    encrypt.AES(key, mode: encrypt.AESMode.cbc),
                  );

                  final decrypted = encrypter.decrypt64(encryptedText, iv: iv);

                  print(decrypted); // ff484738-f542-4519-9ca8-ae77a32b1198|2000
                },
                child: Text("Decrypt code"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
