import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'miArgentina',
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
      appBar: AppBar(
        backgroundColor: Color(0xFF00A5DB),
        title: Column(
          children: [
            Text('miArgentina'),
            Text(
              '¡Hola, Yannick!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Color(0xFF00A5DB), size: 40),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'No tenés turnos programados',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF00A5DB),
                                ),
                                onPressed: () {},
                                child: Text('Solicitalo acá'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
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
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: [
                            ServiceIcon(icon: Icons.person, label: 'Mis documentos', color: Color(0xFF4A90E2)),
                            ServiceIcon(icon: Icons.directions_car, label: 'Mis vehículos', color: Color(0xFFF5A623)),
                            ServiceIcon(icon: Icons.favorite, label: 'Mi salud', color: Color(0xFFD0021B)),
                            ServiceIcon(icon: Icons.work, label: 'Mi trabajo', color: Color(0xFF7ED321)),
                            ServiceIcon(icon: Icons.calendar_today, label: 'Mis turnos', color: Color(0xFF50E3C2)),
                            ServiceIcon(icon: Icons.attach_money, label: 'Mis cobros', color: Color(0xFFB8E986)),
                            ServiceIcon(icon: Icons.assignment, label: 'Mis trámites', color: Color(0xFF9013FE)),
                            ServiceIcon(icon: Icons.child_care, label: 'Mis hijos', color: Color(0xFFF8E71C)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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
  final IconData icon;
  final String label;
  final Color color;

  const ServiceIcon({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 30, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(label, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
