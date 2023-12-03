import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_elevated_button.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 42.h, vertical: 33.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup1),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                CustomElevatedButton(
                                    height: 58.v,
                                    text: "Iniciar Sesion",
                                    buttonStyle:
                                        CustomButtonStyles.fillBlueGray,
                                    buttonTextStyle:
                                        theme.textTheme.titleMedium!,
                                    onPressed: () {
                                      onTapIniciarSesion(context);
                                    }),
                                SizedBox(height: 31.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtRegistrarse(context);
                                    },
                                    child: Text("Registrarse",
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimaryContainer
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline)))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogoTransparentPng,
                      height: 83.v,
                      width: 393.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 186.v))
                ]))));
  }

  /// Navigates to the iniciarSesionScreen when the action is triggered.
  onTapIniciarSesion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iniciarSesionScreen);
  }

  /// Navigates to the registrarseScreen when the action is triggered.
  onTapTxtRegistrarse(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrarseScreen);
  }
}
