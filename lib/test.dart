import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class BankAccount with ChangeNotifier {
  int _balance = 0;

  int getBalance() => _balance;

  void increment(int value) {
    _balance += value;
    notifyListeners(); //must be inserted
  }

  void decrement(int value) {
    _balance -= value;
    notifyListeners(); //must be inserted
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BankAccount>(builder: (_) => BankAccount()),
        Provider<String>.value(value: "Park")
      ],
      child: MaterialApp(
        title: "Provider Test",
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BankAccount bankAccount = Provider.of<BankAccount>(context);
    String name = Provider.of<String>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Provider Test")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Name is '$name'"),
            Text("Your balance is ${bankAccount.getBalance()}"),
            RaisedButton(
              child: Text("Test with StatefulWidget"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestSFW()));
              },
            ),
            RaisedButton(
              child: Text("Test with StatelessWifet"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TestSLW()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TestSFW extends StatefulWidget {
  @override
  TestSFWState createState() => TestSFWState();
}

class TestSFWState extends State<TestSFW> {
  @override
  Widget build(BuildContext context) {
    BankAccount bankAccount = Provider.of<BankAccount>(context);
    String name = Provider.of<String>(context);

    return Scaffold(
      appBar: AppBar(title: Text("SFW with Prodiver")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Name is '$name'"),
            Text("Your balance is ${bankAccount.getBalance()}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+1"),
                  onPressed: () {
                    bankAccount.increment(1);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+10"),
                  onPressed: () {
                    bankAccount.increment(10);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+100"),
                  onPressed: () {
                    bankAccount.increment(100);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-1"),
                  onPressed: () {
                    bankAccount.decrement(1);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-10"),
                  onPressed: () {
                    bankAccount.decrement(10);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-100"),
                  onPressed: () {
                    bankAccount.decrement(100);
                  },
                ),
              ].map(
                (child) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 40,
                    child: child,
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class TestSLW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BankAccount bankAccount = Provider.of<BankAccount>(context);
    String name = Provider.of<String>(context);

    print("build method of TestSLW");
    return Scaffold(
      appBar: AppBar(title: Text("SFW with Provider")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Name is '$name'"),
            Text("Your balance is ${bankAccount.getBalance()}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+1"),
                  onPressed: () {
                    bankAccount.increment(1);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+10"),
                  onPressed: () {
                    bankAccount.increment(10);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("+100"),
                  onPressed: () {
                    bankAccount.increment(100);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-1"),
                  onPressed: () {
                    bankAccount.decrement(1);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-10"),
                  onPressed: () {
                    bankAccount.decrement(10);
                  },
                ),
                RaisedButton(
                  padding: const EdgeInsets.all(0),
                  child: Text("-100"),
                  onPressed: () {
                    bankAccount.decrement(100);
                  },
                ),
              ].map(
                (child) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 40,
                    child: child,
                  );
                },
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
