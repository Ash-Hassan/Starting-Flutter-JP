void main()
{
  var a=5;
  var b=10;
  print("a is ${a}");
  print("b is ${b}");
  
  
  //Arthimatic Operators
  print("\nAddition: ${a+b}  ==> (a=5 + b=10)");
  print("Subtraction: ${a-b}  ==> (a=5 - b=10)");
  print("Multiplication: ${a*b}  ==> (a=5 * b=10)");  
  print("Division: ${a/b}  ==> (a=5 / b=10)");
  print("Division with integer only Answer: ${a~/b}  ==> (a=5 / b=10) => int ans");  //Only return int without decimal
  print("Modulus: ${a%b}  ==> (a=5 % b=10)");   //returns Remainder
  print("Post-Increment: ${a++}  ==> print 5 then a=6");  //6 but after printing icrement happend
  print("Pre-Increment: ${++a}  ==> (a=7)");
  print("Add with Assignment: ${a+=2}  ==> (a=a+2) => (a=7+2)");
  print("Subtract with Assignment: ${a-=2}  ==> (a=a-2) => (a=9-2)\n");
  print("Mul with Assignment: ${b*=2}  ==> (b=b*2) => (a=7+2)");
  print("Divide with Assignment: ${b~/=5}  ==> (b=b/2) => (a=9-2)\n");
  
  //Conditional Operators
  print(a>b); //greater
  print(a<b); //lesser
  print(a>=b);  //greater than equal to
  print(a<=b);  //lesser than equal to
  print(a==b);  //equals?
  print(a!=b);  //not equal
  
  //Logical Operators
  print(a<b && 1==1); //and (both true => true and vice versa)
  print(a>b || 1==1); // or (any true => true)
  print(!(a>=b));  //not (true=>False and vice versa)

}