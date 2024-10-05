import 'dart:developer';

class ApiConstants {
  static const String baseUrl = "https://zippyapp.site/api";
  static const String login = "/login";
  static const String register = "/register";
  static const String getCategory = "/fetch-category-list";
  static const String banners = "/banners/get-banners";
  static const String service = "/services/get-services";
  static const String homeDetail = "/fetch-home-details";
  static const String userData = "/fetch-user-data";
  static const String updateProfile = "/update-user-profile";
  static const String getBookings = "/bookings/get-bookings-by-status";
  static const String changePassword = "/change-password";
  static const String bookService = "/bookings/book-service";
  static const String favorite = "/favourite/fetch-favourite";
  static const String getCategoryDetail = "/services/get-service-by-status";
  static const String fetchAddress = "/address/fetch-address";
  static const String forgotPassword = "/send-otp-mail";
  static const String verifyOtp = "/verify-otp";
  static const String getProvider = "/providers/get-providers-by-category";
  static const String getServiceProvider = "/services/get-service-by-provider-id";
  static const String getServiceById = "/services/get-service-by-id";
  static const String getNotification = "/notification/fetch-notifications";
  static const String getChatList = "/chat/fetch-chat-list-user";
  static const String markNotification = "/notification/mark-as-read-notification";
  static const String addFavorite = "/favourite/add-favourite";
  static const String removeFavorite = "/favourite/remove-favourite";
  static const String userAuth = "/pusher/user-auth";
  static const String getMessages = "/chat/get-messages";
  static const String sendMessage = "/chat/send-message";

  static String getParamsFromBody(Map<String, dynamic>? body) {
    String params = '?';
    for (var i = 0; i < body!.keys.length; i++) {
      params += '${List.from(body.keys)[i]}=${List.from(body.values)[i]}';
      if (i != body.keys.length - 1) {
        params += '&';
      }
    }
    log(params);
    return params;
  }
}
