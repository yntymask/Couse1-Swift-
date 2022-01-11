import UIKit

enum EngineState {
    case on, off
}

enum WindowsState {
    case open, closed
}

enum TrunkOccupation: String {
    case loadQuarter = "Quarter of the trunk is loaded"
    case loadHalf = "Half of the trunk is loaded"
    case loadFull = "Trunk is full"
}
struct SportCar {
    let brand: String
    let productionYear: Int
    let trunkCapacity: Int
    var engineState: EngineState
    var windowState: WindowsState
    let occupiedTrunkSpace: Double
    var trunkDescription: TrunkOccupation
    
    mutating func engineControl() {
        self.engineState = .on
        self.windowState = .closed
        self.trunkDescription = .loadHalf
    }
}

struct TrunkCar {
    let brand: String
    let productionYear: Int
    let trunkCapacity: Int
    var engineState: EngineState
    var windowState: WindowsState
    let occupiedTrunkSpace: Double
    var trunkDescription: TrunkOccupation
    
    mutating func engineControl() {
        self.engineState = .on
        self.windowState = .closed
        self.trunkDescription = .loadHalf
    }
}
 

var car1 = SportCar(brand: "BMW", productionYear: 2021, trunkCapacity: 1000, engineState: .off, windowState: .closed, occupiedTrunkSpace: 500, trunkDescription: .loadHalf)
print(car1)

car1.engineControl()
print(car1)

var trunk1 = TrunkCar(brand: "Mann", productionYear: 2020, trunkCapacity: 10000, engineState: .off, windowState: .open, occupiedTrunkSpace: 100, trunkDescription: .loadQuarter)


