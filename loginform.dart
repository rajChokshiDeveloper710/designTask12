import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login",
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  GlobalKey<FormState> globalKey = new GlobalKey<FormState>(); // Key for the Form
  TextEditingController email = TextEditingController(); // Controller for the Email TextFormField
  TextEditingController pass = TextEditingController(); // Controller for the Password TextFormField


  void validatee(){

    // This function is used for validation

    final FormState? form = globalKey.currentState;

      if (form!.validate()) {
        print('Form is valid');
      } else {
        print('Form is invalid');
      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login form"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
       child: Column(
         children: [
          
           ClipPath(

             // Clipper to clip the widget. It will display semi circular design.


             clipper: BackgroundClipper(),
             child: Container(
               alignment: Alignment.center,
               child: const Image(
                 image: AssetImage('assets/login.png'),
               ),
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height/3.5,
               decoration: const BoxDecoration(
                color: Colors.black
               ),
             ),
           ),
           const SizedBox(

             //SizedBox for spacing

             height: 30,
           ),
           const Text(

             //Login Text

             "Login",
             style: TextStyle(
               color: Colors.black,
               fontSize: 60,
             ),
           ),
           Form(

             //Form which contains email and passsword textformfield

               key: globalKey,

               child: Container(
             padding: EdgeInsets.all(40),
             child: Column(
               children: [
                 TextFormField(

                   //Email textFormField


                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.email_outlined, color: Colors.black,),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 3.0
                      ),
                    ),
                     labelText: "Email",
                     hintText: "abc@gmail.com",
                     labelStyle: const TextStyle(
                       fontSize: 30.0,
                       color: Colors.black
                     ),
                     enabledBorder:  OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20.0),
                       borderSide: const BorderSide(
                         color: Colors.black,
                         width: 3.0,
                       ),
                     ),
                   ),

                   validator: (value){
                     if(value!= null){
                     if(value.isEmpty){
                       return "Required";
                     }else{
                       return null;
                     }}
                   },
                   keyboardType: TextInputType.emailAddress,
                   controller: email,
                 ),
                 const SizedBox(
                   height: 20.0,
                 ),
                 TextFormField(

                   //password TextFormField


                   validator: (value){
                     if(value != null){
                       if(value.isEmpty){
                         return "Required";
                       }else{
                         return null;
                       }
                     }
                   },
                   decoration: InputDecoration(
                     prefixIcon: Icon(Icons.password, color: Colors.black,),
                     focusedBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20.0),
                       borderSide: const BorderSide(
                           color: Colors.black,
                           width: 3.0
                       ),
                     ),
                     labelText: "Password",
                     hintText: "password",
                     labelStyle: const TextStyle(
                         fontSize: 30.0,
                         color: Colors.black
                     ),

                     enabledBorder:  OutlineInputBorder(
                       borderRadius: BorderRadius.circular(20.0),
                       borderSide: const BorderSide(
                         color: Colors.black,
                         width: 3.0,
                       ),
                     ),
                   ),
                   obscureText: true,
                   controller: pass,
                 ),
               ],
             ),
           )),
           SizedBox(
             height: 30.0,
           ),
           SizedBox(

             // This SizedBoxed act as a containner for the submit button.

             height: MediaQuery.of(context).size.height/15,
             width: MediaQuery.of(context).size.width/1.8,
             child: TextButton(

               //The submit Button

               onPressed:(){
                 validatee;
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email ${email.text} Password ${pass.text}")));
               }  ,
               child: const Text(
                 "Log In",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 25
               ),
               ),
               style: TextButton.styleFrom(

                 primary: Colors.white,
                 elevation: 5,
                 shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                 backgroundColor: Colors.black,
                 onSurface: Colors.grey,
               ),
             ),
           ),
           const SizedBox(
             height: 30.0,
           ),
           const Text(
             "Don't have account? signIn",
             style: TextStyle(
               decoration: TextDecoration.underline,
               color: Colors.black,
               fontSize: 35
             ),

           ),

         ],
       ),
      )
    );
  }
}

class BackgroundClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-40);
    path.quadraticBezierTo(size.width / 4, size.height,
        size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
     return true;
  }
}

