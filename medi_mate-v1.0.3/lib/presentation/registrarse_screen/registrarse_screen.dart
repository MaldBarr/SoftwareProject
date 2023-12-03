import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_elevated_button.dart';
import 'package:medi_mate/widgets/custom_text_form_field.dart';

class RegistrarseScreen extends StatelessWidget {
  RegistrarseScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController botonIniciarSesionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: mediaQueryData.size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBg852x392,
                height: 852.v,
                width: 392.h,
                radius: BorderRadius.circular(
                  30.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Container(
                    height: 584.v,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 72.v),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 41.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomTextFormField(
                                      width: 148.h,
                                      controller: botonIniciarSesionController,
                                      hintText: "Iniciar sesion",
                                      textInputAction: TextInputAction.done,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .fillSecondaryContainer,
                                      fillColor:
                                          theme.colorScheme.secondaryContainer,
                                    ),
                                    Container(
                                      width: 157.h,
                                      margin: EdgeInsets.only(left: 2.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30.h,
                                        vertical: 21.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillOnError1.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder36,
                                      ),
                                      child: Text(
                                        "Registro",
                                        style: theme.textTheme.bodyLarge,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 21.v),
                                Container(
                                  width: 286.h,
                                  margin: EdgeInsets.only(
                                    left: 15.h,
                                    right: 9.h,
                                  ),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 9.h),
                                  decoration:
                                      AppDecoration.fillOnError.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder40,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 82.h),
                                        child: Text(
                                          "Registrarse",
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                      ),
                                      SizedBox(height: 50.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: Text(
                                          "Correo",
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      Divider(
                                        endIndent: 15.h,
                                      ),
                                      SizedBox(height: 34.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 3.h),
                                        child: Text(
                                          "Contraseña",
                                          style: theme.textTheme.titleMedium,
                                        ),
                                      ),
                                      SizedBox(height: 83.v),
                                      Divider(
                                        indent: 3.h,
                                        endIndent: 12.h,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 45.v),
                                CustomElevatedButton(
                                  height: 58.v,
                                  text: "Registrarse",
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLogoTransparentPng1,
                          height: 83.v,
                          width: 393.h,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
