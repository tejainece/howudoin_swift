protocol Vehicle {
    var numTires: Int { get }

    var cost: Int { get }

    var name: String { get }

    func startNoise() -> String
}

// Implements Vehicle protocol
class VehicleBase: Vehicle {
    var numTires: Int

    var cost: Int

    var name: String

    init(_ name: String, _ cost: Int, _ numTires: Int) {
        self.name = name
        self.cost = cost
        self.numTires = numTires
    }

    func startNoise() -> String {
        return "Dur dur"
    }
}

// Extends VehicleBase
class Car: VehicleBase {
    init() {
        super.init("Car", 10000, 4);
    }

    //overrides startNoise method
    override func startNoise() -> String {
        return "Swiiing swiing"
    }
}

class Bike: VehicleBase {
        init() {
        super.init("Bike", 5000, 2);
    }

    //overrides startNoise method
    override func startNoise() -> String {
        return "Woing woing"
    }

    func handlebar() -> Bool {
        return true;
    }
}

// Polymorphism
let vehicle: Vehicle = Car()
print(vehicle.numTires)

//Down casting
let car: Car = vehicle as! Car;
print(car.name)

// This traps
//let bike: Bike? = vehicle as? Bike
