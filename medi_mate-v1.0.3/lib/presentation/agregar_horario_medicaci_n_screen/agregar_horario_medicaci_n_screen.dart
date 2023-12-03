import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';
import 'package:medi_mate/widgets/custom_outlined_button.dart';
import 'package:medi_mate/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AgregarHorarioMedicaciNScreen extends StatelessWidget {
  AgregarHorarioMedicaciNScreen({Key? key}) : super(key: key);

  TextEditingController nombreMedicamentoController = TextEditingController();

  TextEditingController cantidadController = TextEditingController();

  TextEditingController porciNController = TextEditingController();

  TextEditingController horaController = TextEditingController();

  TextEditingController minutosController = TextEditingController();

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
                      _buildBtnLogo(context),
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
                                        EdgeInsets.symmetric(vertical: 26.v),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 25.v),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 44.h,
                                                  vertical: 15.v),
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text(
                                                            "Nombre medicamento",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    _buildNombreMedicamento(
                                                        context),
                                                    SizedBox(height: 10.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Row(children: [
                                                          Text("Cantidad",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          63.h),
                                                              child: Text(
                                                                  "Porción",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge))
                                                        ])),
                                                    SizedBox(height: 12.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h,
                                                                right: 80.h),
                                                        child: Row(children: [
                                                          _buildCantidad(
                                                              context),
                                                          _buildPorciN(context)
                                                        ])),
                                                    SizedBox(height: 22.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h),
                                                        child: Text(
                                                            "Fecha de inicio",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        28.h),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text("Día",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyLarge),
                                                                  Spacer(
                                                                      flex: 52),
                                                                  Text("Mes",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyLarge),
                                                                  Spacer(
                                                                      flex: 47),
                                                                  Text("Año",
                                                                      style: theme
                                                                          .textTheme
                                                                          .bodyLarge)
                                                                ]))),
                                                    SizedBox(height: 4.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h,
                                                                right: 11.h),
                                                        child: Row(children: [
                                                          Container(
                                                              height: 45.v,
                                                              width: 80.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              21.h))),
                                                          Spacer(),
                                                          Container(
                                                              height: 45.v,
                                                              width: 80.h,
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
                                                              width: 80.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          19.h),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              21.h)))
                                                        ])),
                                                    SizedBox(height: 11.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text(
                                                            "Hora de inicio",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge)),
                                                    SizedBox(height: 9.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 21.h),
                                                        child: Row(children: [
                                                          Text("Hora",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          76.h),
                                                              child: Text(
                                                                  "Minutos",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge))
                                                        ])),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h),
                                                        child: Row(children: [
                                                          _buildHora(context),
                                                          _buildMinutos(context)
                                                        ])),
                                                    SizedBox(height: 23.v),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 4.h),
                                                        child: Row(children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 10.v,
                                                                      bottom:
                                                                          9.v),
                                                              child: Text(
                                                                  "Cada ",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge)),
                                                          Container(
                                                              height: 45.v,
                                                              width: 80.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          18.h),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              21.h))),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          21.h,
                                                                      top: 10.v,
                                                                      bottom:
                                                                          9.v),
                                                              child: Text(
                                                                  "horas",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge))
                                                        ])),
                                                    SizedBox(height: 2.v)
                                                  ])),
                                          SizedBox(height: 12.v),
                                          _buildSeventyEight(context)
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.h, vertical: 21.v),
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

  /// Section Widget
  Widget _buildNombreMedicamento(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: CustomTextFormField(controller: nombreMedicamentoController));
  }

  /// Section Widget
  Widget _buildCantidad(BuildContext context) {
    return CustomTextFormField(width: 103.h, controller: cantidadController);
  }

  /// Section Widget
  Widget _buildPorciN(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: CustomTextFormField(
            width: 96.h,
            controller: porciNController,
            hintText: "gr",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.h, vertical: 9.v)));
  }

  /// Section Widget
  Widget _buildHora(BuildContext context) {
    return CustomTextFormField(width: 80.h, controller: horaController);
  }

  /// Section Widget
  Widget _buildMinutos(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 49.h),
        child: CustomTextFormField(
            width: 80.h,
            controller: minutosController,
            textInputAction: TextInputAction.done));
  }

  /// Section Widget
  Widget _buildGuardar(BuildContext context) {
    return Expanded(
        child: CustomOutlinedButton(
            text: "Guardar",
            margin: EdgeInsets.only(left: 35.h, top: 9.v, bottom: 8.v),
            onPressed: () {
              onTapGuardar(context);
            }));
  }

  /// Section Widget
  Widget _buildSeventyEight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 32.h, right: 13.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 69.v,
              width: 66.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 67.v,
                        width: 63.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onPrimaryContainer,
                            borderRadius: BorderRadius.circular(33.h)))),
                CustomImageView(
                    imagePath: ImageConstant.imgLeft12869971,
                    height: 69.v,
                    width: 66.h,
                    alignment: Alignment.center,
                    onTap: () {
                      menu(context);
                    })
              ])),
          _buildGuardar(context)
        ]));
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  onTapBtnLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the pantallaPrincipalScreen when the action is triggered.
  menu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pantallaPrincipalScreen);
  }

  /// Navigates to the recordatorioScreen when the action is triggered.
  onTapGuardar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recordatorioScreen);
  }
}
