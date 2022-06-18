// ignore_for_file: prefer_final_fields

import 'package:gml/utils/constant.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  String _userToken = "UserToken";

  String _id = "Id";

  String _userName = "UserName";

  String _userMob = "UserMob";

  String _userEmail = "UserEmail";

  String _userPassword = "UserPas";
  String _userId = "UserId";
  String _userRole = "UserType";
  String _firstTime = "FirstTime";

  String _collegeId = "CollegeId";

  String _clgLogo = "CollegeLogo";

  String aff_no = "aff_no";
  String ins_name = "ins_name";
  String short_name = "short_name";
  String pri_name = "pri_name";
  String dri_name = "dri_name";
  String full_address = "full_address";
  String ins_code = "ins_code";

  String course_id = "courseId";
  String BaseUrl = "base_url";

  late SharedPreferences _sharedPreferences;

  getClgUrl() async {
    var box = await Hive.openBox(Constants.ClgFile);

    print(box.get(Constants.ClgKey));

    return box.get(Constants.ClgKey);
  }

  getLogged() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    bool? logged = _prefs.getBool(_firstTime);
    return logged;
  }

  setLogged(bool firstTime) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_firstTime, firstTime);
  }

  getLogo() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? clgLogo = _prefs.getString(_clgLogo);
    return clgLogo;
  }

  setLogo(String clgLogo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_clgLogo, clgLogo);
  }

  getBaseUrl() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? baseUrl = _prefs.getString(BaseUrl);
    return baseUrl;
  }

  setBaseUrl(String baseUrl) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(BaseUrl, baseUrl);
  }

  getAffNo() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? AffNo = _prefs.getString(aff_no);
    return AffNo;
  }

  setAffNo(String AffNo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(aff_no, AffNo);
  }

  getInsName() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? insName = _prefs.getString(ins_name);
    return insName;
  }

  setInsName(String insName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(ins_name, insName);
  }

  getShortName() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? shortName = _prefs.getString(short_name);
    return shortName;
  }

  setShortName(String shortName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(short_name, shortName);
  }

  getInsFullAddress() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? fullAddress = _prefs.getString(full_address);
    return fullAddress;
  }

  setInsFullAddress(String fullAddress) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(full_address, fullAddress);
  }

  getInsCode() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? courseId = _prefs.getString(course_id);
    return courseId;
  }

  setInsCode(String courseId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(course_id, courseId);
  }

  getCourseId() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? insCode = _prefs.getString(ins_code);
    return insCode;
  }

  setCourseId(String insCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(ins_code, insCode);
  }

  getRole() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userRole = _prefs.getString(_userRole);
    return userRole;
  }

  setRole(String userRole) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_userRole, userRole);
  }

  getToken() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userToken = _prefs.getString(_userToken);
    return userToken;
  }

  setToken(String userToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_userToken, userToken);
  }

  getId() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? id = _prefs.getString(_id);
    return id;
  }

  setId(String id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_collegeId, id);
  }

  getClgId() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userId = _prefs.getString(_collegeId);
    return userId;
  }

  setClgId(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_collegeId, userId);
  }

  getUserId() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userId = _prefs.getString(_userId);
    return userId;
  }

  setUserId(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_userId, userId);
  }

  getUserName() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userName = _prefs.getString(_userName);
    return userName;
  }

  setUserName(String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_userName, userName);
  }

  getUserMob() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userMob = _prefs.getString(_userMob);
    return userMob;
  }

  setUserMob(String userMob) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_userMob, userMob);
  }

  getUserEmail() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userEmail = _prefs.getString(_userEmail);
    return userEmail;
  }

  setUserEmail(String userEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_userEmail, userEmail);
  }

  getUserPassword() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String? userPassword = _prefs.getString(_userPassword);
    return userPassword;
  }

  setUserPassword(String userPassword) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_userPassword, userPassword);
  }

  clearSharedPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    // await preferences.r
  }
}
