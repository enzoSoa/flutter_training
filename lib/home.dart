import 'package:al2_2023/footer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 1;

  void handleTabClick(int clickedTab) {
    setState(() {
      _currentTab = clickedTab;
    });
  }

  Widget body() {
    switch (_currentTab) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPage();
    }
    return const Text("Select a tab");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          shadowColor: Colors.transparent,
          title: Text(
            "𝕏",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: body(),
        bottomNavigationBar: Footer(
          currentTab: _currentTab,
          onTabClick: handleTabClick,
        ));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("This is the home page");
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("This is the search page");
  }
}
