import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fireprac/pages/home.dart';
import 'package:fireprac/pages/notification.dart';
import 'package:fireprac/pages/storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print(
      '============================Notification data (Background)=======================');
  print('Title: ' + message.notification.title);
  print('Body: ' + message.notification.body);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotificationTestPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _teEmailController = TextEditingController();
  final TextEditingController _tePasswordController = TextEditingController();
  final TextEditingController _teOTPController = TextEditingController();

  _signUpUser(String email, String pass) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: pass);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  _singInUser(String email, String pass) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<UserCredential> _signInbyGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  _signInbyPhone() async {
    await auth.verifyPhoneNumber(
      phoneNumber: '+8801700547406',
      timeout: Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        var result = await auth.signInWithCredential(credential);
        User user = result.user;
        if (user != null) {
          print('Auto sign in complete');
        } else {
          print('Auto sign in failed');
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        print('Error: $e');
      },
      codeSent: (String verificationId, int resendToken) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text('Please enter the OTP'),
              content: Column(
                children: [
                  TextField(
                    controller: _teOTPController,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        var theCode = _teOTPController.text;
                        PhoneAuthCredential phoneAuthCredential =
                            PhoneAuthProvider.credential(
                                verificationId: verificationId,
                                smsCode: theCode);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(phoneAuthCredential);
                      },
                      child: Text('VERIFY'))
                ],
              ),
            );
          },
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen(
      (User user) {
        if (user == null) {
          print('User is currently signed out!');
        } else {
          print('User is signed in!');
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => FbStorage()),
              (route) => false);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(18),
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _teEmailController,
                maxLength: null,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _tePasswordController,
                obscureText: true,
                maxLength: null,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        _signUpUser(_teEmailController.text,
                            _tePasswordController.text);
                      },
                      child: Text('REGISTER')),
                  SizedBox(width: 8),
                  ElevatedButton(
                      onPressed: () {
                        _singInUser(_teEmailController.text,
                            _tePasswordController.text);
                      },
                      child: Text('LOG IN'))
                ],
              ),
              SizedBox(width: 8),
              ElevatedButton(
                  onPressed: _signInbyGoogle,
                  child: Text('Sign in with Google')),
              SizedBox(width: 8),
              ElevatedButton(
                  onPressed: _signInbyPhone, child: Text('Sign in with Phone')),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: Text('Verify phone'))
            ],
          ),
        ),
      ),
    );
  }
}
