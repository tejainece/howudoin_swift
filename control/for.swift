/* This wont work in swift 3
for var i = 0; i < 10; i += 1 {
    print(i)
}
*/

// Loop over an array
for i in [0, 1, 2, 3, 4] {
    print(i)
}

// Loop over a closed range
for i in 1...10 {
    print(i)
}

// Loop over half open range
for i in 1..<10 {
    print(i)
}

var str: String = "Hello"

// Loop over characters in string
for i in str.characters {
    print(i)
}
