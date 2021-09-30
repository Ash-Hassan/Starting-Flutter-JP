void main() {
  
  //Marksheet
  
  var name="Hassan";
  var age=21;
  var marks=[92,86,95,78,99];
  
  var total = 0;
  
  print("Student Name: ${name}");
  print("Student Age: ${age}\n");
  
  for (int i=0;i<marks.length;i++){
    print("Marks secured for ${i+1} subject are ${marks[i]}");
    total+=marks[i];
  }
  print("Total marks Obtained: ${total} out of ${marks.length*100}\n");
  
  var perc=(total/(marks.length*100))*100;
  
  print("Percentage: ${perc}%");
  
  if (perc<60){
    print("Grade: F garde");
  }
  else if(perc >= 90 && perc<=100){
    print("Grade: A garde");
  }
  else if(perc >= 80){
    print("Grade: B garde");
  }
  else if(perc >= 70){
    print("Grade: C garde");
  }
  else if(perc >= 60){
    print("Grade: D garde");
  }
  else {
    print("Error");
  }
  
}
