
import 'dart:io';

void main(){
  
//QUESTION #01:

List<String> ballList = ["bilal","ali","owais","bilal","owais"];
  ballList = List.of(ballList.toSet());
 
  print(ballList);


//QUESTION #02:

    var list1 = [1, 2, 3, 4, 5, 6, 7];
    var list2 = [3, 5, 6, 7, 9, 10];
    list1.removeWhere((e) => list2.contains(e));
    print(list1);
  

//QUESTION #03:

 var arr = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  
  var lst = List.of(arr.where((e)=>e%2==0));
  
  print(lst);

//QUESTION #04:
  
  print("Enter number to check: ");
  var inpt= int.parse(stdin.readLineSync());

  bool notprime=true;
  
  for(int i=2;i<inpt;i++){
    if(inpt%i==0){
      notprime=false;
      break;
    }
  }
  
  if (notprime==false){
    print("Not a Prime Number");
  }
  else{
    print("Its a Prime Number");
  }

//QUESTION #05:
  
  int num = 7;
  for (int i = 1; i <= 15; i++)
  {
    int res = num * i;
    print("$num * $i = $res");
  }




//QUESTION #06:

    List<dynamic> fruits = ["apple", "banana", "mango", "orange", "strawberry"];    
    for(int i = 0; i < fruits.length; i++)
    {
        print(fruits[i]);
    }

//QUESTION #07:
  
 for(int i=1;i<=100;i++){
    print(5*i);
  }


//QUESTION #08:

    double tempC = 32;
    double tempF = 98;
    double cels = (tempF - 32) * .5556;
    double ferhn = (tempC * 1.8) + 32;
    print("$cels degree celsius");
    print("$ferhn degree Fahrenheit");

//QUESTION #09:

  print("Enter 1st number for calculation: ");
  var num1 = int.parse(stdin.readLineSync());

  print("Enter 2nd number for calculation: ");
  var num2 = int.parse(stdin.readLineSync());
  
  print("Enter desired operation for calculation: ");
  var opr = stdin.readLineSync();
  
  var result;
  if (opr=="+"){
     result=num1+num2;
  }
  else if (opr=="-"){
     result=num1-num2;
  }
  else if (opr=="*"){
     result=num1*num2;
  }
  else if (opr=="/"){
     result=num1/num2;
  }
  else{
     print('Wrong choice!');
  }
  print('The Answer is ${result}');

//QUESTION #10:

  print("Enter one character: ");
  int charac = stdin.readByteSync();

  if (charac==97|| charac==101|| charac==105|| charac==111|| charac==117){
     print("vowel");
  }
  else if (charac==97-32|| charac==101-32|| charac==105-32|| charac==111-32|| charac==117-32){
     print("vowel");
  }
  else{
     print("Not vowel");
  }	
}

