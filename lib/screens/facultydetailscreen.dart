// import 'package:flutter/material.dart';

// class FacultyScreen extends StatefulWidget {
//   const FacultyScreen({super.key});

//   @override
//   State<FacultyScreen> createState() => _FacultyScreenState();
// }

// class _FacultyScreenState extends State<FacultyScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          title: Text('Faculty details'),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
            
//             Text(
//               'Online Courses:',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.blue, // Section title color
//               ),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'SR.NO	NAME	EMAIL ID	DESIGNATION
// 1	Dr. Ajay Upadhayaya	ajay.upadhyaya@sal.edu.in	I/C Principal, Head -CE,CSE, IT & ICT Dept. Associate Professor
// 2	Prof. Nili Patel	nili.patel@sal.edu.in	Head of Applied Sciences and Humanities Department, Assistant Professor
// 3	Prof. Jalpit Prajapati	jalpit.prajapati@sal.edu.in	Assistant Professor
// 4	Prof. Parul Oza	parul.oza@sal.edu.in	Assistant Professor
// 5	Prof. Megha Joshi	megha.joshi@sal.edu.in	Assistant Professor
// 6	Prof. Akash Bhatt	akash.bhatt@sal.edu.in	Assistant Professor
// 7	Prof. Piyush Patel	piyush.patel@sal.edu.in	Assistant Professor
// 8	Prof. Janki Patel	janki.patel@sal.edu.in	Assistant Professor
// 9	Prof. Madhuri Suchak	madhuri.parekh@sal.edu.in 	Assistant Professor
// 10	Prof. Avni Vadaliya	avni.vadaliya@sal.edu.in	Assistant Professor
// 11	Prof. Jignyasa Gandhi	jignyasa.gandhi@sal.edu.in	Assistant Professor
// 12	Prof. Harshit.Vora	harshit.vora@sal.edu.in 	Assistant Professor
// 13	Dr. Viral Parekh	viral.parekh@sal.edu.in	Associate Professor
// 14	Prof. Ruchit Shah	ruchit.shah@sal.edu.in	Assistant Professor
// 15	Prof. Tejas Patel	tejas.patel@sal.edu.in	Assistant Professor
// 16	Prof. Neil Saxena	neil.saxena@sal.edu.in	Assistant Professor
// 17	Prof. Hiral prajapati	hiral.prajapati@sal.edu.in	Assistant Professor
// 18	Prof. Sachi Bhavsar	sachi.bhavsar@sal.edu.in	Assistant Professor
// 19	Prof. Jay Raval	jay.raval@sal.edu.in	Assistant Professor
// 20	Prof. Dhruv Shah	dhruv.shah@sal.edu.in	Assistant Professor
// 21	Prof. Krupa Engineer	krupa.engineer@sal.edu.in	Assistant Professor
// 22	Dr. Reshma Rajyaguru	reshma.rajyaguru@sal.edu.in	Assistant Professor
// 23	Prof. Sheetal Thakur	sheetal.thakur@sal.edu.in	Assistant Professor
// 24	Prof. Kinjal Rathod	kinjal.rathod@sal.edu.in	Assistant Professor
// 25	Prof. Dhruvi Surti	dhruvi.surti@sal.edu.in	Assistant Professor',
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

class FacultyScreen extends StatefulWidget {
  const FacultyScreen({Key? key}) : super(key: key);

  @override
  State<FacultyScreen> createState() => _FacultyScreenState();
}

class _FacultyScreenState extends State<FacultyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faculty details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columns: [
              DataColumn(label: Text('SR. NO')),
              DataColumn(label: Text('NAME')),
              DataColumn(label: Text('EMAIL ID')),
              DataColumn(label: Text('DESIGNATION')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Dr. Ajay Upadhayaya')),
                DataCell(Text('ajay.upadhyaya@sal.edu.in')),
                DataCell(Text('I/C Principal, Head - CE, CSE, IT & ICT Dept., Associate Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Prof. Nili Patel')),
                DataCell(Text('nili.patel@sal.edu.in')),
                DataCell(Text('Head of Applied Sciences and Humanities Department, Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('3')),
                DataCell(Text('Prof. Jalpit Prajapati')),
                DataCell(Text('jalpit.prajapati@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('4')),
                DataCell(Text('Prof. Parul Oza')),
                DataCell(Text('parul.oza@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('5')),
                DataCell(Text('Prof. Megha Joshi')),
                DataCell(Text('megha.joshi@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('6')),
                DataCell(Text('Prof. Akash Bhatt')),
                DataCell(Text('akash.bhatt@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('7')),
                DataCell(Text('Prof. Piyush Patel')),
                DataCell(Text('piyush.patel@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('8')),
                DataCell(Text('Prof. Janki Patel')),
                DataCell(Text('janki.patel@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('9')),
                DataCell(Text('Prof. Madhuri Suchak')),
                DataCell(Text('madhuri.parekh@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('10')),
                DataCell(Text('Prof. Avni Vadaliya')),
                DataCell(Text('avni.vadaliya@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('11')),
                DataCell(Text('Prof. Jignyasa Gandhi')),
                DataCell(Text('jignyasa.gandhi@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('12')),
                DataCell(Text('Prof. Harshit.Vora')),
                DataCell(Text('harshit.vora@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('13')),
                DataCell(Text('Dr. Viral Parekh')),
                DataCell(Text('viral.parekh@sal.edu.in')),
                DataCell(Text('Associate Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('14')),
                DataCell(Text('Prof. Ruchit Shah')),
                DataCell(Text('ruchit.shah@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('15')),
                DataCell(Text('Prof. Tejas Patel')),
                DataCell(Text('tejas.patel@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('16')),
                DataCell(Text('Prof. Neil Saxena')),
                DataCell(Text('neil.saxena@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('17')),
                DataCell(Text('Prof. Hiral prajapati')),
                DataCell(Text('hiral.prajapati@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('18')),
                DataCell(Text('Prof. Sachi Bhavsar')),
                DataCell(Text('sachi.bhavsar@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('19')),
                DataCell(Text('Prof. Jay Raval')),
                DataCell(Text('jay.raval@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('20')),
                DataCell(Text('Prof. Dhruv Shah')),
                DataCell(Text('dhruv.shah@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('21')),
                DataCell(Text('Prof. Krupa Engineer')),
                DataCell(Text('krupa.engineer@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('22')),
                DataCell(Text('Dr. Reshma Rajyaguru')),
                DataCell(Text('reshma.rajyaguru@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('23')),
                DataCell(Text('Prof. Sheetal Thakur')),
                DataCell(Text('sheetal.thakur@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('24')),
                DataCell(Text('Prof. Kinjal Rathod')),
                DataCell(Text('kinjal.rathod@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
              DataRow(cells: [
                DataCell(Text('25')),
                DataCell(Text('Prof. Dhruvi Surti')),
                DataCell(Text('dhruvi.surti@sal.edu.in')),
                DataCell(Text('Assistant Professor.')),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
