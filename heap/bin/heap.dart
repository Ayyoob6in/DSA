class MinHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value);
    heapify();
  }

  void heapify() {
    int index = heap.length - 1;
    while (index > 0) {
      int parent = (index - 1) ~/ 2;
      if (heap[index] < heap[parent]) {
        swap(index, parent);
        index = parent;
      } else {
        break;
      }
    }
  }

  void heapifyDown(int index) {
    int leftChild = index * 2 + 1;
    int rightChild = index * 2 + 2;
    int smallest = index;

    if (leftChild < heap.length && heap[leftChild] < heap[smallest]) {
      smallest = leftChild;
    }
    if (rightChild < heap.length && heap[rightChild] < heap[smallest]) {
      smallest = rightChild;
    }
    if (smallest != index) {
      swap(index, smallest);
      heapifyDown(smallest);
    }
  }

  void delete(int data) {
    int index = heap.indexOf(data);
    if (index != -1) {
      int lastElement = heap.removeLast();
      if (index < heap.length) {
        heap[index] = lastElement;
        heapifyDown(index);
      }
    }
  }

  void swap(int index, int parent) {
    int temp = heap[index];
    heap[index] = heap[parent];
    heap[parent] = temp;
  }

  // Heap sort function
  void heapSort() {
    int n = heap.length;

    // Build max heap
    for (int i = (n ~/ 2 - 1); i >= 0; i--) {
      heapifyDown(i);
    }

    // Extract elements one by one from the heap
    for (int i = n - 1; i > 0; i--) {
      swap(0, i);
      heapifyDown(0);
    }
  }
}

void main(List<String> args) {
  MinHeap heap = MinHeap();
  heap.insert(20);
  heap.insert(30);
  heap.insert(40);
  heap.insert(50);

  print("Original Heap: ${heap.heap}");

  heap.heapSort();

  print("Sorted Array: ${heap.heap}");
}

