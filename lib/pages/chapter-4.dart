import 'package:flutter/material.dart';

class Chapter4Page extends StatefulWidget {
  const Chapter4Page({super.key});

  @override
  State<Chapter4Page> createState() => _Chapter4PageState();
}

class _Chapter4PageState extends State<Chapter4Page> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _calculate(String operator) {
    double? num1 = double.tryParse(_controller1.text);
    double? num2 = double.tryParse(_controller2.text);
    if (num1 == null || num2 == null) {
      setState(() {
        _result = 'Input tidak valid!';
      });
      return;
    }
    double res;
    switch (operator) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case 'x':
        res = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          setState(() {
            _result = 'Tidak bisa dibagi 0!';
          });
          return;
        }
        res = num1 / num2;
        break;
      default:
        res = 0;
    }
    setState(() {
      _result = 'Hasil: $res';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
        backgroundColor: Colors.lightBlueAccent, // Ganti warna sesuai keinginan
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _controller1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Angka pertama',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _controller2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Angka kedua',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _calculate('+'),
                    child: const Text('+'),
                  ),
                  ElevatedButton(
                    onPressed: () => _calculate('-'),
                    child: const Text('-'),
                  ),
                  ElevatedButton(
                    onPressed: () => _calculate('x'),
                    child: const Text('x'),
                  ),
                  ElevatedButton(
                    onPressed: () => _calculate('/'),
                    child: const Text('/'),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                _result,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
