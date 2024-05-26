///Endpoints for API Calls
class ApiEndPoints {

  ///
  static String get getOtp => 'User/get_otp';


}

///
enum CustomBaseUrls {
  // Test
  // baseUrl("http://96.9.130.101:9010/api/"),
  // storageUrl("http://96.9.130.101:9010/uploads/");

  ///UAT
  baseUrl('http://96.9.130.101:9015/api/'),
  ///Storage URL
  storageUrl('http://96.9.130.101:9015/api/uploads');

  const CustomBaseUrls(this.url);
  ///
  final String url;
}