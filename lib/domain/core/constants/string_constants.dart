import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppConstants {
  static const String appName = 'golfstake';
  static const String orText = 'or';
}

class ErrorConstants {
  static String requiredField = 'Required';
  static String invalidEmail = 'Invalid Email';
  static String emailExist = 'Email already exists!';

  static String genericError = 'Something went wrong!';

  static String authFailed = 'Authentication Failed';

  static String userDisabled = 'User is disabled';
  static String userNotFound = 'User not found';
  static String logoutFailed = 'Failed to logout. Please try again!';

  static String wrongConfirmPassword = 'Password didn\'t match';
  static String minOneDeviceConfig = 'Minimum one device need to configure.';

  static String weakPassword = 'Weak password';
  static String invalidReferralCode = 'Invalid referral code!';
  static String notificationBoxEmpty = 'Notifications box is empty !';

  static String failedToUpdate = 'Failed to update, Please try again!';
  static String failedToSendEmail = 'Failed to send email, Please try again!';
  static String failedToUpload = 'Failed to upload, Please try again!';
  static String failedToUpdatePassword =
      'Failed to update password, Please try again!';
  static String failedToSchedule = 'Failed to schedule,Please try again!';

  static String failedToLoad = 'Failed to load, Please try again!';

  static String failedToFetchDevices = 'Failed to fetch devices!';
  static String failedToFetchDevice = 'Failed to fetch device!';
  static String fileNotSelected = 'File not Selected!';
  static String failedToLinkDevice = 'Failed to link device, Please try again!';
  static String failedToUnlinkDevice =
      'Failed to unlink device, Please try again!';

  static String failedToReset = 'Failed to reset, Please try again!';
  static String failedToReconfigure =
      'Failed to reconfigure, Please try again!';

  static String noCameraPermission = 'Camera permission not granted';
  static String roomNameRequired = 'Room name is required!';
  static String alreadyUptoDate = 'Already up to date!';
  static String roomsNotFound = 'Rooms not found !';

  static showToast(String errMsg, {Color? backgroundColor}) =>
      Fluttertoast.showToast(
        msg: errMsg,
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1,
        webPosition: 'center',
        gravity: ToastGravity.TOP,
        backgroundColor: backgroundColor ?? Colors.red,
        textColor: Colors.white,
        fontSize: 14,
      );
}

class AuthConstants {
  static String yourProfile = 'Your Profile';
  static String name = 'Name';
  static String emailAddress = 'Email Address';
  static String sendEmail = 'Send Email';
  static String weWillSendLink =
      'We will send you a link to reset your password on your registered email address.';
  static String hintTextEmail = 'xyz@xyz.com';
  static String hintTextUsername = 'John Wick';
  static String hintTextDOB = 'Select DOB';

  static String password = 'Password';
  static String confirmPassword = 'Confirm Password';
  static String login = 'Login';
  static String signUp = 'Sign Up';
  static String forgotPasswordQ = 'Forgot Password?';
  static String dateOfBirth = 'Date of Birth';
  static String min8characters = 'minimum 8 characters';
  static String newInIRA = 'New in iRA?';
  static String haveAReferralCode = 'Have a referral code?';
  static String enterReferralCode = 'Enter Referral Code';
  static String code = 'CODE';
  static String termsAndConditions =
      'By signing in to your account you accept our\n Terms & Conditions | Privacy Policy';
  static String forgotPassword = 'Forgot Password';
  static String pleaseCheckYourEmail = 'Please check your email';
}

class NavbarConstants {}

class OnboardingConstants {
  static const String next = 'Next';
  static const String getStarted = 'Get Started';

  static const String title1 = 'Participate in tournaments';
  static const String desc1 =
      'In morbi nisi nullam pellentesque. Libero mus dignissim dictum tortor, dignissim accumsan habitant dolor mattis. Lorem sit vitae etiam ut.';

  static const String title2 = 'Track Your Progress';
  static const String desc2 =
      'At quis vivamus pharetra habitasse sed donec orci auctor enim. Nulla ac habitasse ac, sed amet gravida justo, faucibus. Mollis nullam pulvinar risus arcu quis.';

  static const String title3 = 'Analyze scorecards';
  static const String desc3 =
      'Scelerisque in porta suspendisse aliquam cursus gravida sit sit at. Ut neque tortor porttitor placerat. A aliquam iaculis volutpat amet, nibh neque, gravida.';
}

class TournamentsConstants {
  static const String hey = 'Hey';
  static const String userName = 'John Doe';

  static const String active = 'ACTIVE';
  static const String past = 'PAST';

  static const String tournamentName = 'Rock the Block Tournament';
  static const String tournamentLocation = 'Country Club, California';
  static const String tournamentDate = 'Wed, 12th May - Fri, 14th May';

  static const String rank = 'Rank: #4';

  static const String tournaments = 'TOURNAMENTS';
  static const String playGame = 'PLAY GAME';
  static const String marketPlace = 'MARKETPLACE';
}

class TournamentTableConstants {
  static const String back = 'Back';
  static const String groupA = 'Group A';
  static const String rank = 'RANK';
  static const String player = 'PLAYER';
  static const String round = 'ROUND';
  static const String total = 'TOTAL';
  static const String playerName = 'Savannah Nguyen';
  static const String teamName = 'Vålerenga';
  static const String roundPlayed = '72';
  static const String totalPoints = '-4';
  static const String rankNo = '#1';

  //ModalBottomSheet
  static const String moreInfo = 'More Info';
  static const String details = 'DETAILS';
  static const String rounds = 'Rounds:';
  static const String roundsNo = ' 3';
  static const String hc = 'HC:';
  static const String hcNo = ' 15-18';
  static const String slope = 'Slope:';
  static const String slopeNo = ' 115-125';
  static const String rating = 'Rating:';
  static const String ratingNo = ' 71.5-72.6';
  static const String sponsors = 'SPONSORS';
}

class ScoreCardConstants {
  static const String qualifiers = 'Qualifiers';
  static const String round1 = 'Round 1';
  static const String hole = 'HOLE';
  static const String meters = 'METERS';
  static const String par = 'PAR';
  static const String hc = 'HC';
  static const String shots = 'SHOTS';
  static const String holenNo = '1';
  static const String metersNo = '200';
}

class NotificationConstants {
  static const String notifications = 'Notifications';
  static const String one = '1';
  static const String sponsorRequests = 'Sponsor Requests';
  static const String sponsorNotification = 'Approve or ignore requests';
  static const String tournamentNotification1 = 'Rock the Block';
  static const String tournamentNotificationDecs1 = ' tournament scheduled to';
  static const String tournamentNotificationDecs2 = 'start today.';
  static const String notificationDay1 = 'Today';
  static const String requests = 'Requests';
  static const String sponsorName = 'Nike Shoes';
  static const String sponsorMessage = 'wants to sponsor you';
  static const String accept = 'Accept';
  static const String decline = 'Decline';
}

class PlayConstants {
  static const String golfCourse = 'Golf Course';
  static const String selectGolfCourse = 'select a golf course';
  static const String tournament = 'Tournament';
  static const String selectTournament = 'select tournament';
  static const String startGame = 'Start Game';
  static const String connect = 'Connect';
  static const String game = 'GAME';
  static const String inProgress = 'IN PROGRESS';
  static const String endGame = 'End Game';
  static const String wearYourWristBand = 'Wear your wrist band';
}

class MarketplaceConstants {
  static const String tournament = 'Tournaments';
  static const String request = '+ Request';
  static const String buyNow = 'Buy Now';
  static const String filters = 'Filters';
  static const String mySponsors = 'My Sponsors';
  static const String winningPrice = 'Winning Price';
  static const String startDate = 'Start Date';
  static const String amount = 'Amount';
  static const String applyFilters = 'Apply Filters';
  static const String requestTournament = 'Request Tournament';
  static const String size = 'Size';
  static const String enterSize = 'Enter Size';
  static const String prize = 'Prize';
  static const String min = 'Min';
  static const String max = 'Max';
  static const String rating = 'Rating';
  static const String slope = 'Slope';
  static const String enterSlope = 'Enter Slope';
  static const String sendRequest = 'Send Request';
}

class UserConstants {
  static const String profile = 'PROFILE';
  static const String biometrics = 'BIOMETRICS';
  static const String golferData = 'GOLFER DATA';
  static const String golfCourse = 'GOLF COURSE';
  static const String username = 'Username';
  static const String userid = 'johndoe_99';
  static const String firstName = 'First Name';
  static const String firstNamevalue = 'John';
  static const String lastName = 'Last Name';
  static const String lastNamevalue = 'Doe';
  static const String dateOfBirth = 'Date of Birth';
  static const String dob = '11/08/1999';
  static const String nationality = 'Nationality';
  static const String nationalityCountry = 'American';
  static const String emailAddress = 'Email Address';
  static const String emailAddressValue = 'johndoe@example.com';
  static const String phoneNumber = 'Phone Number';
  static const String phoneNumberValue = '9998166349';
  static const String country = 'Country';
  static const String countryName = 'United States of America';
  static const String state = 'State';
  static const String stateName = 'New York';
  static const String city = 'City';
  static const String cityName = 'Manhattan';
  static const String address = 'Address';
  static const String addressValue = '3891 Ranchview Dr. Richardson';
  static const String zipCode = 'Zip Code';
  static const String zipCodeValue = '62639';
  static const String occupation = 'Occupation';
  static const String occupationValue = 'Product Designer';
  static const String company = 'Company';
  static const String companyName = 'Google LLC';
  static const String logout = 'Logout';
  static const String name = 'JOHN DOE';
  static const String hcpScore = 'HCP SCORE';
  static const String hcpScoreValue = '16';
  static const String averagescore = 'AVERAGE SCORE:';
  static const String averagescoreValue = '22';
  static const String roundsUnder60 = 'ROUNDS UNDER 60:';
  static const String roundsUnder60Value = '36';
  static const String allTimeBestScore = 'ALL TIME BEST SCORE:';
  static const String allTimeBestScoreValue = '09';
  static const String allTimeWorstScore = 'ALL TIME WORST SCORE:';
  static const String allTimeWorstScoreValue = '72';
  static const String stats = 'Stats';
  static const String gamesPlayed = 'GAMES PLAYED';
  static const String gamesPlayedValue = '40';
  static const String gamesWon = 'GAMES WON';
  static const String gamesWonValue = '28';
  static const String gamesLost = 'GAMES LOST';
  static const String gamesLostValue = '12';
  static const String mySponsors = 'My Sponsors';
}
