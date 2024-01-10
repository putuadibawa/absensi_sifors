import 'package:flutter/material.dart';

Widget tampilanUser() {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        child: const CircleAvatar(
          radius: 40.0,
          backgroundImage: NetworkImage(
            "https://i.ibb.co/PGv8ZzG/me.jpg",
          ),
        ),
      ),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, Putu",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("adi.bawa@undiksha.ac.id"),
        ],
      ),
    ],
  );
}

Widget buttonDashboard(String? textButton) {
  return Container(
    padding: const EdgeInsets.all(0),
    height: 80.0,
    width: 350.0,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 24,
          offset: Offset(0, 15),
        ),
      ],
    ),
    child: Center(
      child: Text(
        "$textButton",
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget itemChart() {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[200],
        backgroundImage: const NetworkImage(
          "https://i.ibb.co/xgwkhVb/740922.png",
        ),
      ),
      title: const Text("Apple"),
      subtitle: const Text("15 USD"),
      trailing: SizedBox(
        width: 120.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 12.0,
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 9.0,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "1",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 12.0,
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 9.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
