// ignore: file_names
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'models/team.dart';

class Team {
  Team({
    required this.position,
    required this.name,
    required this.points,
    required this.played,
    required this.won,
    required this.drawn,
    required this.lost,
    required this.against,
    required this.gd,
  });

  final int position;
  final String name;
  final int points;
  final int played;
  final int won;
  final int drawn;
  final int lost;
  final int against;
  final int gd;
}

List<Team> teamsData = [
  Team(
    position: 1,
    name: 'Atletico Madrid',
    points: 11,
    played: 5,
    won: 3,
    drawn: 2,
    lost: 0,
    against: 4,
    gd: 3,
  ),
  Team(
    position: 2,
    name: 'Real Madrid',
    points: 10,
    played: 4,
    won: 3,
    drawn: 1,
    lost: 0,
    against: 6,
    gd: 7,
  ),
  Team(
    position: 3,
    name: 'Valencia',
    points: 10,
    played: 4,
    won: 3,
    drawn: 2,
    lost: 0,
    against: 2,
    gd: 7,
  ),
  Team(
    position: 4,
    name: 'Athletic Bilbao',
    points: 9,
    played: 5,
    won: 2,
    drawn: 3,
    lost: 0,
    against: 1,
    gd: 3,
  ),
  Team(
    position: 5,
    name: 'Real Sociedad',
    points: 9,
    played: 4,
    won: 3,
    drawn: 0,
    lost: 1,
    against: 4,
    gd: 2,
  ),
  Team(
    position: 6,
    name: 'Osasuna',
    points: 8,
    played: 5,
    won: 2,
    drawn: 2,
    lost: 1,
    against: 6,
    gd: 0,
  ),
  Team(
    position: 7,
    name: 'Mallorca',
    points: 8,
    played: 5,
    won: 2,
    drawn: 2,
    lost: 1,
    against: 3,
    gd: 0,
  ),
  Team(
    position: 8,
    name: 'Sevilla',
    points: 7,
    played: 3,
    won: 2,
    drawn: 1,
    lost: 0,
    against: 1,
    gd: 4,
  ),
  Team(
    position: 9,
    name: 'Rayo Vallecano',
    points: 7,
    played: 5,
    won: 2,
    drawn: 1,
    lost: 2,
    against: 5,
    gd: 3,
  ),
  Team(
    position: 10,
    name: 'Barcelona',
    points: 7,
    played: 3,
    won: 2,
    drawn: 1,
    lost: 0,
    against: 4,
    gd: 3,
  ),
  Team(
    position: 11,
    name: 'Elche',
    points: 6,
    played: 5,
    won: 1,
    drawn: 3,
    lost: 1,
    against: 3,
    gd: 0,
  ),
  Team(
    position: 12,
    name: 'Real Betis',
    points: 5,
    played: 4,
    won: 1,
    drawn: 2,
    lost: 1,
    against: 4,
    gd: 0,
  ),
  Team(
    position: 13,
    name: 'Cadiz',
    points: 5,
    played: 5,
    won: 1,
    drawn: 2,
    lost: 2,
    against: 8,
    gd: -2,
  ),
  Team(
    position: 14,
    name: 'Villarreal',
    points: 4,
    played: 4,
    won: 0,
    drawn: 4,
    lost: 0,
    against: 2,
    gd: 0,
  ),
  Team(
    position: 15,
    name: 'Levante',
    points: 4,
    played: 5,
    won: 0,
    drawn: 4,
    lost: 1,
    against: 7,
    gd: -1,
  ),
  Team(
    position: 16,
    name: 'Espanyol',
    points: 2,
    played: 4,
    won: 0,
    drawn: 2,
    lost: 2,
    against: 3,
    gd: -2,
  ),
  Team(
    position: 17,
    name: 'Granada',
    points: 2,
    played: 4,
    won: 0,
    drawn: 2,
    lost: 2,
    against: 7,
    gd: -5,
  ),
  Team(
    position: 18,
    name: 'Celta',
    points: 1,
    played: 5,
    won: 0,
    drawn: 1,
    lost: 4,
    against: 10,
    gd: -6,
  ),
  Team(
    position: 19,
    name: 'Getafe',
    points: 0,
    played: 5,
    won: 0,
    drawn: 0,
    lost: 5,
    against: 8,
    gd: -7,
  ),
  Team(
    position: 20,
    name: 'Alaves',
    points: 0,
    played: 4,
    won: 0,
    drawn: 0,
    lost: 4,
    against: 10,
    gd: -9,
  ),
  Team(
    position: 21,
    name: 'Alaves',
    points: 0,
    played: 4,
    won: 0,
    drawn: 0,
    lost: 4,
    against: 10,
    gd: -9,
  ),
  Team(
    position: 22,
    name: 'Alaves',
    points: 0,
    played: 4,
    won: 0,
    drawn: 0,
    lost: 4,
    against: 10,
    gd: -9,
  ),
  Team(
    position: 23,
    name: 'Alaves',
    points: 0,
    played: 4,
    won: 0,
    drawn: 0,
    lost: 4,
    against: 10,
    gd: -9,
  ),
  Team(
    position: 24,
    name: 'Alaves',
    points: 0,
    played: 4,
    won: 0,
    drawn: 0,
    lost: 4,
    against: 10,
    gd: -9,
  ),
  Team(
    position: 25,
    name: 'Getafe',
    points: 0,
    played: 5,
    won: 0,
    drawn: 0,
    lost: 5,
    against: 8,
    gd: -7,
  ),
];

class FixedColumnWidget extends StatelessWidget {
  const FixedColumnWidget({super.key});
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return DataTable(
      columnSpacing: 10,
      dataRowMinHeight: screenHeight * 0.028,
      dataRowMaxHeight: screenHeight * 0.028,
      headingRowColor: WidgetStateProperty.all(Colors.green[300]),
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey, width: 0)),
      ),
      columns: const [DataColumn(label: Text('Kecamatan'))],
      rows: const [
        DataRow(
          cells: [
            DataCell(
              Text(
                '01  Dayeuhluhur',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '02  Wanareja',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '03  Majenang',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '04  Cimanggu',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '05  Karangpucung',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '06  Cipari',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '07 Sidareja',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '08  Kedungreja',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '09  Patimuan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '10  Gandrungmangu',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '11  Bantarsari',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '12  Kawunganten',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '13  Kampung Laut',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '14 Jeruklegi',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '15  Kesugihan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '16  Adipala',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '17 Maos',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '18  Sampang',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '19  Kroya',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '20  Binangun',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '21  Nusawungu',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '22  Cilacap Selatan',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '23  Cilacap Tengah',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '24  Cilacap Utara',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
              ),
            ),
          ],
        ),
        DataRow(
          cells: [
            DataCell(
              Text(
                '25  Cilacap',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
          ],
        ),
      ],
      showBottomBorder: true,
    );
  }
}

class ScrollableColumnWidget extends StatelessWidget {
  const ScrollableColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowColor: WidgetStateProperty.all(Colors.green[300]),
          columnSpacing: 40,
          dataRowMinHeight: screenHeight * 0.028,
          dataRowMaxHeight: screenHeight * 0.028,
          decoration: const BoxDecoration(
            border: Border(right: BorderSide(color: Colors.grey, width: 0)),
          ),
          columns: const [
            DataColumn(label: Text('Points')),
            DataColumn(label: Text('Won')),
            DataColumn(label: Text('Lost')),
            DataColumn(label: Text('Drawn')),
            DataColumn(label: Text('Against')),
            DataColumn(label: Text('GD')),
          ],
          rows: [
            ...teamsData.map(
              (team) => DataRow(
                cells: [
                  DataCell(
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        team.points.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  DataCell(
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(team.won.toString()),
                    ),
                  ),
                  DataCell(
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(team.lost.toString()),
                    ),
                  ),
                  DataCell(
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(team.drawn.toString()),
                    ),
                  ),
                  DataCell(
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(team.against.toString()),
                    ),
                  ),
                  DataCell(
                    Container(
                      alignment: AlignmentDirectional.center,
                      child: Text(team.gd.toString()),
                    ),
                  ),
                ],
              ),
            ),
          ],
          showBottomBorder: true,
        ),
      ),
    );
  }
}

void main() => runApp(const Rtupp());

class Rtupp extends StatelessWidget {
  const Rtupp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Row(
              children: const [FixedColumnWidget(), ScrollableColumnWidget()],
            ),
          ),
        ),
      ),
    );
  }
}
