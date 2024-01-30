class Graph {
  Map<int, List<int>>? adjacencyList;

  Graph() {
    adjacencyList = {};
  }

  void addVertex(int vertex) {
    if (!adjacencyList!.containsKey(vertex)) {
      adjacencyList?[vertex] = [];
    }
  }

  void addEdge(int vertex1, int vertex2) {
    if (adjacencyList!.containsKey(vertex1) && adjacencyList!.containsKey(vertex2)) {
      adjacencyList?[vertex1]!.add(vertex2);
      adjacencyList?[vertex2]!.add(vertex1);
    } else {
      throw ArgumentError("Both vertices must exist in the graph.");
    }
  }

  void printGraph() {
    adjacencyList!.forEach((key, value) {
      print("$key -> ${value.join(', ')}");
    });
  }
}

void main() {
  var graph = Graph();

  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);

  graph.addEdge(1, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 4);
  graph.addEdge(3, 4);

  graph.printGraph();
}