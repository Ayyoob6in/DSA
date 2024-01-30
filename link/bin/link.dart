// class Node{
//   Node? next;
//   Node? prev;
//   int data;
//   Node(this.data);
// }
// class LinkedList{
//   Node? head;
//   Node? tail;

//   addNode(int data){
//     Node newNode = Node(data);
//     if(head==null){
//       head=newNode;
//     }else{
//       tail!.next = newNode;
//       newNode.prev = tail;
       
//     }
//     tail = newNode;
   
//   }

//   disply(){
//     Node? temp = tail;
//     if(temp==null){
//       return;
//     } 
//     while(temp!=null){
//       print(temp.data);
//       temp=temp.prev;
//     }
//   }
//   delete(int data){
//     Node? temp = head;
//     Node? prev;
//     if(temp==null){
//       return;
//     }
//     // ignore: unnecessary_null_comparison
//     if(temp!=null&&temp.data==data){
//       head=temp.next;
//       return;
//     }
//     while(temp!=null&&temp.data!=data){
//       prev = temp;
//       temp=temp.next;
//     }
//     if(tail==temp){
//       tail = prev;
//       tail!.next=null;
//       return;
//     }
//     prev!.next = temp!.next;
//   }
//   insert(int nextTo, int data){
//     Node newNode = Node(data);
//     Node? temp = head;
//     if(temp==null){
//       return;
//     }
//     while(temp!=null&&temp.data!=nextTo){
//       temp = temp.next;
//     }
//     if(temp==tail){
//       tail!.next = newNode;
//       tail=newNode;
//       return;
//     }
//     newNode.next = temp!.next;
//     temp.next = newNode;
//   }
// }
// void main(List<String> args) {
//   LinkedList wroom = LinkedList();
//   wroom.addNode(20);
//   wroom.addNode(40);
//   wroom.addNode(60);
//   wroom.disply();
//   wroom.delete(60);
//   wroom.disply();
//   wroom.insert(40, 50);
//   wroom.disply();
// }

class Node{
  Node? next;
  int data;
   Node(this.data);

}
class LinkedList{
  Node? head;
  Node? tail;
  add(int data){
    Node newNode = Node(data);
    if(head==null){
      head=newNode;
    }else{
      tail!.next=newNode;
    }
    tail=newNode;
  }
  display(){
   Node? temp = head;
   if(temp==null){
    return;
   }
   while(temp!=null){
    print(temp.data);
    temp=temp.next;
   }
  }
  addf(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }
  remove(int data){

    Node? temp = head;
    Node? prev;

    if(temp!=null&&temp.data==data){
      head=temp.next;
      return;
    }
    while(temp!=null&&temp.data!=data){
      prev=temp;
      temp=temp.next;
    }
    if(temp==tail){
      tail = prev;
      tail!.next=null;
      return;
    }
    prev!.next = temp!.next;

  }
}
void main(List<String> args) {
  LinkedList link  = LinkedList();
  link.add(10);
  link.add(20);
  link.add(30);
  link.display();
  //link.remove(10);
  link.addf(400);
  link.display();

  //print(fact(5));
}
int fact(int data){
  if(data==1||data==0){
    return 1;
  }
  return data*fact(data-1);
}

