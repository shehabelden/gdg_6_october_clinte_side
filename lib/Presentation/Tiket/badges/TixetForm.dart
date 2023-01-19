import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg_6_october/Presentation/Main_Widget/Auth_Field.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/cubt/cubt.dart';
import 'package:gdg_6_october/Presentation/Tiket/cubt/state/state.dart';
import 'package:gdg_6_october/models/Tiket/Tiketmodel.dart';
TextEditingController name=TextEditingController();
TextEditingController city=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController phoneNumber=TextEditingController();
List controller=[name,city,phoneNumber,email];
List label=["name","city","phone number","email"];
class TiketFormMainBadge extends StatelessWidget {
  const TiketFormMainBadge({Key? key}) : super(key:  key);
  @override
  Widget build(BuildContext context) {
    var cubte=TiketCubt.get(context);
    TiketModel tiketModel =  TiketModel(
      // id: phoneNumber.text,
      name: name.text,
      email: email.text,
      phoneNumber: phoneNumber.text,
      city:city.text,
      gender:cubte.gender,
      event:8,
    );
    return BlocBuilder<TiketCubt,BaseTiketState>(
      builder: (context,i) {
        return Material(
          child: Column(
            children: [
              SizedBox(
                height: 600,
                child: authField(
                  label.length,
                  MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height,
                  label,
                  controller,
                ),
              ),
              DropdownButton<String>(
                value:cubte.gender ,
                items:
              cubte.genderList.map((iteam) =>DropdownMenuItem(
                  value: iteam,
                  child: Text(iteam)),
              ).toList(),
                onChanged:(iteam)=>cubte.genderFanc(iteam),),
              InkWell(
                onTap: () {
                  cubte.postFormTiket("tiket/",tiketModel.toMap());
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Container(
                    height:  60,
                    width:  180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color:Colors.black,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child:const Text("check her",style: TextStyle(
                        color:Colors.white
                    )
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
