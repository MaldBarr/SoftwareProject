import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_elevated_button.dart';

class AgregarRecordatorioScreen extends StatelessWidget {
  const AgregarRecordatorioScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgAgregarRecordatorio),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 20.v),
                      _buildBtnLogoSection(context),
                      SizedBox(height: 33.v),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.circleBorder36),
                          child: Column(children: [
                            _buildTiposDeRecordatorioSection(context),
                            SizedBox(height: 54.v),
                            _buildBodySection(context),
                            SizedBox(height: 62.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 86.v,
                                    width: 87.h,
                                    margin: EdgeInsets.only(left: 23.h),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 83.adaptSize,
                                                  width: 83.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .onPrimaryContainer,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              41.h)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLeft12869971,
                                              height: 86.v,
                                              width: 87.h,
                                              alignment: Alignment.center,
                                              onTap: () {
                                                menu(context);
                                              })
                                        ]))),
                            SizedBox(height: 25.v)
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildBtnLogoSection(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapBtnLogoSection(context);
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder45),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoTransparentPng59x329,
                height: 59.v,
                width: 329.h)));
  }

  /// Section Widget
  Widget _buildTiposDeRecordatorioSection(BuildContext context) {
    return CustomElevatedButton(
        height: 81.v,
        text: "Tipos de recordatorio",
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleLargePrimaryContainer);
  }

  /// Section Widget
  Widget _buildHorariosDeMedicacionSection(BuildContext context) {
    return CustomElevatedButton(
        height: 61.v,
        text: "Horarios de medicación",
        buttonTextStyle: theme.textTheme.titleLarge!,
        onPressed: () {
          onTapHorariosDeMedicacionSection(context);
        });
  }

  /// Section Widget
  Widget _buildCitasMedicasSection(BuildContext context) {
    return CustomElevatedButton(
        height: 61.v,
        text: "Citas médicas",
        buttonTextStyle: theme.textTheme.titleLarge!,
        onPressed: () {
          onTapCitasMedicasSection(context);
        });
  }

  /// Section Widget
  Widget _buildOtroSection(BuildContext context) {
    return CustomElevatedButton(
        height: 61.v,
        text: "Otro",
        buttonTextStyle: CustomTextStyles.titleLargePrimaryContainer,
        onPressed: () {
          onTapOtroSection(context);
        });
  }

  /// Section Widget
  Widget _buildBodySection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 40.v),
        decoration: AppDecoration.fillLightBlueA
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder61),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildHorariosDeMedicacionSection(context),
              SizedBox(height: 65.v),
              _buildCitasMedicasSection(context),
              SizedBox(height: 65.v),
              _buildOtroSection(context),
              SizedBox(height: 3.v)
            ]));
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapBtnLogoSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the agregarHorarioMedicaciNScreen when the action is triggered.
  onTapHorariosDeMedicacionSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.agregarHorarioMedicaciNScreen);
  }

  /// Navigates to the agregarCitasMedicaScreen when the action is triggered.
  onTapCitasMedicasSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.agregarCitasMedicaScreen);
  }

  /// Navigates to the agregarOtroScreen when the action is triggered.
  onTapOtroSection(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.agregarOtroScreen);
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  menu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }
}
