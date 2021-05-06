import 'package:flutter/material.dart';
import 'package:hero_animation/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAppicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => MyHomePage(),
    // 'notificaciones': (BuildContext context) => BuzonNotificacionesPage(),
    // 'nosotros': (BuildContext context) => ACercaDeNosotrosPage(),
    // 'informativo': (BuildContext context) => MaterialInformativoPage(),
    // 'contactanos': (BuildContext context) => ContactanosPage(
    //       tabInicial: 0,
    //     ),
    // 'direcciones': (BuildContext context) => ContactanosPage(
    //       tabInicial: 1,
    //     ),
    // 'eap-autenticado': (BuildContext context) => EstadoAhorroPrevisional(),
    // 'ahorro-empleador': (BuildContext context) => EstadoCuentaEmpleadorPage(),
    // 'estado-cuenta': (BuildContext context) => EstadoCuentaEmpleadorPage(),
    // 'login-asegurado': (BuildContext context) => LoginPage(
    //       tipoUsuario: 'a',
    //     ),
    // 'login-empleador': (BuildContext context) => LoginPage(
    //       tipoUsuario: 'e',
    //     ),
    // 'cna': (BuildContext context) => CertificadoNoAdeudoPage(),
    // 'certificado': (BuildContext context) => CertificadoNoRegistroPage(),
    // 'donde-cobrar': (BuildContext context) => DondeCobrarPage(),
    // 'donde-pagar': (BuildContext context) => DondePagarPage(),
    // 'plazo-aportes': (BuildContext context) => PlazoAportesPage(),
    // 'requisitos': (BuildContext context) => RequisitosPage(),
    // 'ajustes': (BuildContext context) => AjustesPage(),
    // 'quienes-somos': (BuildContext context) => QuiresSomosPage(),
    // 'memorias-institucionales': (BuildContext context) =>
    //     MemoriasInstitucionalesPage(),
    // // 'doc-viewer': (BuildContext context) => DocViewer(),
    // 'mat-info-asegurados': (BuildContext context) => InfoAseguradosPage(),
    // 'mat-info-empleadores': (BuildContext context) => InfoEmpleadoresPage(),
    // 'vivenciaStepper': (BuildContext context) => VivenciaStepperPage(),
  };
}
