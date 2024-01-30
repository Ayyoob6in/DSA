void main(List<String> args) {
  List<int>list=[1,2,3,4,5,6,7,8,9];
  int target = 6;
  print(binery(list: list, target: target));
  print(linear(list, target));
  int minElement = findMin(list);
  print("Minimum element in the rotated array: $minElement");
}
String binery({required List<int>list,required int target}){
 int start = 0;
 int end = list.length-1;
 while(start<=end){
  int mid = ((start+end)/2).floor();
  if(target==list[mid]){
    return "finded at $mid position";
  }else if(target<list[mid]){
    end = mid-1;
  }else{
    start =mid+1;
  }
 }
 return "no such a value";  
}

String linear(List<int>arr,target){
  for(int i=0;i<arr.length-1;i++){
    if(arr[i]==target){
       return "value founded at ${arr[i-1]}";
    }
  }
  return "null";
  
}


int findMin(List<int> rotatedArray) {
  int low = 0;
  int high = rotatedArray.length - 1;

  while (low < high) {
    int mid = (low + high) ~/ 2;

    if (rotatedArray[mid] > rotatedArray[high]) {
      low = mid + 1; // Minimum is in the right half
    } else {
      high = mid; // Minimum is in the left half or at mid
    }
  }

  return rotatedArray[low];
}


