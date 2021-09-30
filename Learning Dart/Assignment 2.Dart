void main() {
  print("Question # 1 \n");
  print("Answered in Pdf File");
  
  print("\nQuestion # 2 \n");
  print("Answered in Pdf File");
  
  print("\nQuestion # 3 \n");
  
  var ticket_price=600;
  var n_tickets=5;
  print("Cost of buying 5 tickets to a movie is ${ticket_price*n_tickets}");
  
  print("\nQuestion # 4 \n");
  
  var lst1=[1,2,3,4,5,6,7] ;
  var lst2=[3,5,6,7,9,10];
  
  //First Method
  print(lst1.where((e)=>!lst2.contains(e)).toList());
  
  //Seond Method
  for(int i=0;i<lst2.length;i++){
    if (lst1.contains(lst2[i])){
      lst1.remove(lst2[i]);
    }
  }
  print(lst1);
  
  print("\nQuestion # 5 \n");
  print("Answered in Pdf File");
  
  print("\nQuestion # 6 \n");
  print("Answered in Pdf File");
  
  print("\nQuestion # 7 \n");
  
  var arr1=List.generate(10,(index)=>(index+1)*7);
  var arr2=List.generate(10,(index)=>(index+1));
  
  var dict=Map.fromIterables(arr2,arr1);
  for(int i=0;i<10;i++){
    print("7 x ${i+1} = ${dict[i+1]}");
  }
  
  print("\nQuestion # 8 \n");
  
  var pass="abcd1234";
  var input="abcd"; //input condition
  
  if (input==null || input==""){
    print("Please enter your password");
  }
  else if(input==pass){
    print("Correct! The password you entered matches the original password");
  }
  else{
    print("Incorrect password");
  }
  
  print("\nQuestion # 9 \n");
  
  var stds=["Hassan","Hyder","Bilal"];
  var scores=[450,400,350];
  
  stds.forEach((name)=>print("${name} secured ${scores[stds.indexOf(name)]} marks out of 500 and got ${(scores[stds.indexOf(name)]/500)*100} %"));

  print("\nQuestion # 10 \n");
  
  int abc=5;
  String _def="hellow";
  double $map=2.2;
  bool bol1=true;
  num m_n_o=12;
  
  /*
  int 1abc=5;
  String -def="hellow";
  double Map=2.0;
  bool &bol=False;
  num M-N-O=12;
  */
  print("Check code for decleration of variables");
  
  print("\nQuestion # 11 \n");
  
  var word="Hyderabad";
  print(word);
  word=word.replaceAll("Hyder","Islam");
  print(word);
  
  print("\nQuestion # 12 \n");
  
  var custName="Hassan";
  var crntMonth="jan";
  var no_Units=400;
  var chrgs_unit=20.33;
  var netPayable=double.parse((no_Units*chrgs_unit).toStringAsFixed(2));
  var lateSurcharge=500;
  var grossPayable=double.parse((netPayable+lateSurcharge).toStringAsFixed(2));
  
  print("Customer Name: ${custName}\nCurrent Month: ${crntMonth}\nNumber of units: ${no_Units}\nCharges per unit: ${chrgs_unit} PKR\nNet Amount Payable (within Due Date): ${netPayable} PKR\nLate Payment Surcharge: ${lateSurcharge} PKR\nGross Amount Payable (after Due Date): ${grossPayable} PKR");
  
  print("\nQuestion # 13 \n");
  
  var now = DateTime.now();
  if (now.day<16){
    print("First fifteen days of the month");
  }
  else{
    print("Last days of the month");
  }
  
}