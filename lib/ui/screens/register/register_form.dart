import 'package:flutter/material.dart';
import 'package:soda/ui/widgets/custom_button.dart';
import 'package:soda/ui/widgets/custom_dropdown.dart';
import 'package:soda/ui/widgets/custom_form_field.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _telephoneController = new TextEditingController();
  TextEditingController _genderController = new TextEditingController();
  TextEditingController _accessRightController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  List<String> accessRights = ["Pemodal", "Pengusaha"];
  List<String> genders = ["Laki-laki", "Perempuan"];
  List<String> checkBoxs = [
    "Dengan ini saya telah membaca dan menyetujui segala Syarat & Ketentuan",
    "Dengan ini saya telah membaca dan memahami tentang Pembiayaan Musyarakah",
    "Dengan ini saya telah membaca dan memahami tentang Ketentuan Profit Loss Sharing",
  ];
  List<bool> ls = [false, false, false];

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding.top;
    return SafeArea(
      bottom: true,
      child: Container(
        height: MediaQuery.of(context).size.height - padding,
        padding: EdgeInsets.only(top: padding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
        ),
        child: Container(
          padding: EdgeInsets.only(
            // top: 38.0,
            left: 20.0,
            right: 20.0,
            // bottom: 36.0,
          ),
          child: Form(
            child: _input(context),
          ),
        ),
      ),
    );
  }

  _input(context) {
    return Container(
      child: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: GlowingOverscrollIndicator(
          axisDirection: AxisDirection.down,
          color: Colors.white10.withOpacity(0.8),
          child: _listView(),
        ),
      ),
    );
  }

  _listView() {
    return ListView(
      shrinkWrap: true,
      children: [
        SizedBox(
          height: 48.0,
        ),
        _text(
          text: 'Daftar akun',
          color: Colors.black,
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
        _text(
          text:
              'Silakan mendaftar untuk menikmati kemudahan mencari modal usaha Anda.',
          fontSize: 15.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        _text(text: 'Nama lengkap'),
        CustomFormField(
          controller: _nameController,
          keyboardType: TextInputType.name,
        ),
        SizedBox(
          height: 20.0,
        ),
        _text(text: 'Email'),
        CustomFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 20.0,
        ),
        _text(text: 'Nomor telepon'),
        CustomFormField(
          controller: _telephoneController,
          keyboardType: TextInputType.phone,
        ),
        SizedBox(
          height: 20.0,
        ),
        _text(text: 'Jenis kelamin'),
        CustomDropDown(
          items: genders,
          onChanged: (value) {
            _genderController.text = value;
            print(_genderController.text);
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        _text(text: 'Pilih hak akses'),
        CustomDropDown(
          items: accessRights,
          onChanged: (value) {
            _accessRightController.text = value;
            print(_accessRightController.text);
          },
        ),
        SizedBox(
          height: 20.0,
        ),
        _text(text: 'Kata sandi'),
        CustomFormField(
          controller: _passwordController,
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
        ),
        SizedBox(
          height: 28.0,
        ),
        _checkBox(ls),
        SizedBox(
          height: 60.0,
        ),
        CustomButton.defaultButton(
          onPressed: () {},
          title: "Register",
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          titleColors: Colors.white,
          buttonDefaultColors: Colors.green,
        ),
        SizedBox(
          height: 68.0,
        ),
      ],
    );
  }

  _checkBox(List<bool> items) {
    return Container(
      child: Column(
        children: [
          Container(
            child: ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (c, i) {
                var item = checkBoxs[i];
                Widget body;
                body = Container(
                  width: MediaQuery.of(c).size.width,
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              ls[i] = !ls[i];
                            });
                            print(ls[i]);
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Icon(
                              ls[i] == false
                                  ? Icons.check_box_outline_blank
                                  : Icons.check_box,
                              color: ls[i] == false ? Colors.grey : Colors.blue,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Container(
                          child: _text(text: "$item"),
                          width: MediaQuery.of(c).size.width,
                        ),
                      ),
                    ],
                  ),
                );
                return body;
              },
            ),
          ),
        ],
      ),
    );
  }

  _text({
    String text,
    double fontSize,
    Color color,
    FontWeight fontWeight,
    Alignment alignment,
  }) =>
      Container(
        alignment: alignment ?? Alignment.centerLeft,
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Text(
          '$text',
          softWrap: true,
          overflow: TextOverflow.visible,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: color ?? Colors.grey[600],
            fontSize: fontSize ?? 16.0,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
        ),
      );
}
