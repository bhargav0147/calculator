import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String org = "";
  dynamic fnl = "";
  dynamic est = 0;
  List c1 = [Colors.black12, Colors.redAccent];
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  child: Text(
                    "$org",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 15),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "$fnl",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 35),
                  ),
                ),
              ),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      org = "";
                      fnl = "";
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffFF5A66),
                    ),
                    child: Center(
                      child: Text(
                        "AC",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        org = org + "%";
                      });
                    },
                    child: box("%")),
                InkWell(
                    onTap: () {
                      setState(() {
                        org = org + "/";
                      });
                    },
                    child: box1("/")),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "7";
                              });
                            },
                            child: box("7")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "4";
                              });
                            },
                            child: box("4")),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "1";
                              });
                            },
                            child: box("1")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "00";
                              });
                            },
                            child: box("00")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "8";
                              });
                            },
                            child: box("8")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "5";
                              });
                            },
                            child: box("5")),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "2";
                              });
                            },
                            child: box("2")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "0";
                              });
                            },
                            child: box("0")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "9";
                              });
                            },
                            child: box("9")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "6";
                              });
                            },
                            child: box("6")),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "3";
                              });
                            },
                            child: box("3")),
                        InkWell(onTap: () {}, child: box(".")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "*";
                              });
                            },
                            child: box1("*")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "-";
                              });
                            },
                            child: box1("-")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                org = org + "+";
                              });
                            },
                            child: box1("+")),
                        InkWell(onTap: () {
                            String frist ="", last = "";
                            int n=0;
                            for (int i=0;i<org.length;i++)
                              {
                                if (org[i]!="+" && org[i]!="-" && org[i]!="*" && org[i]!="/" && org[i]!="%")
                                  {
                                    frist=frist+org[i];
                                  }else{
                                  n=i;
                                  break;
                                }
                              }
                            for(int j=n+1;j<org.length;j++)
                              {
                                last=last+org[j];
                              }
                            switch(org[n])
                            {
                              case "+":
                                {
                                  setState(() {
                                    fnl=int.parse(frist)+int.parse(last);
                                  });
                                  break;
                                }
                              case "*":
                                {
                                  int a=int.parse(frist);
                                  int b=int.parse(last);
                                  setState(() {
                                    fnl=a*b;
                                  });
                                  break;
                                }
                              case "-":
                                {
                                  setState(() {
                                    fnl=int.parse(frist)-int.parse(last);
                                  });
                                  break;
                                }
                              case "/":
                                {
                                  int a=int.parse(frist);
                                  int b=int.parse(last);
                                  setState(() {
                                    fnl=a/b;
                                  });
                                  break;
                                }
                              case "%":
                                {
                                  int a=int.parse(frist);
                                  int b=int.parse(last);
                                  setState(() {
                                    fnl=a*b/100;
                                  });
                                  break;
                                }
                            }
                        }, child: Container(
                          height: 70,width: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffFF5A66),
                            shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Text(
                              "=",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget box(String no) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          "$no",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontSize: 20,
            color: Colors.black
          ),
        ),
      ),
    );
  }
  Widget box1(String no) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          "$no",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            fontSize: 20,
            color: Color(0xffFF5A66)
          ),
        ),
      ),
    );
  }

}
