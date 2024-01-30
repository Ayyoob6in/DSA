
void main(List<String> args) {
  List<int>array=[3,5,8,9,7,8,9,1,2,3,4,5];
  //quickSort(array: array, low: 0, high: array.length-1);
  //selectionSort(array: array);
  //bubbleSort(array);
  //insertionSort(array: array);
  mergeSort(array);
  print(array);
}
//Quick Sort=====================>
int partition({required List<int>array, required int low, required int high}){
   int pivot = array[high];
   int i = low-1;
   for(int j=low;j<high;j++){
    if(array[j]<pivot){
      i++;
      int temp = array[j];
      array[j] = array [i];
      array[i]=temp;
    }
   }

   int temp = array[i+1];
   array[i+1] = array[high];
   array[high] = temp;

   return i+1;
}
quickSort({required List<int>array, required int low, required int high}){
  if(low<high){
    int par = partition(array: array, low: low, high: high);

    quickSort(array: array, low: low, high: par-1);
    quickSort(array: array, low: par+1, high: high);
  }
}
//SelectionSort=====================>
selectionSort({required List<int>array}){
  int size = array.length-1;
  for(int i=0;i<size;i++){
    for(int j=i+1;j<size;j++){
      if(array[i]>=array[j+1]){
        int temp = array[i];
        array[i] = array[j+1];
        array[j+1] = temp;
      }
    }
  }
}
//bubbleSort================================>

bubbleSort(List<int>array){
  int s = array.length;
  for(int i=0;i<s;i++){
    for(int j=0;j< s - 1 - i ; j++){
      if(array[j]>=array[j+1]){
        int temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
      }
    }
  }
}
//insertionSort==================================>
insertionSort({required List<int>array}){
  for(int i=0;i<array.length;i++){
    int temp = array[i];
    int j = i-1;
    while(j>=0 && array[j]>temp){
      array[j+1] = array[j];
      j--;
    }
    array[j+1] = temp;
  }
}
//MergeSort==========================================>
mergeSort(List<int>array){
  if(array.length<=1){
    return;
  }
  int middle = array.length ~/2;

  List<int>left = array.sublist(0,middle);
  List<int>right= array.sublist(middle);

  mergeSort(left);
  mergeSort(right);

  merge(array, left, right);

}
merge(List<int>array,List<int>left,List<int>right){
  int i=0,j=0,k=0;
  while(i<left.length&&j<right.length){
    if(left[i]<right[j]){
      array[k] = left[i];
      i++;
    }else{
      array[k] = right[j];
      j++;
    }
    k++;
  }
  while(i<left.length){
    array[k] = left[i];
    i++;
    k++;
  }
  while(j<right.length){
    array[k] = right[j];
    j++;
    k++;
  }
}


