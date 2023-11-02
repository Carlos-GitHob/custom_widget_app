import 'package:custom_widget_app/widgets/acerca_de.dart';
import 'package:custom_widget_app/widgets/configuracion.dart';
import 'package:custom_widget_app/widgets/inicio.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool sunColor = false;
  bool powerColor = false;
  bool batterySign = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text("Menu Principal")),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text("Inicio"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const InicioPage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_pin_rounded),
                title: const Text("Acerca de"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AcercaDePage()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.brightness_high_outlined),
                title: const Text("Configuracion"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ConfigPage()));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Menu Drawer"),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ]),
        ),
        body: TabBarView(children: [
          Column(
            children: [
              Container(
                alignment: FractionalOffset.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.brightness_5_outlined,
                        color: sunColor ? Colors.yellow : Colors.black,
                        size: 60,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sunColor = !sunColor;

                          final snackbar = SnackBar(
                            content: Text(sunColor
                                ? "El sol ha sido encendido"
                                : "El sol se ha apagado."),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        });
                      },
                      child: Container(
                        color: Colors.yellow.shade600,
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            sunColor ? "TURN THE SUN OFF" : "TURN THE SUN ON"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: FractionalOffset.center,
                child: Image.asset('assets/images/sol.png',width: 500),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: FractionalOffset.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.power_settings_new,
                        color: powerColor ? Colors.green : Colors.red,
                        size: 60,
                      ),
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          powerColor = !powerColor;

                          final snackbar = SnackBar(
                            content: Text(powerColor ? "El poder esta establecido" : "El poder fue cortado"),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        });
                      },
                      child: Container(
                        color: Colors.cyan.shade600,
                        padding: const EdgeInsets.all(8.0),
                        child: Text(powerColor
                            ? "DOUBLE TAP TO TURN THE POWER OFF"
                            : "DOUBLE TAP TO TURN THE POWER ON"),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: FractionalOffset.center,
                child: Image.asset('assets/images/pc.png',width: 500),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                alignment: FractionalOffset.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          batterySign
                              ? Icons.battery_0_bar
                              : Icons.battery_full,
                          color: batterySign ? Colors.red : Colors.green,
                          size: 60,
                        ),
                      ),
                      GestureDetector(
                        onLongPress: () {
                          setState(() {
                            batterySign = !batterySign;

                            final snackbar = SnackBar(
                            content: Text(batterySign ? "Bateria al 0%" : "Bateria al 100%" ),
                            action: SnackBarAction(
                              label: 'Undo',
                              onPressed: () {},
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                          });
                        },
                        child: Container(
                          color: Colors.lightBlue,
                          padding: const EdgeInsets.all(8.0),
                          child: Text(batterySign
                              ? "HOLD BUTTON TO CHARGE BATTERY"
                              : "HOLD BUTTON TO DISCHARGE BATTERY"),
                        ),
                      ),
                    ]),
              ),
              Container(
                alignment: FractionalOffset.center,
                child: Image.asset('assets/images/bateria.png',width: 500),
              ),
            ],
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final snackbar = SnackBar(
              content: const Text("Se ha presionado el Boton Flotante!"),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {},
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
