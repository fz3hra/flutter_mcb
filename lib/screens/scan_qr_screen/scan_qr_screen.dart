import 'dart:io';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/Config/routes.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQrScreen extends StatefulWidget {
  const ScanQrScreen({super.key});

  @override
  State<ScanQrScreen> createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  void _onQRViewCreated(QRViewController controller) {
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((scanData) {
      setState(() => result = scanData);
      print("geting data ${result!.code}");
      // "Main9lQcM/imQuyPF5cqCV7tvJp02BBW1xX1ECJxHLGhDnyqrYKOL84+I3FxOBAD"
    });
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  void readQr() async {
    if (result != null) {
      controller!.pauseCamera();
      print(result!.code);
      controller!.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    var decrypted = "decrypt";
    final key = encrypt.Key.fromUtf8('bf3c199c2470cb477d907b1e0917c17b');
    final iv = encrypt.IV.fromUtf8(
      '5183666c72eec9e4',
    );
    final encryptedText =
        'Main9lQcM/imQuyPF5cqCV7tvJp02BBW1xX1ECJxHLGhDnyqrYKOL84+I3FxOBAD';
    if (result != null) {
      print("result ${result!.code}");
      // Main9lQcM/imQuyPF5cqCV7tvJp02BBW1xX1ECJxHLGhDnyqrYKOL84+I3FxOBAD
    }
    return Scaffold(
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: Colors.orange,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: 250,
            ),
          ),
          //
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: ElevatedButton(
                onPressed: () {
                  final encrypter = encrypt.Encrypter(
                    encrypt.AES(key, mode: encrypt.AESMode.cbc),
                  );

                  final decrypted = encrypter.decrypt64(encryptedText, iv: iv);

                  print("decrypted $decrypted");

                  List<String> values = decrypted.split('|');

                  String firstValue =
                      values[0]; // ff484738-f542-4519-9ca8-ae77a32b1198
                  String secondValue = values[1]; // 2000

                  print('First value: $firstValue');
                  print('Second value: $secondValue');
                  Navigator.pushNamed(
                    context,
                    Routes.confirmationScreen,
                    arguments: {
                      "firstValue": firstValue,
                      "secondValue": secondValue,
                    },
                  );
                },
                // () {
                //   // ! do this after click on popup button to proceed
                // final key =
                //     encrypt.Key.fromUtf8('bf3c199c2470cb477d907b1e0917c17b');
                // final iv = encrypt.IV.fromUtf8(
                //   '5183666c72eec9e4',
                // );
                // final encryptedText =
                //     'Main9lQcM/imQuyPF5cqCV7tvJp02BBW1xX1ECJxHLGhDnyqrYKOL84+I3FxOBAD';

                // final encrypter = encrypt.Encrypter(
                //   encrypt.AES(key, mode: encrypt.AESMode.cbc),
                // );

                // final decrypted = encrypter.decrypt64(encryptedText, iv: iv);

                // print("decrypted $decrypted");
                // },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Color(0xFF938EFF),
                ),
                child: Text("Scan Cheque"),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
