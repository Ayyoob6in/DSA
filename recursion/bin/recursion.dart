// int factorial(int n) {
//   if (n == 0 || n == 1) {
//     return 1;
//   } else {
//     return n * factorial(n - 1);
//   }
// }


// int sumOfDigits(int n) {
//   if (n == 0) {
//     return 0;
//   } else {
//     return n % 10 + sumOfDigits(n ~/ 10);
//   }
// }

// int sumOfNaturalNumbers(int n) {
//   if (n == 0) {
//     return 0;
//   } else {
//     return n + sumOfNaturalNumbers(n - 1);
//   }
// }

// void main() {
//   int n = 5;
//   print("Sum of first $n natural numbers: ${sumOfNaturalNumbers(n)}");
//     int n1 = 5;
//   print("Factorial of $n1: ${factorial(n)}");
// int num = 123;
//   print("Sum of digits of $num: ${sumOfDigits(num)}");
// }

bool palindrome(String str){
  for(int i=0;i<str.length ~/2;i++){
    if(str[i]!=str[str.length-1-i]){  
      return false;

    }
  }
  return true;
}
void main(List<String> args) {
  //String str  = "hello";
  String str2 = "malayalam";
  print(palindrome(str2));
}


