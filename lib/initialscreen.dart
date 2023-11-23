import 'package:flutter/material.dart';
import 'HomeScreen1.dart';
import 'Homescreen.dart';
import 'constant.dart';
import 'constants.dart';
import 'constantss.dart';
import 'hmescrn.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
   //   String _email,_password;
   // TextEditingController _emailController;
   // TextEditingController _passwordController;


  void signIn(){

  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print(height *0.50);
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body:

      GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                Stack(
                  children: [
                    Image.asset(bgImage,
                      height: height*0.40,
                      width: width,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: height*0.42,
                      width: width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            stops: [0.3,0.8],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent,Colors.white]),
                      ),
                      // color: Colors.orange.withOpacity(0.3),
                    ),
                  ],
                ),


                Center(
                  child: Text(appName,style: TextStyle(
                      fontSize: 23,fontWeight: FontWeight.w700
                  ),),
                ),
                Center(child: Text(slogan,style: TextStyle(color: Colors.grey),)),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 20),
                  child: Container(
                    child: Text(" $loginString ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(

                        colors: [Colors.blueGrey.withOpacity(0.3),Colors.transparent.withOpacity(0.1)],),
                      border: Border(left: BorderSide(color: Colors.orange,width: 5),),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  child: TextFormField(
                    // controller: _emailController,
                    // onSaved: (value){
                    //   _email = value!;
                    //
                    // },
                    validator: (email){
                      final exp =RegExp(
                          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                          .hasMatch(email!);
                      if(email!.isEmpty)
                        return"Please Enter Email";
                      else if(!exp){
                        return  'Enter Valid Name';
                      }

                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      prefixIcon: Icon(Icons.email,color: Colors.orange,) ,
                      labelText: "Email Address",
                      labelStyle: TextStyle(color: Colors.orange,fontSize: 16),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  child: TextFormField(
                    // controller: _passwordController,
                    // onSaved: (value){
                    //   _password= value!;
                    // },
                    validator: (password){
                     if(password==null||password.isEmpty)
                       {
                         return "Enter the valid password";
                       }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                      prefixIcon: Icon(Icons.lock_open,color: Colors.orange) ,
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(color: Colors.orange,fontSize: 16),

                    ),
                  ),
                ),
                Align
                  (
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child:  Text("Forget Password?",style: TextStyle(color: Colors.black),),)),
                Center(child: SizedBox(
                  height: height*0.06,
                  width: width -30,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: TextButton(
                      onPressed: (){
                        if(formKey.currentState!.validate()){
                          formKey.currentState?.save();
                          // if(_email == "nisha@gmail.com"&&
                          //     _password == "nisha@123"
                          // )
                          {
                            FocusScope.of(context).unfocus();
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen1(),),);
                          }
                          // else{
                          //   print("Invalid Login Details");
                          // }




                        }

                      }, child: Text("Login to account",style: TextStyle(letterSpacing: 0.5,
                        color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),),
                  ),),),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(("Dont' have an account?"),),
                      TextButton(onPressed: (){}, child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Create Account",style: TextStyle(color: Colors.orange,fontSize: 16),
                        ),
                      ),),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}