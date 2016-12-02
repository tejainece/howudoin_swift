//1) Intialize an empty list

//Empty list literal
var list: [Int] = []

//List creation
var list1: [Int] = [Int]()

//2) Append
// Append one item
list.append(5)
print(list)

// Append one item
list += [10]
print(list)

//Append an Array or Sequence
list1.append(contentsOf: [1, 2, 3, 4, 5])
// Append an Array or Sequence
list += list1
print(list)

//3) Remove
// Remove last item
list.removeLast()
print(list)

// Remove item at index
list.remove(at: 4)
print(list)
