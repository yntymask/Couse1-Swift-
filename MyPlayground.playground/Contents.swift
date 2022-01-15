import UIKit

enum TrunkState {
    case open, closed
}

enum EngineState {
    case on, off
}
class Car {
    var color: UIColor
    var trunkState: TrunkState
    var engineState: EngineState
    
    init(color: UIColor, trunkState: TrunkState, engineState: EngineState) {
        self.color = color
        self.trunkState = trunkState
        self.engineState = engineState
    }
}

let honda = Car(color: .black, trunkState: .open, engineState: .off)
print(honda)


