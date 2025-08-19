// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Bab4 extends StatelessWidget {
  const Bab4({super.key});

  @override
  Widget build(BuildContext context) {
    return const CalculatorPage();
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  // 1. Controller untuk mengambil input dari pengguna
  final TextEditingController _number1Controller = TextEditingController();
  final TextEditingController _number2Controller = TextEditingController();

  // 2. Variabel untuk menyimpan hasil, diinisialisasi dengan '0'
  String _result = '0';

  // 3. Fungsi generik untuk melakukan perhitungan
  void _calculate(String operation) {
    // Gunakan double untuk mendukung angka desimal
    final double number1 = double.tryParse(_number1Controller.text) ?? 0.0;
    final double number2 = double.tryParse(_number2Controller.text) ?? 0.0;
    double resultValue = 0.0;

    switch (operation) {
      case '+':
        resultValue = number1 + number2;
        break;
      case '-':
        resultValue = number1 - number2;
        break;
      case '*':
        resultValue = number1 * number2;
        break;
      case '/':
        // Menangani pembagian dengan nol
        if (number2 != 0) {
          resultValue = number1 / number2;
        } else {
          // Menampilkan pesan error jika dibagi dengan nol
          setState(() {
            _result = 'Error';
          });
          return;
        }
        break;
    }

    setState(() {
      // Hapus .0 jika hasilnya adalah bilangan bulat
      _result = resultValue.toStringAsFixed(
          resultValue.truncateToDouble() == resultValue ? 0 : 2);
    });
  }

  @override
  void dispose() {
    // 4. Hapus controller saat widget tidak lagi digunakan untuk mencegah kebocoran memori
    _number1Controller.dispose();
    _number2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Inputan pertama
            SizedBox(
              width: 250, // Atur lebar TextField di sini
              child: TextField(
                controller: _number1Controller,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan angka pertama',
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Inputan kedua
            SizedBox(
              width: 250, // Atur lebar TextField di sini
              child: TextField(
                controller: _number2Controller,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan angka kedua',
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Tombol untuk memicu perhitungan
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => _calculate('+'), child: const Text('+')),
                const SizedBox(width: 8),
                ElevatedButton(
                    onPressed: () => _calculate('-'), child: const Text('-')),
                const SizedBox(width: 8),
                ElevatedButton(
                    onPressed: () => _calculate('*'), child: const Text('×')),
                const SizedBox(width: 8),
                ElevatedButton(
                    onPressed: () => _calculate('/'), child: const Text('÷')),
              ],
            ),
            const SizedBox(height: 32),
            // Teks untuk menampilkan hasil
            Text(
              'Hasil: $_result',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
