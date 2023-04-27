import 'package:flutter/material.dart';

Widget buttonDaftar() {
  return Container(
    padding: const EdgeInsets.all(0),
    height: 50.0,
    width: 250.0,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(30),
      boxShadow: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 24,
          offset: Offset(0, 15),
        ),
      ],
    ),
    child: const Center(
      child: Text(
        "DAFTAR",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget bannerKegiatan() {
  return Container(
    height: 230.0,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
          "https://th.bing.com/th/id/OIP.yUmW4BBIRDEJ5L7ULnMJOQHaDt?pid=ImgDet&rs=1",
        ),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(
          16.0,
        ),
      ),
    ),
  );
}

Widget isiDetailKegiatan(
    {required String judulItemDetailKegiatan,
    required String nilaiItemDetailKegiatan}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        judulItemDetailKegiatan,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      const SizedBox(
        height: 7.0,
      ),
      Text(
        nilaiItemDetailKegiatan,
        style: const TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.justify,
      ),
      const SizedBox(
        height: 10.0,
      ),
      Container(
        height: 2.0,
        color: Colors.blueGrey[900],
      ),
      const SizedBox(
        height: 10.0,
      ),
    ],
  );
}
