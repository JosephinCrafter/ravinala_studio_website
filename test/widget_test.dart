import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ravinala_studio_website/firebase_options.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> main() async {
  if (kIsWeb) {
    TestWidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);

    test('playing with firebase_auth', () {
      FirebaseAuth authInstance = FirebaseAuth.instance;
      print('The instance of firebase auth is ${authInstance}');
    });

    return;
  }

  print('The platfrom isn\'t web.');
}
