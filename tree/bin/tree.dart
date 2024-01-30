class Node {
  int data;
  Node? right;
  Node? left;
  Node(this.data);
}
class Treee{
  Node? root;

  insert(int data){
    Node value = Node(data);
    Node? curr = root;
    Node? parent;

    if(root==null){
      root = value;
      return;
    }

    while(curr!=null){ 
       parent = curr;
       if(data<curr.data){
        curr = curr.left;
       }
       if(curr==null){
        parent.left = value;
        return;
       }else if(data>curr.data){
        curr = curr.right;
        if(curr==null){
          parent.right=value;
          return;
        }
       }else{
        return;
       }
    }
  }
 
  inOrderTraversel(Node? treen){
   if(treen!=null){
    inOrderTraversel(treen.left);
    print(treen.data);
    inOrderTraversel(treen.right);
   }
  }

  displayInorder(){
    print("tree:");
    inOrderTraversel(root);
  }


  preeOrderTraversel(Node? treen){
   if(treen!=null){
    print(treen.data);
    preeOrderTraversel(treen.left);
    preeOrderTraversel(treen.right);
   }
  }
  displayPreOder(){
    print("tree:");
    preeOrderTraversel(root);
  }


   postOrderTraversal(Node? treen){
   if(treen!=null){
    postOrderTraversal(treen.left);
    postOrderTraversal(treen.right);
   print(treen.data);
   }
  }
  diplayPostOrder(){
    print('tree:');
    postOrderTraversal(root);
  }


 
  bool isBst(Node? node,int? minValue,int? maxValue){
    if(node==null){
      return true;
    }
    if((minValue!=null &&node.data<=minValue) || (maxValue!=null&&node.data>=maxValue)){
      return false;
    }
    return isBst(node.left, minValue, node.data) && isBst(node.right,maxValue,node.data);
  }
  bool isBinarySearchTree(){
   return isBst(root, null, null);
  }
  

  
}
void main(List<String> args) {
  Treee wroom = Treee();
  wroom.insert(10);
  wroom.insert(20);
  wroom.insert(30);
  wroom.insert(40);
  wroom.insert(50);
  wroom.insert(60);
  wroom.insert(70);
  wroom.insert(80);
 // wroom.delete(10);
  wroom.displayInorder();
  wroom.displayPreOder();
  wroom.diplayPostOrder();
  bool isbst = wroom.isBinarySearchTree();
  print(isbst);
}








