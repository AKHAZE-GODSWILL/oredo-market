import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget{
  FirstPage({Key? key}):super(key:key);

  State<FirstPage> createState ()=> _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  
  int counter = 1;
  int shopNumber = 1;
  int allotteeCounter = 1; 
  // final fullNameController = TextEditingController();
  // final phoneController = TextEditingController();
  // final residentialController = TextEditingController();
  // final typeOfGoodsController = TextEditingController();
  // final worthOfGoodsController = TextEditingController();
  // final commmentsController = TextEditingController();

  // final squatterNameController = TextEditingController();
  // final squatterPhoneController = TextEditingController();
  // final squatterResidentController = TextEditingController();
  // final squatterGoodsTypeController = TextEditingController();
  // final squatterGoodsWorthController = TextEditingController();
  // final squatterCommentsController = TextEditingController();

  String? dropdownvalueMarket;
  String? dropdownvalueSpaceCategory = "Shop";
  String? dropdownvalueShopType;
  String? dropdownvalueAllotteType;
  String? dropdownvalueTypeOfGoods;
  String? dropdownvalueWorthOfGoods;
  String? dropdownvalueSquatter = "No"; 

  var market = [
    "Oba market",
    "New Benin Market",
    "Oliha market",
    "St Saviour market",
    "Ogida market"
  ];
  var spaceCategory = [
    "Shop",
    "Squat"
  ];

  var ShopType = [
    "Double Lock",
    "Lock Up shop",
    "Open Store",
    "Contain",
    "Eating House",
    "Complex",
    "Half Open Store"
  ];

  var typeOfAllottee = [
    "Original",
    "Transfered",
  ];
  var typeOfGoods = [
    "Food Item - crop",
    "Provision/Beverages",
    "Textile",
    "Electrical/Electronics",
    "Stationaries",
    "Food Item - animal",
    "others - specify"
  ];

  var worthOfGoods = [
    "<50,000",
    "50k - 250k",
    "250k - 500k",
    ">500k - specify"
  ];


  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shadowColor: Colors.white,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
                  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Market", style: TextStyle(fontSize: 12),),
                      SizedBox(height: 5,),
                      Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width*0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0XFFE5E7EB)
                          )
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black38,
                            ),
                            hint: Text(
                              'Select Your Market',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            items: market
                                .map((item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style:  TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: dropdownvalueMarket,
                            onChanged: (value) {
                              setState(() {
                                dropdownvalueMarket = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 20,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Space Category", style: TextStyle(fontSize: 12),),
                      SizedBox(height: 5,),
                      Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width*0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0XFFE5E7EB)
                          )
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black38,
                            ),
                            hint: Text(
                              'Select Your Spaces Category',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            items: spaceCategory
                                .map((item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style:  TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: dropdownvalueSpaceCategory,
                            onChanged: (value) {
                              setState(() {
                                dropdownvalueSpaceCategory = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),

              
              
              SizedBox(height: 20,),


              (dropdownvalueSpaceCategory == "Shop")? Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shop Type", style: TextStyle(fontSize: 12),),
                      SizedBox(height: 5,),
                      Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width*0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0XFFE5E7EB)
                          )
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black38,
                            ),
                            hint: Text(
                              'Select Your Shop Type',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            items: ShopType
                                .map((item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style:  TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: dropdownvalueShopType,
                            onChanged: (value) {
                              setState(() {
                                dropdownvalueShopType = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              )
              :SizedBox(),
              
              SizedBox(height: 20,),

              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Number of shops", style: TextStyle(fontSize: 12),),
                        SizedBox(height: 5,),
                        Container(
                          height: 48,
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                            
                          // color: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              width: 1,
                              color: Color(0XFFE5E7EB)
                            )
                          ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: Text("$counter"),
                             ),
                             Container(
                              height: 40,
                              width: 40,
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   InkWell(
                                     onTap: (){
                                       setState(() {
                                         counter++;
                                       });
                                     },
                                     child: Container(
                                      // height: 30,
                                      width: 50,
                                      child: Icon(CupertinoIcons.triangle_fill, size: 15,))),
                             
                                   
                                   InkWell(
                                     onTap: (){
                                       setState(() {
                                         if(counter==1){
                             
                                         }
                                         else{
                                           counter--;
                                         }
                                       });
                                     },
                                     child: Container(
                                      // height: 20,
                                      width: 50,
                                       child: Transform(
                                       alignment: Alignment.center,
                                       transform: Matrix4.rotationX(3.14159265359), // This rotates the icon 180 degrees vertically.
                                       child: Icon(CupertinoIcons.triangle_fill, size: 15,),
                                                                         ),
                                     ),
                                   )
                                 ],
                               ),
                             )
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10,),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Type Of Allottee", style: TextStyle(fontSize: 12),),
                      SizedBox(height: 5,),
                      Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width*0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: Color(0XFFE5E7EB)
                          )
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black38,
                            ),
                            hint: Text(
                              'Select Your Type Of Allottee',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            items: typeOfAllottee
                                .map((item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style:  TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ))
                                .toList(),
                            value: dropdownvalueAllotteType,
                            onChanged: (value) {
                              setState(() {
                                dropdownvalueAllotteType = value as String;
                              });
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            itemHeight: 40,
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 20,),

              (dropdownvalueSpaceCategory== "Shop")? Column(
                
                children: [
                Divider(),
              
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Add Allottee",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){

                        setState(() {
                          allotteeCounter++;
                        });
              
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.black
                          )
                        ),
                        child: Icon(Icons.add, color: Colors.white,),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          if(allotteeCounter> 1){
                            allotteeCounter--;
                          }
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 1,
                            color: Colors.black
                          )
                        ),
                        child: Icon(Icons.remove, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              ////////////////////////// The allottee details

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:allotteeCounter,
                itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${index+1}."),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black
                                            )
                        ),
                        child: Column(
                          children: [
                                  SizedBox(height: 20,),
                                  
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Full Name", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },
                                            keyboardType: TextInputType.text,
                                            // controller: fullNameController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Enter Your Full Name",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                SizedBox(height: 20,),
                        
                        
                                // First Name
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Phone No:", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },
                                            keyboardType: TextInputType.number,
                                            // controller: phoneController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Enter Phone Number",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                SizedBox(height: 20,),
                                  // Bio
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Residential Address", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },  
                                            keyboardType: TextInputType.multiline,
                                            textAlignVertical: TextAlignVertical.top,
                                            maxLines: null,
                                            expands: true,
                                            minLines: null,
                                            // controller: residentialController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Enter Residential Address",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(height: 20,),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Type Of Goods Sold", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          width: MediaQuery.of(context).size.width*0.95,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.black38,
                                              ),
                                              hint: Text(
                                                'Select Your Type of Goods',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                              items: typeOfGoods
                                                  .map((item) =>
                                                      DropdownMenuItem<String>(
                                                        value: item,
                                                        child: Text(
                                                          item,
                                                          style:  TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ))
                                                  .toList(),
                                              value: dropdownvalueTypeOfGoods,
                                              onChanged: (value) {
                                                setState(() {
                                                  dropdownvalueTypeOfGoods = value as String;
                                                });
                                              },
                                              buttonHeight: 40,
                                              buttonWidth: 140,
                                              itemHeight: 40,
                                            ),
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                            (dropdownvalueTypeOfGoods != null 
                            && dropdownvalueTypeOfGoods == "others - specify")?  Column(
                              children: [
                                SizedBox(height: 20,),
                      
                            // First Name
                              Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Specify The Type of Goods", style: TextStyle(fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0XFFE5E7EB)
                                        )
                                      ),
                                      child: TextFormField(
                                        // focusNode: textNode,
                                        onChanged: (value){
                                      setState(() {
                                        
                                      });
                                    },
                                        keyboardType: TextInputType.text,
                                        // controller: worthOfGoodsController,
                                        decoration: InputDecoration(
                                          focusedBorder:OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when focused
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when enabled
                                      ),
                                          hintText: "Type Of Goods",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                              ],
                            ): SizedBox(),

                             SizedBox(height: 20,),

                             Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Worth of Goods Sold", style: TextStyle(fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Container(
                                      height: 48,
                                      width: MediaQuery.of(context).size.width*0.95,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0XFFE5E7EB)
                                        )
                                      ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2(
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black38,
                                          ),
                                          hint: Text(
                                            'Select The Worth Of Your Goods',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          items: worthOfGoods
                                              .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style:  TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          value: dropdownvalueWorthOfGoods,
                                          onChanged: (value) {
                                            setState(() {
                                              dropdownvalueWorthOfGoods = value as String;
                                            });
                                          },
                                          buttonHeight: 40,
                                          buttonWidth: 140,
                                          itemHeight: 40,
                                        ),
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      
                            
                              (dropdownvalueWorthOfGoods != null 
                            && dropdownvalueWorthOfGoods == ">500k - specify")? Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Specify The Worth Of Your Goods", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },
                                            keyboardType: TextInputType.text,
                                            // controller: worthOfGoodsController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Worth of Goods",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ],
                              ):SizedBox(),
                      
                            SizedBox(height: 20,),
                      
                            // First Name
                              Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Comments", style: TextStyle(fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0XFFE5E7EB)
                                        )
                                      ),
                                      child: TextFormField(
                                        // focusNode: textNode,
                                        onChanged: (value){
                                      setState(() {
                                        
                                      });
                                    },
                                        keyboardType: TextInputType.text,
                                        // controller: commmentsController,
                                        decoration: InputDecoration(
                                          focusedBorder:OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when focused
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when enabled
                                      ),
                                          hintText: "Enter Comments",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      
                            SizedBox(height: 20,),
                      
                            // First Name
                              Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                // color: Colors.green,
                                height: 180,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.red,
                                      child: Icon(Icons.photo_size_select_actual_rounded,size: 150,color: Colors.grey,),
                                    ),
                                    Container(
                                      height: 150,
                                      width: 160,
                                      // color: Colors.pink,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                    
                                          InkWell(
                                        // onTap: (){
                                        //   Navigator.push(context, MaterialPageRoute(
                                        //     builder: (context) => FirstPage()
                                        //   ));
                                        // },
                                        child: Container(
                                          width: 150,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                          ),
                                          child: Center(
                                            child: Center(
                                              child: Text(
                                                "Take a picture of Goods",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),),
                                            ),
                                          ),
                                        ),
                                      ),
                                          SizedBox(height: 5,),
                                          Text(
                                                "OR",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10),),
                                          SizedBox(height: 5,),
                                          Container(
                                            height: 70,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              
                                            // color: Colors.blue,
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0XFFE5E7EB)
                                              )
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  // color: Colors.red,
                                                  child: Icon(Icons.cloud_outlined, size: 20,),
                                                ),
                      
                                                Container(
                                                  width: 150,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.black,
                                                  ),
                                                  child: Center(
                                                    child: Center(
                                                      child: Text(
                                                        "Upload photo of Goods",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14),),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),
                    ],
                  ),
                );
              }),

              ],
            ):SizedBox(),


            (dropdownvalueSpaceCategory== "Squat")? Column(
                
                children: [
                   Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Colors.black
                                            )
                        ),
                        child: Column(
                          children: [
                                  SizedBox(height: 20,),
                                  
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Full Name", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },
                                            keyboardType: TextInputType.text,
                                            // controller: fullNameController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Enter Your Full Name",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                SizedBox(height: 20,),
                        
                        
                                // First Name
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Phone No:", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },
                                            keyboardType: TextInputType.number,
                                            // controller: phoneController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Enter Phone Number",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        
                                SizedBox(height: 20,),
                                  // Bio
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Residential Address", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 120,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },  
                                            keyboardType: TextInputType.multiline,
                                            textAlignVertical: TextAlignVertical.top,
                                            maxLines: null,
                                            expands: true,
                                            minLines: null,
                                            // controller: residentialController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Enter Residential Address",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                      
                                SizedBox(height: 20,),

                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Type Of Goods Sold", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          width: MediaQuery.of(context).size.width*0.95,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton2(
                                              icon: Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.black38,
                                              ),
                                              hint: Text(
                                                'Select Your Type of Goods',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black54,
                                                ),
                                              ),
                                              items: typeOfGoods
                                                  .map((item) =>
                                                      DropdownMenuItem<String>(
                                                        value: item,
                                                        child: Text(
                                                          item,
                                                          style:  TextStyle(
                                                            fontSize: 14,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      ))
                                                  .toList(),
                                              value: dropdownvalueTypeOfGoods,
                                              onChanged: (value) {
                                                setState(() {
                                                  dropdownvalueTypeOfGoods = value as String;
                                                });
                                              },
                                              buttonHeight: 40,
                                              buttonWidth: 140,
                                              itemHeight: 40,
                                            ),
                                          ),
                                        ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                            (dropdownvalueTypeOfGoods != null 
                            && dropdownvalueTypeOfGoods == "others - specify")?  Column(
                              children: [
                                SizedBox(height: 20,),
                      
                            // First Name
                              Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Specify The Type of Goods", style: TextStyle(fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0XFFE5E7EB)
                                        )
                                      ),
                                      child: TextFormField(
                                        // focusNode: textNode,
                                        onChanged: (value){
                                      setState(() {
                                        
                                      });
                                    },
                                        keyboardType: TextInputType.text,
                                        // controller: worthOfGoodsController,
                                        decoration: InputDecoration(
                                          focusedBorder:OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when focused
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when enabled
                                      ),
                                          hintText: "Type Of Goods",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                              ],
                            ): SizedBox(),

                             SizedBox(height: 20,),

                             Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Worth of Goods Sold", style: TextStyle(fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Container(
                                      height: 48,
                                      width: MediaQuery.of(context).size.width*0.95,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0XFFE5E7EB)
                                        )
                                      ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2(
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black38,
                                          ),
                                          hint: Text(
                                            'Select The Worth Of Your Goods',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          items: worthOfGoods
                                              .map((item) =>
                                                  DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style:  TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ))
                                              .toList(),
                                          value: dropdownvalueWorthOfGoods,
                                          onChanged: (value) {
                                            setState(() {
                                              dropdownvalueWorthOfGoods = value as String;
                                            });
                                          },
                                          buttonHeight: 40,
                                          buttonWidth: 140,
                                          itemHeight: 40,
                                        ),
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      
                            
                              (dropdownvalueWorthOfGoods != null 
                            && dropdownvalueWorthOfGoods == ">500k - specify")? Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Specify The Worth Of Your Goods", style: TextStyle(fontSize: 12),),
                                        SizedBox(height: 5,),
                                        Container(
                                          height: 48,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(
                                              width: 1,
                                              color: Color(0XFFE5E7EB)
                                            )
                                          ),
                                          child: TextFormField(
                                            // focusNode: textNode,
                                            onChanged: (value){
                                          setState(() {
                                            
                                          });
                                        },
                                            keyboardType: TextInputType.text,
                                            // controller: worthOfGoodsController,
                                            decoration: InputDecoration(
                                              focusedBorder:OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when focused
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none, // Remove the border when enabled
                                          ),
                                              hintText: "Worth of Goods",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ],
                              ):SizedBox(),

                              SizedBox(height: 20,),
                      
                            // First Name
                              Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Comments", style: TextStyle(fontSize: 12),),
                                    SizedBox(height: 5,),
                                    Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          width: 1,
                                          color: Color(0XFFE5E7EB)
                                        )
                                      ),
                                      child: TextFormField(
                                        // focusNode: textNode,
                                        onChanged: (value){
                                      setState(() {
                                        
                                      });
                                    },
                                        keyboardType: TextInputType.text,
                                        // controller: commmentsController,
                                        decoration: InputDecoration(
                                          focusedBorder:OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when focused
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none, // Remove the border when enabled
                                      ),
                                          hintText: "Enter Comments",
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      
                            SizedBox(height: 20,),
                      
                            // First Name
                              Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                // color: Colors.green,
                                height: 180,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.red,
                                      child: Icon(Icons.photo_size_select_actual_rounded,size: 150,color: Colors.grey,),
                                    ),
                                    Container(
                                      height: 150,
                                      width: 160,
                                      // color: Colors.pink,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                    
                                          InkWell(
                                        // onTap: (){
                                        //   Navigator.push(context, MaterialPageRoute(
                                        //     builder: (context) => FirstPage()
                                        //   ));
                                        // },
                                        child: Container(
                                          width: 150,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                          ),
                                          child: Center(
                                            child: Center(
                                              child: Text(
                                                "Take a picture of Goods",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14),),
                                            ),
                                          ),
                                        ),
                                      ),
                                          SizedBox(height: 5,),
                                          Text(
                                                "OR",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10),),
                                          SizedBox(height: 5,),
                                          Container(
                                            height: 70,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              
                                            // color: Colors.blue,
                                              borderRadius: BorderRadius.circular(8),
                                              border: Border.all(
                                                width: 1,
                                                color: Color(0XFFE5E7EB)
                                              )
                                            ),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  // color: Colors.red,
                                                  child: Icon(Icons.cloud_outlined, size: 20,),
                                                ),
                      
                                                Container(
                                                  width: 150,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    // color: Colors.black,
                                                  ),
                                                  child: Center(
                                                    child: Center(
                                                      child: Text(
                                                        "Upload photo of Goods",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 14),),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20,),
                    ],
                  ),
                )

              ],
            ):SizedBox(),

            SizedBox(height: 20,),
                
            ],
          ),
        ),
      ),
    );
  }
}