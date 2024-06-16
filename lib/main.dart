import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'miArgentina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Aumenta la altura del header
        child: AppBar(
          backgroundColor: Color(0xFF37bbec),
          title: Padding(
            padding: const EdgeInsets.only(top: 16.0), // Ajusta el padding superior del header
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Image.asset(
                    'lib/img/menuNav.png',
                    width: 32, // Aumenta el tamaño del ícono
                    height: 32,
                  ),
                  onPressed: () {},
                ),
                Image.asset(
                  'lib/img/logoMiArg.png',
                  height: 32, // Aumenta el tamaño del logo
                ),
                IconButton(
                  icon: Image.asset(
                    'lib/img/logoPerfil.png',
                    width: 32, // Aumenta el tamaño del ícono
                    height: 32,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Container(
        color: Colors.grey.shade200, // Fondo de la página en gris claro
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.white, // Fondo de la tarjeta en blanco
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey.withOpacity(0.3)), // Borde más claro
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0), // Aumentar padding
                    child: Row(
                      children: [
                        Image.asset(
                          'lib/img/solicitarTurno.png',
                          width: 70, // Aumentar el tamaño de la imagen
                          height: 70,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'No tenés turnos programados',
                                style: TextStyle(fontSize: 16, color: Colors.black), // Texto en negro
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Spacer(),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF3773BC),
                                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                                    ),
                                    onPressed: () {},
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'Solicitalo acá',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Colors.white, // Fondo de la tarjeta en blanco
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.grey.withOpacity(0.3)), // Borde más claro
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mis servicios',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ServiceIcon(imagePath: 'lib/img/iconoDocumentos.png', label: 'Mis documentos'),
                            ServiceIcon(imagePath: 'lib/img/iconoVehiculos.png', label: 'Mis vehículos'),
                            ServiceIcon(imagePath: 'lib/img/iconoSalud.png', label: 'Mi salud'),
                            ServiceIcon(imagePath: 'lib/img/iconoTrabajo.png', label: 'Mi trabajo'),
                            ServiceIcon(imagePath: 'lib/img/iconoTurnos.png', label: 'Mis turnos'),
                            ServiceIcon(imagePath: 'lib/img/iconoCobros.png', label: 'Mis cobros'),
                            ServiceIcon(imagePath: 'lib/img/iconoTramites.png', label: 'Mis trámites'),
                            ServiceIcon(imagePath: 'lib/img/iconoHijos.png', label: 'Mis hijos'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xFF00A5DB)),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article, color: Colors.grey),
            label: 'Novedades',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone, color: Colors.grey),
            label: 'Teléfonos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face, color: Color(0xFF00A5DB)),
            label: 'Tina',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF00A5DB),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class ServiceIcon extends StatelessWidget {
  final String imagePath;
  final String label;

  const ServiceIcon({required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double imageSize = constraints.maxWidth * 0.6; // Ajusta el tamaño basado en el espacio disponible
        return InkWell(
          onTap: () {
            // Agrega la funcionalidad que desees aquí
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                width: imageSize,
                height: imageSize,
              ),
              SizedBox(height: 10),
              Flexible(
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14, // Ajusta el tamaño de la fuente
                    overflow: TextOverflow.ellipsis, // Asegura que el texto no se divida
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

