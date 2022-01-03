import 'package:alan_voice/alan_voice.dart';
import 'package:alanv1/Screen/Home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  String text = '';
  bool happy = false;

  @override
  void initState() {
    AlanVoice.addButton(
        "3ce40a0d1f38f4ddd058ba0e26f47ffa2e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);

    AlanVoice.callbacks.add((command) => _handleCommand(command.data, context));
    super.initState();
  }

  void _handleCommand(Map<String, dynamic> command, BuildContext context) {
    switch (command["command"]) {
      case "DVP":
        setState(() {
          happy = false;
          text = 'Double V Partners';
        });
        break;
      case "SMB":
        setState(() {
          happy = false;
          text = 'Stiven Morelo B...';
        });
        break;
      case "Happy":
        setState(() {
          happy = true;
        });
        break;
      case "Back":
        setState(() {
          text = '...';
          happy = false;
        });
        Navigator.of(context).pop();
        break;
      default:
        setState(() {
          happy = false;
          text = '...';
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Voice asistem'),
          centerTitle: true,
        ),
        body: Center(
          // ignore: avoid_unnecessary_containers
          child: happy == false
              ? Text(text)
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://thumbs.dreamstime.com/z/feliz-a%C3%B1o-nuevo-ilustraci%C3%B3n-de-tarjetas-felicitaci%C3%B3n-gran-tama%C3%B1o-223102019.jpg'),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Felices fiestas',
                        style: TextStyle(fontSize: 24),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
