import 'package:flutter/material.dart';
import 'package:medi_mate/presentation/bienvenida_screen/bienvenida_screen.dart';
import 'package:medi_mate/presentation/iniciar_sesion_screen/iniciar_sesion_screen.dart';
import 'package:medi_mate/presentation/registrarse_screen/registrarse_screen.dart';
import 'package:medi_mate/presentation/pantalla_principal_screen/pantalla_principal_screen.dart';
import 'package:medi_mate/presentation/recordatorio_screen/recordatorio_screen.dart';
import 'package:medi_mate/presentation/agregar_recordatorio_screen/agregar_recordatorio_screen.dart';
import 'package:medi_mate/presentation/agregar_horario_medicaci_n_screen/agregar_horario_medicaci_n_screen.dart';
import 'package:medi_mate/presentation/agregar_citas_medica_screen/agregar_citas_medica_screen.dart';
import 'package:medi_mate/presentation/agregar_otro_screen/agregar_otro_screen.dart';
import 'package:medi_mate/presentation/receta_m_dica_screen/receta_m_dica_screen.dart';
import 'package:medi_mate/presentation/agregar_receta_screen/agregar_receta_screen.dart';
import 'package:medi_mate/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String bienvenidaScreen = '/bienvenida_screen';

  static const String iniciarSesionScreen = '/iniciar_sesion_screen';

  static const String registrarseScreen = '/registrarse_screen';

  static const String pantallaPrincipalScreen = '/pantalla_principal_screen';

  static const String recordatorioScreen = '/recordatorio_screen';

  static const String agregarRecordatorioScreen =
      '/agregar_recordatorio_screen';

  static const String agregarHorarioMedicaciNScreen =
      '/agregar_horario_medicaci_n_screen';

  static const String agregarCitasMedicaScreen = '/agregar_citas_medica_screen';

  static const String agregarOtroScreen = '/agregar_otro_screen';

  static const String recetaMDicaScreen = '/receta_m_dica_screen';

  static const String agregarRecetaScreen = '/agregar_receta_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    bienvenidaScreen: (context) => BienvenidaScreen(),
    iniciarSesionScreen: (context) => IniciarSesionScreen(),
    registrarseScreen: (context) => RegistrarseScreen(),
    pantallaPrincipalScreen: (context) => PantallaPrincipalScreen(),
    recordatorioScreen: (context) => RecordatorioScreen(),
    agregarRecordatorioScreen: (context) => AgregarRecordatorioScreen(),
    agregarHorarioMedicaciNScreen: (context) => AgregarHorarioMedicaciNScreen(),
    agregarCitasMedicaScreen: (context) => AgregarCitasMedicaScreen(),
    agregarOtroScreen: (context) => AgregarOtroScreen(),
    recetaMDicaScreen: (context) => RecetaMDicaScreen(),
    agregarRecetaScreen: (context) => AgregarRecetaScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
