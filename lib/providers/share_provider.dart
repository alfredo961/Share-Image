import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

class ShareProvider with ChangeNotifier {
  String _title = 'Soul';
  String _image = 'https://i.blogs.es/ae3653/1120945/450_1000.jpg';
  String _link = 'https://stamp-social.com/dl/B3qN5H9XK6gwoy8J9';

  String get title => _title;
  set title(String newTexto) {
    _title = newTexto;
    notifyListeners();
  }

  String get image => _image;
  set image(String newImage) {
    _title = newImage;
    notifyListeners();
  }

  String get link => _link;
  set link(String newEnlace) {
    _link = newEnlace;
    notifyListeners();
  }

  Future<void> sharePost() async {
    String subject = '$title on Stamp';
    var request = await HttpClient().getUrl(Uri.parse(image));
    var response = await request.close();
    Uint8List bytes = await consolidateHttpClientResponseBytes(response);

    WcFlutterShare.share(
        text: '$subject\n$link',
        subject: subject,
        fileName: 'share.jpeg',
        sharePopupTitle: title,
        mimeType: "image/jpeg",
        bytesOfFile: bytes);

    notifyListeners();
  }
}
