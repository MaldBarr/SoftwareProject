import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_elevated_button.dart';

class RecetaMDicaScreen extends StatelessWidget {
  const RecetaMDicaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgRecordatorio),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 17.v),
                      _buildBtnLogo(context),
                      SizedBox(height: 46.v),
                      SizedBox(
                          height: 698.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 663.v,
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.h, vertical: 28.v),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  height: 80.v,
                                                  width: 91.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 5.v),
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .onPrimaryContainer,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              45.h)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAdd11259791,
                                              height: 91.adaptSize,
                                              width: 91.adaptSize,
                                              alignment: Alignment.bottomLeft,
                                              onTap: () {
                                                agregarReceta(context);
                                              })
                                        ]))),
                            CustomElevatedButton(
                                width: double.maxFinite,
                                text: "Recetas médicas",
                                buttonStyle: CustomButtonStyles.fillPrimary,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeBlack900,
                                alignment: Alignment.topCenter)
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildBtnLogo(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapBtnLogo(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder45),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoTransparentPng59x329,
                height: 59.v,
                width: 329.h)));
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapBtnLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the agregarRecetaScreen when the action is triggered.
  agregarReceta(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.agregarRecetaScreen);
  }
}
