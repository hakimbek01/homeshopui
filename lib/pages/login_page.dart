import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:homeshopui/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final  _formKey=GlobalKey<FormState>();
  TextEditingController _editingController=TextEditingController();
  String email='',userName='',password='';
  String name='';
  bool isVisiable=true;
  void _doLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Hello World');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(newName: userName),));
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile',style: TextStyle(color: Colors.black),),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(CupertinoIcons.back,color: Colors.grey.shade600,),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Container(
                  height: 90,
                  width: 90,
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        foregroundImage: AssetImage('assets/images/img.jpeg'),
                      ),
                       Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 23,
                          width: 23,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle
                          ),
                          child: Icon(Icons.edit,size: 17,color: Colors.white,),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('Senior Designer',style: TextStyle(color: Colors.grey,fontSize: 15),),
                SizedBox(height: 30,),
                SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //email
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Email Adres',
                          ),
                          validator: (value) => !value!.contains('@gmail.com')?'Email xato kiritildi': null,
                          onSaved: (newValue) {
                            setState(() {
                              email=newValue!;
                            });
                          },
                        ),
                        SizedBox(height: 15,),
                        //username
                        TextFormField(
                          controller: _editingController,
                          decoration: InputDecoration(
                            labelText: 'User Name',
                          ),
                          onSaved: (newValue) => userName=newValue!,
                        ),
                        SizedBox(height: 15,),
                        //password
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  isVisiable=!isVisiable;
                                });
                              },
                              icon: (isVisiable)? Icon(Icons.visibility):Icon(Icons.visibility_off),
                            )
                          ),
                          obscureText: isVisiable,
                          validator: (value) => value!.length<8?'Element kam!': null,
                          onSaved: (newValue) => email=newValue!,
                        ),
                        SizedBox(height: 50,),
                        Text('Birth Date (Optional)',style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 60,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Kun',
                                  hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 100,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Oy',
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 60,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Yil',
                                    hintStyle: TextStyle(color: Colors.grey)
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height:30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                _doLogin();
                              },
                              color: Colors.grey.shade300,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              minWidth: 150,
                              child: Text('Save'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
