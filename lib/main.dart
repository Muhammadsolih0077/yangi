import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Asos(),
  ));
}

class Item {
  String item;
  String rasm;
  String? text;
  String? text2;
  String? text3;
  double? container_width;
  double? container_height;
  Color? color;

  Item({
    required this.item,
    required this.rasm,
    this.text,
    this.text2,
    this.text3,
    this.container_height,
    this.container_width,
    this.color,
  });
}

class Asos extends StatefulWidget {
  const Asos({super.key});

  @override
  State<Asos> createState() => _AsosState();
}

class _AsosState extends State<Asos> {
  int _currentIndex = 2;
  String searchQuery = "";

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Item> items = [
    Item(
      item: 'Blue',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 270,
      container_width: 160,
      color: const Color.fromARGB(255, 4, 121, 217),
    ),
    Item(
      item: 'White',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 220,
      container_width: 160,
      color: const Color.fromARGB(255, 148, 200, 241),
    ),
    Item(
      item: 'Black',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 220,
      container_width: 160,
      color: const Color.fromARGB(255, 234, 218, 66),
    ),
    Item(
      item: 'Brown',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 270,
      container_width: 160,
      color: const Color.fromARGB(255, 234, 69, 124),
    ),
    Item(
      item: 'Amber',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 270,
      container_width: 160,
      color: Colors.purple,
    ),
    Item(
      item: 'Red',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 220,
      container_width: 160,
      color: Colors.orange,
    ),
    Item(
      item: 'Yellow',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 220,
      container_width: 160,
      color: Colors.brown,
    ),
    Item(
      item: 'Green',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 270,
      container_width: 160,
      color: Colors.cyan,
    ),
    Item(
      item: 'Grey',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 270,
      container_width: 160,
      color: Colors.teal,
    ),
    Item(
      item: 'Purple',
      rasm: "rasm/krasofka.png",
      text: "\$ 220.oo",
      text2: "A pair",
      text3:
          "Additionally, shoes have often evolved into many different designs, such as high heels, which are most commonly worn by women during fancy occasions.",
      container_height: 220,
      container_width: 160,
      color: Colors.grey,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Item> filteredItems = items.where((item) {
      return item.item.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Icon(Icons.menu, size: 35),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 15),
            child: Text(
              "Nike Shoe Store",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.8,
              ),
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Kirish(item: filteredItems[index]),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: filteredItems[index].color,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          height: filteredItems[index].container_height,
                          width: filteredItems[index].container_width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          filteredItems[index].item,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          filteredItems[index].text2!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    Icon(CupertinoIcons.checkmark_alt_circle,
                                        color: Colors.white),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 12, bottom: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          filteredItems[index].text!,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: -10,
                          bottom: 40,
                          child: Container(
                            height: 140,
                            width: 150,
                            child: Image.asset(
                              filteredItems[index].rasm,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.trending_up, 0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(CupertinoIcons.heart, 1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(Icons.home_filled, 2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(CupertinoIcons.shopping_cart, 3),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildNavIcon(CupertinoIcons.gear_big, 4),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, int index) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.blue : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: _currentIndex == index ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class Kirish extends StatelessWidget {
  final Item item;

  const Kirish({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 300),
                  child: Container(
                    height: 600,
                    width: double.infinity,
                    color: item.color,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back_ios),
                              ),
                              Icon(Icons.menu, size: 35),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Container(
                            height: 220,
                            width: 220,
                            decoration: BoxDecoration(
                              image:
                                  DecorationImage(image: AssetImage(item.rasm)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: Row(
                          children: [
                            Text(
                              item.item,
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 4),
                            Text(
                              "shoe",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1 Pair",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: const Color.fromARGB(255, 90, 89, 89)),
                            ),
                            Text(
                              item.text!,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 60, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Product Description",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 20),
                            Text(
                              item.text3!,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: const Color.fromARGB(255, 90, 89, 89)),
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
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.heart_solid,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Uchch(),
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Uchch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_new))),
        backgroundColor: Colors.grey,
        body: CardForm(),
      ),
    );
  }
}

class CardForm extends StatefulWidget {
  @override
  _CardFormState createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvcController = TextEditingController();
  final TextEditingController cardholderNameController =
      TextEditingController();
  bool saveCard = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Container(
          height: 380,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Add New Card',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8, left: 8, right: 8, bottom: 20),
                child: Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
              ),
              TextField(
                controller: cardNumberController,
                maxLength: 16,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Card number',
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: expiryDateController,
                      decoration: InputDecoration(
                        labelText: 'Expiry date',
                        hintText: 'MM/YY',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextField(
                      controller: cvcController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'CVC/CVV',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: cardholderNameController,
                decoration: InputDecoration(
                  labelText: 'Cardholder name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: saveCard,
                    onChanged: (bool? value) {
                      setState(() {
                        saveCard = value!;
                      });
                    },
                  ),
                  Text('Save card'),
                ],
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NextPage(
                          cardNumber: cardNumberController.text,
                          expiryDate: expiryDateController.text,
                          cvc: cvcController.text,
                          cardholderName: cardholderNameController.text,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 45,
                    child: Center(
                      child: Text(
                        "Add card",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 110, 199),
                      borderRadius: BorderRadius.circular(10),
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
}

class NextPage extends StatelessWidget {
  final String cardNumber;
  final String expiryDate;
  final String cvc;
  final String cardholderName;

  NextPage({
    required this.cardNumber,
    required this.expiryDate,
    required this.cvc,
    required this.cardholderName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 320,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card number",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      cardNumber,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Cardholder name",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      cardholderName,
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20),
                  
                    Text(
                      "ALOQABANK",
                      style: TextStyle(color: Colors.white,fontSize: 20),
                    ),
                  ],
                ),
              ),
              Column(

                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

 Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "UZCARD",
                      style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child: Text(
                      "CVV",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Text(
                      cvc,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
