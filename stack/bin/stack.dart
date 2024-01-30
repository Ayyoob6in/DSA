class Node{
  int data;
  Node? next;

  Node(this.data);
}
class Stack{
  Node? top;
  push(int data){
    Node value = Node(data);
    if(top==null){
      top = value;
    }else{
      value.next = top;
    }
    top = value;
  }

  int pop(){
    
    if(top==null){
      return throw Exception("top is null");
    }
    int popoedValue = top!.data;
    top = top!.next;

    return popoedValue;
  }
 int middleElement (){
  Node? fast  = top;
  Node? slow = top;

  while(fast!=null&&fast.next!=null){
    slow = slow!.next;
    fast = fast.next!.next;
  }
  if(slow!=null){
    return slow.data;
  }else{
    return throw Exception("null");
  }
 }
 display(){
  Node? cr = top;
  if(cr==null){
    return;
  }
  while(cr!=null){
    print(cr.data);
    cr=cr.next;
  }
 }
}
void main(List<String> args) {
  Stack  wr = Stack();
  wr.push(20);
  wr.push(40);
  wr.push(60);
  wr.push(80);
  int pop = wr.pop();
  
  wr.display();
  print("popped value $pop");
   int middle = wr.middleElement();
   print("middle element $middle");
}