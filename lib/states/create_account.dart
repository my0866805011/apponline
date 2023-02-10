import 'package:apponline/utility/config.dart';
import 'package:apponline/widgets/show_title.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  String cTypeUser='*';
  @override
  Widget build(BuildContext context) {
    double mSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: Config.primary,
      ),
      body: ListView(
        children: [
          titleMsg('ข้อมูลทั่วไป'),
          userName(mSize),
          titleMsg('ประเภท User'),
          radioBuyer(mSize),
          radioSeller(mSize),
          radioRider(mSize),
              
        ],
      ),
    );
  }

  
 Row radioBuyer(double mSize) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: mSize*0.6,
          child: RadioListTile(
                  value: 'buyer', 
                  groupValue: cTypeUser,
                  onChanged: (value) {
                    setState(() {
                      cTypeUser = value!;
                    });
                  },
                  title: ShowTitle(cTitle: 'ผู้ซื้อ (Buyer)',
                   cTextStyle: Config().h3Style()
                 ),
              ),
        ),
      ],
    );
  }

Row radioSeller(double mSize) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: mSize*0.6,
          child: RadioListTile(
                  value: 'seller', 
                  groupValue: cTypeUser,
                  onChanged: (value) {
                    setState(() {
                      cTypeUser = value!;
                    });
                  },
                  title: ShowTitle(cTitle: 'ผู้ขาย (Saller)',
                   cTextStyle: Config().h3Style()
                 ),
              ),
        ),
      ],
    );
  }

  Row radioRider(double mSize) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: mSize*0.6,
          child: RadioListTile(
                  value: 'rider', 
                  groupValue: cTypeUser,
                  onChanged: (value) {
                    setState(() {
                      cTypeUser = value!;
                    });
                  },
                  title: ShowTitle(cTitle: 'ผู้ส่ง (Rider)',
                   cTextStyle: Config().h3Style()
                 ),
              ),
        ),
      ],
    );
  }


  ShowTitle titleMsg(String ctitle) {
    return ShowTitle(
      cTitle: ctitle,
      cTextStyle: Config().h3Style(),
    );
  }
}

Row userName(double mSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: const EdgeInsets.only(top: 16),
          width: mSize * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: Config().h3Style(),
              labelText: 'User :',
              prefixIcon: Icon(
                Icons.account_circle_outlined,
                color: Config.dart,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Config.dart),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Config.light),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )),
    ],
  );
}
