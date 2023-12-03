import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_outlined_button.dart';
import 'package:medi_mate/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AgregarOtroScreen extends StatelessWidget {
  AgregarOtroScreen({Key? key}) : super(key: key);

  TextEditingController reminderEditTextController = TextEditingController();

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController reasonEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgAgregarHorario),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 16.v),
                      _buildLogoButton(context),
                      SizedBox(height: 37.v),
                      SizedBox(
                          height: 708.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 25.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 24.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 23.h,
                                                  vertical: 29.v),
                                              decoration: AppDecoration
                                                  .fillLightBlueA
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder45),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 19.h,
                                                                right: 75.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text("Dia",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge),
                                                              Text("Mes",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge),
                                                              Text("Año",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge)
                                                            ])),
                                                    SizedBox(height: 5.v),
                                                    _buildReminderRow(context),
                                                    SizedBox(height: 21.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 19.h),
                                                        child: Row(children: [
                                                          Text("Hora",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          46.h),
                                                              child: Text(
                                                                  "Minutos",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge))
                                                        ])),
                                                    SizedBox(height: 4.v),
                                                    Row(children: [
                                                      Container(
                                                          height: 45.v,
                                                          width: 78.h,
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onPrimaryContainer,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          21.h))),
                                                      Container(
                                                          height: 45.v,
                                                          width: 78.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 21.h),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onPrimaryContainer,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          21.h)))
                                                    ]),
                                                    SizedBox(height: 6.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 19.h),
                                                        child: Text(
                                                            "Nombre recordatorio",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    SizedBox(height: 4.v),
                                                    _buildNameEditText(context),
                                                    SizedBox(height: 7.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 19.h),
                                                        child: Text(
                                                            "Razon del recordatorio",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    SizedBox(height: 3.v),
                                                    _buildReasonEditText(
                                                        context),
                                                    SizedBox(height: 57.v)
                                                  ])),
                                          SizedBox(height: 18.v),
                                          _buildButtonRow(context)
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 20.v),
                                    decoration: AppDecoration.fillPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder36),
                                    child: Text("Ingresar los datos",
                                        style: theme.textTheme.titleLarge)))
                          ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildLogoButton(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapLogoButton(context);
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

  /// Section Widget
  Widget _buildReminderEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: CustomTextFormField(
            width: 103.h, controller: reminderEditTextController));
  }

  /// Section Widget
  Widget _buildReminderRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 32.h),
        child: Row(children: [
          Container(
              height: 50.v,
              width: 84.h,
              decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(21.h))),
          Container(
              height: 50.v,
              width: 103.h,
              margin: EdgeInsets.only(left: 11.h),
              decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(21.h))),
          _buildReminderEditText(context)
        ]));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 32.h),
        child: CustomTextFormField(controller: nameEditTextController));
  }

  /// Section Widget
  Widget _buildReasonEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 32.h),
        child: CustomTextFormField(
            controller: reasonEditTextController,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "Guardar",
            margin: EdgeInsets.only(left: 21.h, top: 6.v, bottom: 6.v)));
  }

  /// Section Widget
  Widget _buildButtonRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 64.v,
              width: 61.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 62.v,
                        width: 58.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(31.h)))),
                CustomImageView(
                    imagePath: ImageConstant.imgLeft12869971,
                    height: 64.v,
                    width: 61.h,
                    alignment: Alignment.center,
                    onTap: () {
                      menu(context);
                    })
              ])),
          _buildSaveButton(context)
        ]));
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapLogoButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  menu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }
}
