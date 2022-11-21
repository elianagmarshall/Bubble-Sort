String[] readNumbers; //array of strings to read the data from the file
String joinNumbers; //string to join the data from the file
String[] splitNumbers; //array of strings to split the data from the file
int[] displayNumbers; //array of integers to convert the data from the file to integers

void setup() {
  readNumbers = loadStrings("random_numbers.csv"); //loads the data from the file
  joinNumbers = join(readNumbers, ","); //joins the data from the file
  splitNumbers = split(joinNumbers, ","); //splts the data from the file
  displayNumbers = int(splitNumbers); //converts the data from the file to integers
  
  bubbleSort();
  
  splitNumbers = str(displayNumbers); //converts the data from the file from integers back to strings
  saveStrings("random_numbers.csv",splitNumbers); //saves the sorted data to the file

  println(displayNumbers);
}

void bubbleSort() { //sorts the values of displayNumbers in ascending order
  for (int index1=0; index1<splitNumbers.length-1; index1++) { //index1 variable has an initial value of 0, must be less than the length of splitNumbers array minus 1, and increases by increments of 1
    for (int index2=0; index2<splitNumbers.length-index1-1; index2++) { //index2 variable has an initial value of 0, must be less than the length of splitNumbers array minus index1 minus 1, and increases by increments of 1
      if (displayNumbers[index2] > displayNumbers[index2+1]) { //if a number in the displayNumbers array is greater than the next number in the array
        int temporaryNumber=displayNumbers[index2]; //the value of the greater number is temporarily stored
        displayNumbers[index2]=displayNumbers[index2+1]; //the value of the lesser number replaces the position of the greater number
        displayNumbers[index2+1]=temporaryNumber; //the value of the greater number moves to the original position of the lesser number
      }
    }
  }
}
