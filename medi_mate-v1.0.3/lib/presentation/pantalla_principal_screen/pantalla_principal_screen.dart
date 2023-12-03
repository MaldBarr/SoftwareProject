import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:medi_mate/core/app_export.dart';

class PantallaPrincipalScreen extends StatelessWidget {
  const PantallaPrincipalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lightBlue50,
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBg852x381,
                      height: 852.v,
                      width: 381.h,
                      radius: BorderRadius.circular(30.h),
                      alignment: Alignment.centerLeft),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 11.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.v),
                                SizedBox(
                                    height: 626.v,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 28.v),
                                                  decoration: AppDecoration
                                                      .fillLightBlueA
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder33),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        _buildFileStack(
                                                            context),
                                                        SizedBox(height: 34.v),
                                                        _buildCalendarRow(
                                                            context),
                                                        SizedBox(height: 3.v)
                                                      ]))),
                                          _buildTopBarColumn(context)
                                        ]))
                              ])))
                ])),
            bottomNavigationBar: _buildBottomMenuColumn(context)));
  }

  /// Section Widget
  Widget _buildFileStack(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h, right: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 175.v,
              width: 152.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: 148.v,
                        width: 152.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 22.h, vertical: 15.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder40),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFile11259951,
                            height: 118.v,
                            width: 107.h,
                            alignment: Alignment.center,
                            onTap: () {
                              onTapImgFile(context);
                            }))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        Text("Recordatorio", style: theme.textTheme.titleLarge))
              ])),
          SizedBox(
              height: 175.v,
              width: 152.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: 148.v,
                        width: 152.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.h, vertical: 15.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder40),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgDocument7769992,
                            height: 118.v,
                            width: 112.h,
                            alignment: Alignment.center,
                            onTap: () {
                              onTapImgDocument(context);
                            }))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Receta Médica",
                        style: theme.textTheme.titleLarge))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCalendarRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 176.v,
              width: 152.h,
              margin: EdgeInsets.only(bottom: 1.v),
              child: Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        height: 149.v,
                        width: 152.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 14.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder40),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgCalendar661553,
                            height: 114.adaptSize,
                            width: 114.adaptSize,
                            alignment: Alignment.bottomLeft))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child:
                        Text("Calendario", style: theme.textTheme.titleLarge))
              ])),
          Column(children: [
            Container(
                height: 149.v,
                width: 152.h,
                padding: EdgeInsets.all(15.h),
                decoration: AppDecoration.fillOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
                child: CustomImageView(
                    imagePath: ImageConstant.imgInvoice1122042,
                    height: 117.v,
                    width: 121.h,
                    alignment: Alignment.center)),
            SizedBox(height: 1.v),
            Text("Registro Paciente", style: theme.textTheme.titleLarge)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildTopBarColumn(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.all(30.h),
            decoration: AppDecoration.outlineSecondaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder61),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoTransparentPng59x329,
                height: 59.v,
                width: 329.h)));
  }

  /// Section Widget
  Widget _buildBottomMenuColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 80.h, right: 95.h, bottom: 11.v),
        decoration: AppDecoration.outlineSecondaryContainer1,
        child: Container(
            decoration: AppDecoration.outlineSecondaryContainer1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(
                            height: 72.v,
                            width: 78.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 72.v,
                                      width: 78.h,
                                      decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer,
                                          borderRadius:
                                              BorderRadius.circular(39.h),
                                          boxShadow: [
                                            BoxShadow(
                                                color: appTheme.black900
                                                    .withOpacity(0.25),
                                                spreadRadius: 2.h,
                                                blurRadius: 2.h,
                                                offset: Offset(0, 4))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgUser4562831,
                                  height: 52.adaptSize,
                                  width: 52.adaptSize,
                                  alignment: Alignment.center)
                            ])),
                        Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: Text("Cuenta",
                                style: theme.textTheme.titleLarge))
                      ])),
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                        height: 72.v,
                        width: 78.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.h, vertical: 3.v),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: fs.Svg(ImageConstant.imgGroup8),
                                fit: BoxFit.cover)),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgSettings3524636,
                            height: 65.adaptSize,
                            width: 65.adaptSize,
                            alignment: Alignment.center)),
                    Padding(
                        padding: EdgeInsets.only(top: 8.v),
                        child:
                            Text("Ajustes", style: theme.textTheme.titleLarge))
                  ])
                ])));
  }

  /// Navigates to the recordatorioScreen when the action is triggered.
  onTapImgFile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recordatorioScreen);
  }

  /// Navigates to the recetaMDicaScreen when the action is triggered.
  onTapImgDocument(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recetaMDicaScreen);
  }
}
