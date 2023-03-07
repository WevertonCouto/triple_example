import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:triple_example/src/modules/home/models/home_model.dart';
import 'package:triple_example/src/modules/home/stores/home_store.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var counterStore = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter triple'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ScopedBuilder(
              store: counterStore,
              onState: (context, HomeModel state) {
                return Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterStore.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
