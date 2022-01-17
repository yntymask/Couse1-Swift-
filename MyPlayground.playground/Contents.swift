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

class SportCar {
    let brand: String
    let productionYear: Int
    let trunkCapacity: Int
    var engineState: EngineState
    var windowState: WindowsState
    let occupiedTrunkSpace: Double
    var trunkDescription: TrunkOccupation
    
    init(brand: String, productionYear: Int, trunkCapacity: Int, engineState: EngineState, windowState: WindowsState, occupiedTrunkSpace: Double, trunkDescription: TrunkOccupation) {
        self.brand = brand
        self.productionYear = productionYear
        self.trunkCapacity = trunkCapacity
        self.engineState = engineState
        self.windowState = windowState
        self.occupiedTrunkSpace = occupiedTrunkSpace
        self.trunkDescription = trunkDescription
    }
    
    func engineControl() {
        self.engineState = .on
        self.windowState = .closed
        self.trunkDescription = .loadHalf
    }
    
    func printProperties(){
        print("Car brand: \(brand) \n Car production year is \(productionYear) \n Car's engine state: \(engineState) \n Car's window state: \(windowState)")
    }
     
}

class TrunkCar {
    let brand: String
    let productionYear: Int
    let trunkCapacity: Int
    var engineState: EngineState
    var windowState: WindowsState
    var occupiedTrunkSpace: Double
    var trunkDescription: TrunkOccupation
    
    
    func engineControl() {
        self.engineState = .on
        self.windowState = .closed
        self.trunkDescription = .loadHalf
    }
    
    func loadTrunk (load: Double) {
        let availableTrunkSpace = Double(trunkCapacity) - occupiedTrunkSpace
        if  availableTrunkSpace >= load   {
            occupiedTrunkSpace += load
            print(occupiedTrunkSpace)
        } else {
            print("Only \(availableTrunkSpace) space is available in the trunk")
        }
    }
    
    init(brand: String, productionYear: Int, trunkCapacity: Int, engineState: EngineState, windowState: WindowsState, occupiedTrunkSpace: Double, trunkDescription: TrunkOccupation) {
        self.brand = brand
        self.productionYear = productionYear
        self.trunkCapacity = trunkCapacity
        self.engineState = engineState
        self.windowState = windowState
        self.occupiedTrunkSpace = occupiedTrunkSpace
        self.trunkDescription = trunkDescription
    }
 
}
 

        
var car1 = SportCar(brand: "BMW", productionYear: 2021, trunkCapacity: 100, engineState: .off, windowState: .closed, occupiedTrunkSpace: 10, trunkDescription: .loadQuarter)
car1.engineControl()
car1.printProperties()

var trunkCar = TrunkCar(brand: "MAN", productionYear: 2010, trunkCapacity: 25000, engineState: .on, windowState: .closed, occupiedTrunkSpace: 15000, trunkDescription: .loadHalf)
trunkCar.engineControl()
trunkCar.engineState

trunkCar.engineState = .off

trunkCar.engineControl()
trunkCar.engineState

trunkCar.loadTrunk(load: 14500)

