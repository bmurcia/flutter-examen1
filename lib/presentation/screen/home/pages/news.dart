import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  static const List<Map<String, String>> eventos =[
    {
      "eventName": "CEUTEC impulsa la innovación educativa en el CIE 2024",
      "date": "25 septiembre, 2024",
      "url": "asset/image/CIE2024.jpg",
      "details": "Nuestro campus de Tegucigalpa fue sede del 23 al 24 de septiembre de la exitosa cuarta edición del Congreso de Innovación Educativa, CIE 2024. Este evento que celebra la innovación reunió a destacados conferencistas internacionales, docentes y profesionales comprometidos con la transformación de la educación superior"
    },
    {
      "eventName": "Premiamos la Excelencia Docente con los Faculty Awards 2024",
      "date": "16 septiembre, 2024",
      "url": "asset/image/premios.jpg",
      "details": "Estamos emocionados de compartir los resultados de la tercera edición de los Faculty Awards, un evento que celebra a nuestros docentes excepcionales en el marco del Día del Docente, celebrado cada 17 de septiembre en Honduras. Este evento es una oportunidad para reconocer y premiar a aquellos educadores que se distinguen por su compromiso, disponibilidad y dedicación en la formación de nuestros estudiantes."
    },
    {
      "eventName": "Exitosa jornada de donación de sangre por comunidad CEUTEC",
      "date": "7 septiembre, 2024",
      "url": "asset/image/donacion.jpeg",
      "details": "La comunidad universitaria del Centro Universitario Tecnológico demostró una vez más su compromiso con la sociedad a través de una significativa actividad de voluntariado corporativo y vinculación estudiantil. Durante esta jornada de donación de sangre, colaboradores, docentes y estudiantes de CEUTEC se unieron para recolectar un total de 179 pintas de sangre a nivel nacional junto a la comunidad UNITEC."
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Noticias"),
      ),
      body: ListView.builder(
        itemCount: eventos.length,
        itemBuilder: (context, index ){
          final evento = eventos[index];
          
          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    evento['eventName']!,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Image.asset(
                    evento['url']!,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 5),

                  Text(
                    'Fecha : ${evento['date']}',
                    style: const TextStyle(color: Colors.blue),
                  ),
                  const SizedBox(height: 5),

                  Text(
                    '${evento['details']}',
                    style: const TextStyle(color: Colors.blue),
                  ),
                  const SizedBox(height: 5),



                ],
              ), 
            ),
          );

        },
      ),
    );
  }
}