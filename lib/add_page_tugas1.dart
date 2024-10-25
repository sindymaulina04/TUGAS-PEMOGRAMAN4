import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  final TextEditingController _fakturController = TextEditingController();
  final TextEditingController _tanggalController = TextEditingController();
  final TextEditingController _customerController = TextEditingController();
  final TextEditingController _jumlahController = TextEditingController();
  final TextEditingController _totalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Penjualan'),
        backgroundColor: Colors.green[700], // Mengubah warna AppBar
      ),
      body: Container(
        color: Colors.green[50], // Warna latar belakang
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Memungkinkan scrolling jika konten terlalu banyak
          child: Column(
            children: <Widget>[
              _buildTextField(_fakturController, 'No Faktur', Icons.article),
              SizedBox(height: 16.0),
              _buildTextField(_tanggalController, 'Tanggal Penjualan', Icons.calendar_today),
              SizedBox(height: 16.0),
              _buildTextField(_customerController, 'Nama Customer', Icons.person),
              SizedBox(height: 16.0),
              _buildTextField(_jumlahController, 'Jumlah Barang', Icons.format_list_numbered),
              SizedBox(height: 16.0),
              _buildTextField(_totalController, 'Total Penjualan', Icons.attach_money),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700], // Warna tombol
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'Simpan',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  // Logika untuk menyimpan data penjualan
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[600], // Warna tombol kembali
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'Kembali',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.green),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.green[700]!),
        ),
        prefixIcon: Icon(icon, color: Colors.green[700]),
      ),
    );
  }
}