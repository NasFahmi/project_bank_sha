import 'package:flutter/material.dart';
import 'package:project_bank_sha/config/common/screen.dart';
import 'package:project_bank_sha/config/theme/theme.dart';
import 'package:project_bank_sha/presetation/ui/widgets/pin_code_field.dart';
import 'package:project_bank_sha/presetation/ui/widgets/pin_number_pad.dart';

class LoginPinPage extends StatefulWidget {
  const LoginPinPage({super.key});

  @override
  State<LoginPinPage> createState() => _LoginPinPageState();
}

class _LoginPinPageState extends State<LoginPinPage> {
  List<String> currentPin = ['', '', '', '', '', ''];
  int pinIndex = 0;
  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();
  TextEditingController pinFiveController = TextEditingController();
  TextEditingController pinSixController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayBackgroundColorOnboard,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.calHeightMultiplier(40),
              ),
              Text(
                'Enter Your PIN',
                style: TextStyle(
                  fontSize: SizeConfig.calMultiplierText(20),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: SizeConfig.calHeightMultiplier(4),
              ),
              Text('Enter 6 digits number'),
              SizedBox(
                height: SizeConfig.calHeightMultiplier(40),
              ),
              pinTextField(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    KeyboardPinPad(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  pinIndexSetup(String text) {
    if (text == 'delete') {
      //! jika bukan delete
      // Jika tombol delete ditekan
      if (pinIndex > 0) {
        // Hanya hapus jika masih ada angka yang dimasukkan
        pinIndex--;
        setPin(
            pinIndex + 1, ''); // Kosongkan nilai PIN di index yang akan dihapus
        currentPin[pinIndex] = ''; // Update currentPin list
      }
    } else {
      // Jika angka dimasukkan
      if (pinIndex < 6) {
        //! jika pinIndex kurang dari 6 yang mana pinIndexInitial = 0
        //* pinIndex = 1 , text dari btn yang di pilih
        setPin(pinIndex + 1, text); // Set nilai PIN untuk indeks saat ini

        currentPin[pinIndex] =
            text; // Perbarui daftar currentPin //* currentPin[pinIndex] ini mengacu ke list dari currnetPin[pinindex yang bernilai 0] = text yang dikirimkan
        pinIndex++; // Pindahkan ke indeks berikutnya //* pinIndex bernilai tambah 1

        if (pinIndex == 6) {
          //!jika sudah terisi semua
          // Jika semua digit dimasukkan
          String strPin = currentPin.join(); // Ubah list menjadi string
          print(strPin);
        }
      }
    }
  }

  setPin(int n, String text) {
    //* int n bernilai 1 jadi yang dimaksutkan adalah pinController pertama
    switch (n) {
      case 1:
        pinOneController.text =
            text; //*isi pinController menggunakan text yang dikirim dari btn
        break;
      case 2:
        pinTwoController.text = text;
        break;
      case 3:
        pinThreeController.text = text;
        break;
      case 4:
        pinFourController.text = text;
        break;
      case 5:
        pinFiveController.text = text;
        break;
      case 6:
        pinSixController.text = text;
        break;
      default:
    }
  }

  Container pinTextField() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PinCodeField(pinController: pinOneController),
          PinCodeField(pinController: pinTwoController),
          PinCodeField(pinController: pinThreeController),
          PinCodeField(pinController: pinFourController),
          PinCodeField(pinController: pinFiveController),
          PinCodeField(pinController: pinSixController),
        ],
      ),
    );
  }

  Expanded KeyboardPinPad() {
    return Expanded(
      flex: 7,
      child: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PinNumberPad(
                    isDelete: false,
                    n: 1,
                    onTap: () {
                      pinIndexSetup('1');
                      print(1);
                    },
                  ),
                  PinNumberPad(
                    isDelete: false,
                    n: 2,
                    onTap: () {
                      pinIndexSetup('2');
                      print(2);
                    },
                  ),
                  PinNumberPad(
                    isDelete: false,
                    n: 3,
                    onTap: () {
                      pinIndexSetup('3');
                      print(3);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PinNumberPad(
                    isDelete: false,
                    n: 4,
                    onTap: () {
                      pinIndexSetup('4');
                      print(4);
                    },
                  ),
                  PinNumberPad(
                    isDelete: false,
                    n: 5,
                    onTap: () {
                      pinIndexSetup('5');
                      print(5);
                    },
                  ),
                  PinNumberPad(
                    isDelete: false,
                    n: 6,
                    onTap: () {
                      pinIndexSetup('6');
                      print(6);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PinNumberPad(
                    isDelete: false,
                    n: 7,
                    onTap: () {
                      pinIndexSetup('7');
                      print(7);
                    },
                  ),
                  PinNumberPad(
                    isDelete: false,
                    n: 8,
                    onTap: () {
                      pinIndexSetup('8');
                      print(8);
                    },
                  ),
                  PinNumberPad(
                    isDelete: false,
                    n: 9,
                    onTap: () {
                      pinIndexSetup('9');
                      print(9);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: SizeConfig.calWidthMultiplier(60),
                    height: SizeConfig.calWidthMultiplier(60),
                  ),
                  PinNumberPad(
                    isDelete: false,
                    n: 0,
                    onTap: () {
                      pinIndexSetup('0');
                      print(0);
                    },
                  ),
                  PinNumberPad(
                    isDelete: true,
                    n: 0,
                    onTap: () {
                      pinIndexSetup('delete');
                      print('delete');
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
