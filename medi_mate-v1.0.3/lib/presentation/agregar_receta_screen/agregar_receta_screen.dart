import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_elevated_button.dart';
import 'package:medi_mate/widgets/custom_outlined_button.dart';
import 'package:medi_mate/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AgregarRecetaScreen extends StatelessWidget {
  AgregarRecetaScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController descriptionEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRecordatorio,
                      height: 852.v,
                      width: 393.h,
                      radius: BorderRadius.circular(30.h),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: 835.v,
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    _buildLogoButton(context),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: SizedBox(
                                            height: 663.v,
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width:
                                                              double.maxFinite,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      32.h,
                                                                  vertical:
                                                                      24.v),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        71.v,
                                                                    width: 69.h,
                                                                    margin: EdgeInsets.only(
                                                                        top: 544
                                                                            .v),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(height: 69.v, width: 66.h, decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer, borderRadius: BorderRadius.circular(34.h)))),
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgLeft12869971,
                                                                              height: 71.v,
                                                                              width: 69.h,
                                                                              alignment: Alignment.center,
                                                                              onTap: () {
                                                                                menu(context);
                                                                              })
                                                                        ])),
                                                                _buildSaveButton(
                                                                    context)
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .topCenter,
                                                      child: Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 65.v,
                                                                  right: 1.h),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      44.h,
                                                                  vertical:
                                                                      36.v),
                                                          decoration: AppDecoration
                                                              .fillLightBlueA
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder45),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 1
                                                                            .h),
                                                                    child: Text(
                                                                        "Nombre de receta",
                                                                        style: CustomTextStyles
                                                                            .titleLargeBlack900)),
                                                                SizedBox(
                                                                    height:
                                                                        7.v),
                                                                _buildEditText(
                                                                    context),
                                                                SizedBox(
                                                                    height:
                                                                        44.v),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            1.h,
                                                                        right: 31
                                                                            .h),
                                                                    child: Row(
                                                                        children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(top: 11.v, bottom: 13.v),
                                                                              child: Text("Seleccionar archivo", style: CustomTextStyles.titleLargeBlack900)),
                                                                          Container(
                                                                              height: 53.v,
                                                                              width: 73.h,
                                                                              margin: EdgeInsets.only(left: 27.h),
                                                                              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
                                                                              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder13),
                                                                              child: CustomImageView(imagePath: ImageConstant.imgAttach74278871, height: 49.adaptSize, width: 49.adaptSize, alignment: Alignment.centerRight))
                                                                        ])),
                                                                SizedBox(
                                                                    height:
                                                                        51.v),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 1
                                                                            .h),
                                                                    child: Text(
                                                                        "Descripción",
                                                                        style: CustomTextStyles
                                                                            .titleLargeBlack900)),
                                                                SizedBox(
                                                                    height:
                                                                        5.v),
                                                                _buildDescriptionEditText(
                                                                    context)
                                                              ])))
                                                ]))),
                                    _buildMedicalRecipesButton(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildLogoButton(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
            onTap: () {
              onTapLogoButton(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 16.v),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder45),
                child: CustomImageView(
                    imagePath: ImageConstant.imgLogoTransparentPng59x329,
                    height: 59.v,
                    width: 329.h))));
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 247.h,
        text: "Guardar",
        margin: EdgeInsets.only(top: 554.v, bottom: 9.v),
        onPressed: () {
          onTapSaveButton(context);
        });
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: CustomTextFormField(
            controller: editTextController,
            borderDecoration:
                TextFormFieldStyleHelper.fillOnPrimaryContainerTL25));
  }

  /// Section Widget
  Widget _buildDescriptionEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: CustomTextFormField(
            controller: descriptionEditTextController,
            textInputAction: TextInputAction.done,
            borderDecoration:
                TextFormFieldStyleHelper.fillOnPrimaryContainerTL25));
  }

  /// Section Widget
  Widget _buildMedicalRecipesButton(BuildContext context) {
    return CustomElevatedButton(
        width: double.maxFinite,
        text: "Recetas médicas",
        margin: EdgeInsets.only(top: 137.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleLargeBlack900,
        alignment: Alignment.topCenter);
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapLogoButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  menu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the recetaMDicaScreen when the action is triggered.
  onTapSaveButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recetaMDicaScreen);
  }
}
