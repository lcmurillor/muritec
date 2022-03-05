import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class FirebaseImg {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  String? _url;
  Future<void> downloadURL() async {
    _url = await firebase_storage.FirebaseStorage.instance
        .ref('img2.jpeg')
        .getDownloadURL();
    // Within your widgets:
    // Image.network(downloadURL);
  }

  String get url {
    downloadURL();
    return _url!;
  }
}
