class Node {
  int data;
  Node? next;
  Node(this.data);
}
class Queue{
  Node? rear;
  Node? front;

  enQueue(int data){
    Node newNode = Node(data);
    if(rear==null){
      rear = front = newNode;
      return;
    }
    rear!.next=newNode;
    rear=newNode;
  }
  dQueue(){
    if(front == null){
      print("empty");
      return;
    }
    front = front!.next;
    if(front==null){
      rear = null;
    }
  }
  display(){
    Node? temp =front;
    if(temp==null){
      return;
    } 
    while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }
}
void main(List<String> args) {
  Queue wroom = Queue();
  wroom.enQueue(10);
  wroom.enQueue(20);
  wroom.enQueue(30);
  wroom.enQueue(40);
  wroom.display();
  wroom.dQueue();
  wroom.display();
  
}

