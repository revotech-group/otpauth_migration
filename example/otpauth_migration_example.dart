// ignore_for_file: avoid_print
// @dart = 2.3
library example;

import 'package:otpauth_migration/otpauth_migration.dart';

void main() {
  final otpAuthParser = OtpAuthMigration();

  List<String> uris = otpAuthParser.decode(
      "otpauth-migration://offline?data=ChAKASUSBU1laGRpIAEoATACChIKA2EONBIFbWVoZGkgASgBMAIKKwoPHf//y0j53f//j3X/////EgpBQ01FIENvOlZnGgZBbWF6b24gASgBMAIQAhgBIAA%3D",
      debug: true);
  print(uris);

  print("*****************");

  List<String> moreURIs = otpAuthParser.decode(
      "otpauth-migration://offline?data=CjEKCkhlbGxvId6tvu8SGEV4YW1wbGU6YWxpY2VAZ29vZ2xlLmNvbRoHRXhhbXBsZTAC", debug: true);
  print(moreURIs);

  print("*****************");

  List<String> testList = [
    "otpauth://totp/ACME%20Co:john.doe@example.com?secret=HXDMVJECJJWSRB3HWIZR4IFUGFTMXBOZ&issuer=ACME+Co",
    "otpauth://totp/Example:alice@google.com?secret=JBSWY3DPEHPK3PXP&issuer=Example"
  ];

  String uri = otpAuthParser.encode(testList, debug: true);
  print(uri);
}
