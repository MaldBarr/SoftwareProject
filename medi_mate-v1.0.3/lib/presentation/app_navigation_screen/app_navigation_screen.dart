import 'package:flutter/material.dart';
import 'package:medi_mate/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "bienvenida",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bienvenidaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Iniciar sesion",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iniciarSesionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "registrarse",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrarseScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pantalla Principal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pantallaPrincipalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Recordatorio",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recordatorioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Agregar Recordatorio",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.agregarRecordatorioScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Agregar horario medicación",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.agregarHorarioMedicaciNScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Agregar citas medica",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.agregarCitasMedicaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Agregar otro",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.agregarOtroScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Receta Médica",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.recetaMDicaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Agregar receta",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.agregarRecetaScreen),
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

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
