import 'package:delli/pages/home/home_page.dart';
import 'package:delli/pages/login/login_choice_page.dart';
import 'package:delli/pages/login/login_email_page.dart';
import 'package:delli/pages/sign_up/sign_up_agreement_page.dart';
import 'package:delli/pages/sign_up/sign_up_email_check_page.dart';
import 'package:delli/pages/sign_up/sign_up_email_passwd_page.dart';
import 'package:delli/pages/sign_up/sign_up_finished_page.dart';
import 'package:delli/pages/sign_up/sign_up_nickname_setup_page.dart';
import 'package:delli/pages/sign_up/sign_up_phone_check_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const HomePage();
      },
      routes: [
        GoRoute(
          path: "login_choice",
          builder: (context, state) {
            return const LoginChoicePage();
          },
        ),
        GoRoute(
          path: "login_email",
          builder: (context, state) {
            return const LoginEmailPage();
          },
        ),
        GoRoute(
          path: "sign_up",
          builder: (context, state) {
            return const SignUpAgreementPage();
          },
          routes: [
            GoRoute(
              path: "email_password",
              builder: (context, state) {
                return const SignUpEmailPasswdPage();
              },
            ),
            GoRoute(
              path: "email_check",
              builder: (context, state) {
                return const SignUpEmailCheckPage();
              },
            ),
            GoRoute(
              path: "phone_check",
              builder: (context, state) {
                return const SignUpPhoneCheckPage();
              },
            ),
            GoRoute(
              path: "nickname_setup",
              builder: (context, state) {
                return const SignUpNicknameSetupPage();
              },
            ),
            GoRoute(
              path: "finished",
              builder: (context, state) {
                return const SignUpFinishedPage();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
