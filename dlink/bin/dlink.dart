class Node{
  int data;
  Node? prev;
  Node? next;
  Node(this.data);
}
class LinkedList {
  Node? head;
  Node? tail;
  addNode(int data){

    Node newNode = Node(data);
    if(head == null){
      head = newNode;
    }else{
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;

  }

  displayFw(){
    Node? temp = head;
    if(temp==null){
      print("empty");
      return;
    }
    while(temp!=null){
      print(temp.data);
      temp = temp.next;
    }
  }
  displayBw(){
    Node? temp = tail;
    if(temp==null){
      print("empty");
      return;
    }
    while(temp!=null){
      print(temp.data);
      temp = temp.prev;
    }
  }

}
void main(List<String> args) {
  LinkedList wroom = LinkedList();
  wroom.addNode(20);
  wroom.addNode(40);
  wroom.addNode(60);
  wroom.addNode(80);
  wroom.displayFw();
  wroom.displayBw();
}