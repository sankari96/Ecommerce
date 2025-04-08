import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Termscreen extends StatefulWidget {
  const Termscreen({super.key});

  @override
  State<Termscreen> createState() => _TermscreenState();
}

class _TermscreenState extends State<Termscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'Terms & Condition',
                  style: TextStyle(
                      fontSize: 20, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28),
            child: Row(
              children: [
                Text(
                  'Lorem ipsum dolor site amet consecter',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: SizedBox(
                width: 400,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Lacus faucibus diam commodo velit dignissim urna at aliquam. Neque est at eu dictum mauris neque. Eleifend sagittis mattis amet ultrices nunc ut ac gravida proin. Adipiscing dui eu accumsan cursus tincidunt urna nunc diam. Eu a sagittis molestie erat tincidunt a montes. Mauris potenti in quis pharetra in. Proin a leo feugiat aliquet.\nVenenatis cursus tempus mi commodo pellentesque sollicitudin risus sed mauris. Ornare elementum velit potenti lorem semper ac mattis facilisi. Id ultricies gravida convallis enim vestibulum ac euismod cursus. Vel proin id metus vel feugiat. Quam ipsum sit fames risus eu netus mattis. Tempor ullamcorper suscipit at ultrices congue dignissim vitae vitae. Elementum est posuere sit eget mus condimentum. Purus et nam ridiculus urna sed.',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                      fontSize: 9.5,
                      color: Colors.black,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 28),
            child: Row(
              children: [
                Text(
                  'Lorem ipsum dolor site amet consecter',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: SizedBox(
                width: 740,
                child: Text(
                  'Ultricies amet ullamcorper quam ullamcorper cursus. At commodo sed lacus sem vitae.\nIn viverra facilisis at libero eros massa pharetra quam commodo. Rutrum eget etiam eget nisl vel scelerisque a est sed. Sagittis velit turpis pulvinar fermentum orci. In at nascetur curabitur ut. Massa morbi at sollicitudin augue. Parturient consequat enim aliquet euismod etiam lectus facilisi sollicitudin. Morbi sed lobortis in nulla venenatis quisque proin tincidunt risus. Vestibulum lorem sit ut fermentum ut maecenas in risus. Enim commodo neque at in aliquam mi. In ultrices id sed posuere odio commodo gravida nibh. Viverra luctus porta elit massa facilisis donec. Donec nullam ut viverra risus volutpat vulputate urna vestibulum. Purus habitant cras risus id nulla arcu diam senectus commodo.\nFames tellus mauris tellus id augue risus in. Vitae id posuere consequat at. Feugiat nisi ullamcorper mauris rhoncus lobortis imperdiet. Tincidunt sed est viverra ultrices feugiat pharetra. Viverra arcu mattis egestas pellentesque vitae fermentum in dapibus. Diam habitant vestibulum amet tristique maecenas elementum eu id. Malesuada pellentesque adipiscing sodales turpis neque quam sit. Nunc ullamcorper morbi tristique ac magnis mattis nisi. Mauris pellentesque bibendum massa commodo tristique. Nulla ac mauris tristique nisi laoreet pellentesque.\nPotenti auctor quam nec pretium. Faucibus malesuada feugiat justo erat nisl elit. Lorem gravida lacus blandit at ut accumsan nulla integer. Donec ipsum neque ut nibh turpis mi cras vel. Lacinia vitae faucibus pellentesque nulla fringilla elit sed dictumst. In risus blandit faucibus quisque ultrices rhoncus in vestibulum interdum.',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                      fontSize: 9.5,
                      color: Colors.black,
                      fontFamily: 'Poppins'),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
