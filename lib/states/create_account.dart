

import 'dart:io';

import 'package:apponline/utility/config.dart';
import 'package:apponline/widgets/show_image.dart';
import 'package:apponline/widgets/show_title.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String cTypeUser = '*';
  File? lcFile;
  @override
  Widget build(BuildContext context) {
    double mSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Account'),
        backgroundColor: Config.primary,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: ListView(
          children: [
            titleMsg('ข้อมูลทั่วไป'),
            userName(mSize),
            titleMsg('ประเภท User'),
            radioBuyer(mSize),
            radioSeller(mSize),
            radioRider(mSize),
            titleMsg('รายละเอียด'),
            userAddress(mSize),
            userPhone(mSize),
            userEmail(mSize),
            userPassword(mSize),
            userAvatar(mSize),
          ],
        ),
      ),
    );
  }
  Future<Null> chooseImage(ImageSource source)async{
    try {
      var result = await ImagePicker().getImage(
        source: source,
        maxWidth: 800,
        maxHeight: 800,
        );
        setState(() {
          lcFile = File(result!.path);
        });
    
      
    // ignore: empty_catches
    } catch (e) {}
  }

  Row userAvatar(double mSize) {
    return Row(crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: ()=> chooseImage(ImageSource.camera),
                icon: Icon(
                  Icons.add_a_photo,
                  size: 36,color: Config.primary,
                ),
              ),
              Container(margin: EdgeInsets.symmetric(vertical: 16),
                width: mSize*0.6,
                child: lcFile == null ?
                  ShowImage(cPath: Config.avatar) 
                  : Image.file(lcFile!),
                ),
              IconButton(
                onPressed: () => chooseImage(ImageSource.gallery),
                icon: Icon(
                  Icons.add_photo_alternate,
                  size: 36,color: Config.dart,
                ),
              ),
            ],
          );
  }

  Row radioBuyer(double mSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: mSize * 0.6,
          child: RadioListTile(
            value: 'buyer',
            groupValue: cTypeUser,
            onChanged: (value) {
              setState(() {
                cTypeUser = value!;
              });
            },
            title: ShowTitle(
                cTitle: 'ผู้ซื้อ (Buyer)', cTextStyle: Config().h3Style()),
          ),
        ),
      ],
    );
  }

  Row radioSeller(double mSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: mSize * 0.6,
          child: RadioListTile(
            value: 'seller',
            groupValue: cTypeUser,
            onChanged: (value) {
              setState(() {
                cTypeUser = value!;
              });
            },
            title: ShowTitle(
                cTitle: 'ผู้ขาย (Saller)', cTextStyle: Config().h3Style()),
          ),
        ),
      ],
    );
  }

  Row radioRider(double mSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: mSize * 0.6,
          child: RadioListTile(
            value: 'rider',
            groupValue: cTypeUser,
            onChanged: (value) {
              setState(() {
                cTypeUser = value!;
              });
            },
            title: ShowTitle(
                cTitle: 'ผู้ส่ง (Rider)', cTextStyle: Config().h3Style()),
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
              labelText: 'Name :',
              prefixIcon: Icon(
                Icons.account_box,
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

Row userAddress(double mSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: const EdgeInsets.only(top: 16),
          width: mSize * 0.6,
          child: TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'Address :',
              hintStyle: Config().h3Style(),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Icon(
                  Icons.home,
                  color: Config.dart,
                ),
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

Row userEmail(double mSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: const EdgeInsets.only(top: 16),
          width: mSize * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: Config().h3Style(),
              labelText: 'Email :',
              prefixIcon: Icon(
                Icons.email,
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

Row userPhone(double mSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: const EdgeInsets.only(top: 16),
          width: mSize * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: Config().h3Style(),
              labelText: 'Phone :',
              prefixIcon: Icon(
                Icons.phone,
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

Row userPassword(double mSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: const EdgeInsets.only(top: 16),
          width: mSize * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: Config().h3Style(),
              labelText: 'Pssword :',
              prefixIcon: Icon(
                Icons.password,
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
