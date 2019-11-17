import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Issue.dart';

class MyOriginalPage extends StatefulWidget {
  @override
  _MyOriginalPageState createState() =>
      _MyOriginalPageState();
}

class _MyOriginalPageState extends State<MyOriginalPage> {
  List<Issue> _issues = <Issue>[];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final res = await http.get('https://api.github.com/repositories/31792824/issues');
    final data = json.decode(res.body);
    setState(() {
      final issues = data as List;
      issues.forEach((dynamic element) {
        final issue = element as Map;
        _issues.add(Issue(
          title: issue['title'] as String,
          avatarUrl: issue['user']['avatar_url'] as String,
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            if (index >= _issues.length) {
              return null;
            }

            final issue = _issues[index];
            return ListTile(
              leading: ClipOval(
                child: Image.network(issue.avatarUrl),
              ),
              title: Text(issue.title),
              onTap: () => onTapped(issue),
            );
          },
        ),
      ),
    );
  }

  void onTapped(Issue issue) {
    debugPrint(issue.avatarUrl);
  }
}
