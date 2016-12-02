class Hello {
    // Immutable property can be initialized during declaration
    let greeting: String = "Hello"

    // Initialization of immutable properties can be postponed to constructors
    let time: String

    // Mutable property can be initialized from the constructor
    var name: String

    // This initializer used default parameter
    init(fromName name: String, atTime time: String = "morning") {
        // Immutable properties can also be set in constructor
        self.time = time

        // Immutable properties can only be set once
        // self.greeting = "Hello"

        self.name = name
    }

    // Says hello
    func sayHello() {
        print("\(greeting) \(name)! Have a good \(time)!");
    }
}

// Default parameter can be skipped if default suits the bill
let helloMorning = Hello(fromName: "Teja");
helloMorning.sayHello();

let helloEvening = Hello(fromName: "Issac", atTime: "evening");
helloEvening.sayHello();
