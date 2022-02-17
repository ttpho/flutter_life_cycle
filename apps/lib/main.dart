import 'package:flutter/material.dart';

void main() {
  runApp(const LifeCycleManager(child: MyApp()));
}

void log(String widgetName, String method) {
  // ignore: avoid_print
  print("$widgetName - $method");
}

class LifeCycleManager extends StatefulWidget {
  final Widget child;
  const LifeCycleManager({Key? key, required this.child}) : super(key: key);
  @override
  _LifeCycleManagerState createState() => _LifeCycleManagerState();
}

class _LifeCycleManagerState extends State<LifeCycleManager>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    log("AppLifecycleState", state.name);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  StatelessElement createElement() {
    log("StatelessWidget", "createElement");
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    log("StatelessWidget", "build");
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  StatefulElement createElement() {
    log("StatefulWidget", "createElement");
    return super.createElement();
  }

  @override
  // ignore: no_logic_in_create_state
  State<MyHomePage> createState() {
    log("StatefulWidget", "createState");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    log("StatefulWidget::State", "build");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    log("StatefulWidget::State", "initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    log("StatefulWidget::State", "didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    log("StatefulWidget::State", "didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    log("StatefulWidget::State", "dispose");
    super.dispose();
  }

  @override
  void deactivate() {
    log("StatefulWidget::State", "deactivate");
    super.deactivate();
  }

  @override
  void setState(VoidCallback fn) {
    log("StatefulWidget::State", "setState");
    super.setState(fn);
  }
}
