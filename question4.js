// 4. Given a binary tree, write a function in the language of your choosing that will serialize the tree.
// You can use an existing serialization format such as JSON if that helps.

/**
 * Method designed to help create a binary tree data structure.
 */
let createTreeNode = function(val) {
    this.val = val;
    this.left = this.right = null;
};

/**
 * A custom method designed to serialize a binary tree in a custom manner. Another method
 * could be used to deserialize the output of this function later on.
 */
let binaryTreeSerialize = function(root) {
    let result = [];
    let serializer = function(node, output) {
      if (!node) {
          output.push("#");
          return;
      }
      output.push(node.val);
      serializer(node.left, output);
      serializer(node.right, output);
    };

    // Run serialization on root node
    serializer(root, result);

    // Return serialized binary tree
    return result.join(",");
};


// Create a binary tree
let node1 = new createTreeNode(1);
let node2 = new createTreeNode(2);
let node3 = new createTreeNode(3);
let node4 = new createTreeNode(4);
let node5 = new createTreeNode(5);
node3.left = node4;
node3.right = node5;
node1.left = node2;
node1.right = node3;
console.log(node1);

// Serialize the binary tree with custom serialization function
binaryTreeSerialize(node1);

// Serialize the binary tree with built in JSON methods
JSON.stringify(node1);