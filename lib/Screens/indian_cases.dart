import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class India extends StatefulWidget {
  const India({Key? key}) : super(key: key);

  @override
  State<India> createState() => _IndiaState();
}

class _IndiaState extends State<India> {
  List<dynamic> users = [];
  dynamic curr;
  void fetch() async {
    print('fetch users called.');
    const url = 'https://api.rootnet.in/covid19-in/stats/latest';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      curr = json['data'];
      users = curr['regional'];
    });
  }

  @override
  void initState() {
    super.initState();
    fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          'COVID-19 CASES',
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final curr = users[index];
          final location = curr['loc'];
          final cases = curr['totalConfirmed'];
          final deaths = curr['deaths'];
          return Card(
            color: Colors.teal,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'State : $location',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Cases : $cases',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Deaths : $deaths',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
