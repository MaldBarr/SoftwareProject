import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_elevated_button.dart';

class IniciarSesionScreen extends StatelessWidget {
  const IniciarSesionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBg,
                      height: 852.v,
                      width: 392.h,
                      radius: BorderRadius.circular(30.h),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: Container(
                              height: 584.v,
                              width: double.maxFinite,
                              margin: EdgeInsets.only(bottom: 73.v),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: 438.v,
                                            width: 327.h,
                                            margin: EdgeInsets.only(left: 24.h),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  CustomElevatedButton(
                                                      height: 57.v,
                                                      width: 327.h,
                                                      text: "Iniciar Sesion",
                                                      onPressed: () {
                                                        onTapIniciarSesion(
                                                            context);
                                                      },
                                                      alignment: Alignment
                                                          .bottomCenter),
                                                  Align(
                                                      alignment: Alignment
                                                          .centerLeft,
                                                      child: Container(
                                                          margin: EdgeInsets.only(
                                                              left: 15.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      5.h,
                                                                  vertical:
                                                                      75.v),
                                                          decoration: AppDecoration
                                                              .fillOnError
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder40),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 11
                                                                            .h),
                                                                    child: Text(
                                                                        "Correo",
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleMedium)),
                                                                Divider(
                                                                    indent: 2.h,
                                                                    endIndent:
                                                                        3.h),
                                                                SizedBox(
                                                                    height:
                                                                        34.v),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 5
                                                                            .h),
                                                                    child: Text(
                                                                        "Contraseña",
                                                                        style: theme
                                                                            .textTheme
                                                                            .titleMedium)),
                                                                SizedBox(
                                                                    height:
                                                                        7.v),
                                                                Divider(
                                                                    indent: 5.h)
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 113.h,
                                                                  top: 92.v),
                                                          child: Text(
                                                              "Bienvenido",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge))),
                                                  _buildSixtySix(context)
                                                ]))),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgLogoTransparentPng83x393,
                                        height: 83.v,
                                        width: 393.h,
                                        alignment: Alignment.topCenter)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSixtySix(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomElevatedButton(
                  height: 71.v,
                  width: 166.h,
                  text: "Iniciar sesion",
                  buttonStyle: CustomButtonStyles.fillOnError),
              CustomElevatedButton(
                  height: 71.v,
                  width: 157.h,
                  text: "Registro",
                  buttonStyle: CustomButtonStyles.fillSecondaryContainer,
                  onPressed: () {
                    onTapRegistro(context);
                  })
            ]));
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapIniciarSesion(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the registrarseScreen when the action is triggered.
  onTapRegistro(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrarseScreen);
  }
}
