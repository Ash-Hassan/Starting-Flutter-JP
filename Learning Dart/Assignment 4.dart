void main() {
  print("Question #1\n");
  print("SS is saved at: https://drive.google.com/file/d/1ZNpxEQVz_dzi40aGnVSaPhGjpO_Prht5/view?usp=sharing");
  print("\nQuestion #2\n");
  Q2(7);
  print("\nQuestion #3\n");
  Q3(2);
  print("\nQuestion #4\n");
  Q4(["Hassan", "Zaheer", "Hyder"], [50, 70, 90]);
  print("\nQuestion #5\n");
  Q5 q5=Q5();
  q5.ans("M.Hassan Zaheer");
  print("\nQuestion #7\n");
  Q7 q7=Q7(name:"Hassan",age:21,education: "BSCS");
  q7.details();
  print("\nQuestion #8\n");
  Q8 q8=Q8();
  q8.ans("M.Hassan Zaheer");
}

void Q2(num n1) {
  for (int i = 1; i <= 10; i++) {
    print("${n1} x ${i} = ${n1 * i}");
  }
}

void Q3(num n2) {
  List<double> lst = [2, 4, 6, 8, 9];
  print("Original List: ${lst}");
  for (int i = 0; i < lst.length; i++) {
    lst[i] = lst[i] / n2;
  }
  print("List After dividing by $n2: $lst");
}

void Q4(List<String> names, List<num> marks) {
  //Marksheet
  for (int i = 0; i < names.length; i++) {
    print("Student Name: ${names[i]}\nStudent Marks: ${marks[i]}");
    if (marks[i] < 60) {
      print("Grade: F garde");
    } else if (marks[i] >= 90 && marks[i] <= 100) {
      print("Grade: A garde");
    } else if (marks[i] >= 80) {
      print("Grade: B garde");
    } else if (marks[i] >= 70) {
      print("Grade: C garde");
    } else if (marks[i] >= 60) {
      print("Grade: D garde");
    } else {
      print("Error");
    }
  }
}
class Q5{
  var greet="Hellow";
  void ans(String name){
    print("$greet $name");
  }
}

class Q7{
  late var name;
  late var age;
  late var education;
  
  Q7({required this.name,required this.age,required this.education});
  
  void details(){
    print("Name: $name\nAge: $age\nEducation: $education");
  }
  
}
class Q8 extends Q5{
  //Child class of Q5 class so it will inherit Q5 methods;
}