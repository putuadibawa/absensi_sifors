import 'package:flutter/material.dart';
import 'package:absensi_sifors/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(0),
                  child: const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: const Text("Edit Profile"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextFormField(
                      initialValue: "Putu",
                      //maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: "Nama Depan",
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'Adi Bawa',
                      decoration: const InputDecoration(
                        labelText: 'Nama Belakang',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'adi.bawa@undiksha.ac.id',
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: '088788765678',
                      decoration: const InputDecoration(
                        labelText: 'Nomor Telephone',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        print("pickedDate: $pickedDate");
                      },
                      child: TextFormField(
                        initialValue: '2022-08-01',
                        maxLength: 20,
                        enabled: false,
                        decoration: const InputDecoration(
                          labelText: 'Tanggal Lahir',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          suffixIcon: Icon(Icons.date_range),
                          helperText: "What's your name?",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    LayoutBuilder(builder: (context, constraint) {
                      String groupValue = "gender";
                      List items = [
                        {
                          "label": "Female",
                          "value": "female",
                          "checked": true,
                        },
                        {
                          "label": "Male",
                          "value": "Male",
                        }
                      ];
                      return FormField(
                        initialValue: false,
                        enabled: true,
                        builder: (FormFieldState<bool> field) {
                          return InputDecorator(
                            decoration: InputDecoration(
                              labelText: 'Gender',
                              errorText: field.errorText,
                              border: InputBorder.none,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                var item = items[index];

                                return RadioListTile<dynamic>(
                                  title: Text("${item["label"]}"),
                                  groupValue: true,
                                  value: item["checked"] ?? false,
                                  onChanged: (val) {
                                    field.didChange(true);
                                  },
                                );
                              },
                            ),
                          );
                        },
                      );
                    }),
                  ],
                ),
              ),
              TextFormField(
                initialValue: 'Jln. Sukangoding No. 45',
                maxLines: 4,
                decoration: const InputDecoration(
                  labelText: 'alamat',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
