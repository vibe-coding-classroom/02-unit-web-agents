function calculateTotal(price, quantity) {
  // Bug: forgot to handle tax
  return price * quantity;
}

function greetUser(name) {
  if (name) {
    console.log("Hello, " + name + "!");
  } else {
    // Bug: potential undefined issue
    console.log("Hello, " + name + "!");
  }
}

module.exports = { calculateTotal, greetUser };
