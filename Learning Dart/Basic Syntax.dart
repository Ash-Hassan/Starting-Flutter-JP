main() { 
   print("Hello World!"); 
    
  //Data types 
   var fname = 'Muhammad';
   dynamic mname = "Hassan";
   String lname = 'Zaheer'; 
   
   final naam=fname+mname+lname;
   const cnic=42201;
  
   int num = 5;
   double x=1.2;
   var i=0; 
   var factorial = 1;
   
   var planets = ["Mars","Earth","Jupiter"]; 
   bool test=true;
  
  
   //Loops
    //Foreach
   for (var planet in planets) { 
      print(planet); 
   } 
    //For loop
   for (i = 0; i < 5; i++) { 
      print("loop: ${i}"); 
      } 
    //While loop
   while(num >=1) { 
      factorial = factorial * num; 
      num--; 
   } 
   print("The factorial  is ${factorial}"); 
   

  
   //If Else if Else
   if(i==5){
     print("Loop Finished");
   }
   else if(i==0){
     print("Loop not started");
   }
   else{
     print("Error");
   }
  
   //Switch Case
   var grade = "A"; 
   switch(grade) { 
      case "A": {  print("Excellent"); } 
      break; 
     
      case "B": {  print("Good"); } 
      break; 
     
      case "C": {  print("Fair"); } 
      break; 
     
      case "D": {  print("Poor"); } 
      break; 
     
      default: { print("Invalid choice"); } 
      break; 
   } 
}