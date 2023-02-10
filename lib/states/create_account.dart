import 'package:apponline/utility/config.dart';
import 'package:apponline/widgets/show_title.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: Config.primary,
      ),
      body: ShowTitle(
        cTitle: 'ข้อมูลทั่วไป',
        cTextStyle: Config().h2Style(),
        ),
    );
  }
}
