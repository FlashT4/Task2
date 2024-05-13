import 'package:flutter/material.dart';
import 'package:mobileshop/pages/details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // var names = ['Iphone 15', 'Samsung S22', 'Oneplus 11R', 'Oppo', 'Vivo'];
    // var prices = ['Iphone 15', 'Samsung S22', 'Oneplus 11R', 'Oppo', 'Vivo'];

    Map mobiles = {
      'Iphone 15': '1,50,000',
      'Samsung S22': '1,80,000',
      'Google Pixel': '2,00,000',
      'Oneplus 13R': '40,000',
      'Oppo F25': '35,000',
      'Vivo F24': '32,000',
      'Iphone 14': '1,30,000',
      'Oppo F23': '35,000',
      'Vivo F22': '32,000',
    };

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          title: const Center(
            child: Text(
              'Mobile Shop',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'List of Mobiles',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final key = mobiles.keys.toList()[index];
                    final value = mobiles.values.toList()[index];
                    return Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Image.asset('assets/images/moibile.jpg'),
                        title: Text(
                          '$key',
                          style: const TextStyle(fontSize: 25),
                        ),
                        subtitle: Row(
                          children: [
                            const Icon(
                              Icons.currency_rupee,
                              size: 16,
                            ),
                            Text('$value',
                                style: const TextStyle(fontSize: 16)),
                          ],
                        ),
                        trailing: const Icon(
                          Icons.arrow_right,
                          size: 35,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Details(name: key, price: value)));
                        },
                      ),
                    );
                  },
                  itemCount: mobiles.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
