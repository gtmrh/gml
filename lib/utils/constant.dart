// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class Constants {
  String KeyPassword = "gtm@22";
  String SPLASH_SCREEN = 'SPLASH_SCREEN';
  String HOME_SCREEN = 'HOME_SCREEN';

  static const List<String> MONTHS = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  static const List<String> YEARS = [
    '2022',
    '2023',
    '2024',
    '2025',
    '2026',
    '2027',
    '2028',
    '2029',
    '2030',
    '2031',
    '2032',
    '2033'
  ];

  static const String tnc =
      "https://pages.flycricket.io/gyanpeeth/privacy.html";
  static const String aboutus = 'https://gautamtech.com/about-us';
  static const String contactus = 'https://gautamtech.com/contact';

  static const String ClgFile = 'ClgFile';

  static const String ClgKey = 'ClgName';

  static const String MasterAdminLogin = '/master';

  static const String InstituteLogin = '/admin';

  static const String EmployeeLogin = '/employee';

  // static const String Base_Url = 'http://192.168.29.204';
  static const String Base_Url = 'https://gautamtech.com';

  static const String AppConfig = '/app_installs/Api/Gyanpeeth/installs/';

  // static const String Img_Url = "http://192.168.29.204";

  static const String Img_Url = "http://gautamtech.com/appinstalls";

  static const String Login = "Api/Login/login/";

  static const String StaffLogin = "Api/Emplogin/login";

  static const String GetAttend = "Api/Attendance/attendance/";

  static const String GetStudents = 'Api/Student/student/';

  static const String GetLeaves = "Api/Attendance/leaveapply/";

  static const String GetSyllabus = "Api/Acadmic/syllabus/";

  static const String url = "http://192.168.29.204Api/Login/login/";

  final int timeOut = 50;

  static const String download_baseurl = "http://192.168.29.204/gyanpeeth";

  static const String GetBooks = "Api/Book/book/";

  static const String IssueBook = "Api/Book/bookrequest/";

  static const String EVENTS = "Api/Annoucement/event/";

  static const String NOTICES = "Api/Annoucement/notice/";

  static const String HOLIDAYS = "Api/Annoucement/holiday/";

  static const String HostelList = "Api/Hostal/hostal";
  static const String HostelCat = "Api/Hostal/hostalcategory";
  static const String HostelMember = "Api/Hostal/hostalmember";
  static const String HostelNotFoundMsg =
      "You don't have any hostel.\nKindly requset for hostel from the list below";

  static const String RequsetHostel = "Api/Hostal/hostalrequest";

  static const String TransportList = "Api/Transport/transport";

  static const String TransportMember = "Api/Transport/studenttransport/";
  static const String TransportNotFoundMsg =
      "You don't have any tranport service.\nKindly requset for tranport service from the list below";

  static const String RequestTransport = "Api/Transport/transportrequest";

  static const String ExamList = "Api/Exam/assignexam";
  static const String ExamShed = "Api/Exam/examsechdule";
  static const String CourseList = "Api/Acadmic/course/";
  static const String Invoice = "Api/Account/invoice/";
  static const String FeeInst = "Api/Account/feeinstallment/";

  static const String PaymentHist = "Api/Account/feepayment/";

  static const String ClgDetails = "Api/Login/institute/";

  static const String feedetailsTxt = "Fee Details";

  static const String FeesType = "Api/Account/feetype/";
}
