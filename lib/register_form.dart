import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<String> _agama = ['Islam', 'Kristen', 'Budha', 'Hindhu', 'Konghucu'];
  String _nAgama = "Islam";
  int _groupValue1 = 0;
  TextEditingController namaController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nohpController = TextEditingController();
  TextEditingController jurusanController = TextEditingController();
  TextEditingController prodiController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Form Mahasiswa"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: namaController,
                      decoration: InputDecoration(
                        hintText: 'Nama Lengkap',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: nimController,
                      decoration: InputDecoration(
                        hintText: 'NIM',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: nohpController,
                      decoration: InputDecoration(
                        hintText: 'No. HP',
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text('Jenis Kelamin'),
                        Radio(
                          onChanged: (int i) {
                            setState(() {
                              _groupValue1 = i;
                            });
                          },
                          value: 0,
                          groupValue: _groupValue1,
                        ),
                        Text('Laki-laki'),
                        Radio(
                          onChanged: (int i) {
                            setState(() {
                              _groupValue1 = i;
                            });
                          },
                          value: 1,
                          groupValue: _groupValue1,
                        ),
                        Text('Perempuan'),
                      ],
                    ),
                    DropdownButtonFormField(
                      onChanged: (String value) {
                        setState(() {
                          _nAgama = value;
                        });
                      },
                      value: _nAgama,
                      items: _agama.map((String value) {
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: jurusanController,
                      decoration: InputDecoration(
                        hintText: 'Jurusan',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: prodiController,
                      decoration: InputDecoration(
                        hintText: 'Prodi',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: alamatController,
                      decoration: InputDecoration(
                        hintText: 'Alamat',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    MaterialButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text("DAFTAR"),
                      onPressed: () {
                        print('Pendaftaran Berhasil!');
                        Fluttertoast.showToast(
                            msg: "Nama Lengkap : " +
                                namaController.text.toString() +
                                "\n" +
                                "NIM : " +
                                nimController.text.toString() +
                                "\n" +
                                "Email : " +
                                emailController.text.toString() +
                                "\n" +
                                "No. HP : " +
                                nohpController.text.toString() +
                                "\n" +
                                "Jenis Kelamin :" +
                                ((_groupValue1 == 0) ? "Laki" : "Wanita") +
                                "\n" +
                                "Agama : " +
                                _nAgama +
                                "\n" +
                                "Jurusan :" +
                                jurusanController.text.toString() +
                                "\n" +
                                "Prodi :" +
                                prodiController.text.toString() +
                                "\n" +
                                "Alamat :" +
                                alamatController.text.toString(),
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.lightBlue,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      },
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
