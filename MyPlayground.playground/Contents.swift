import UIKit

// MARK: - Task 1
let testNumber = 203

func oddEvenTester (_ input: Int) -> Bool {
    if input % 2 == 0 {
        return true
    } else {
        return false
    }
}

var testResult: Bool = oddEvenTester(testNumber)

// MARK: - Task 2
let userNumber = 102

func divisionTesterByThree (_ number: Int) -> Bool {
    if number % 3 == 0 {
//        print("Input number is divisible by three")
        return true
    } else {
//        print("input number is not divisible by three")
        return false
    }
}

var testDivisionByThree: Bool = divisionTesterByThree(userNumber)

// MARK: - Task 3
var array: [Int] = []

for _ in 1...100 {
    array.append(Int.random(in: 1..<100))
}

// MARK: - Task 4
var newArray: [Int] = []

for element in 0...array.count-1 {
    let checkDivisionByThree: Bool = divisionTesterByThree(array[element])
    let checkDivisionByTwo: Bool = oddEvenTester(array[element])
    
    if checkDivisionByTwo && checkDivisionByThree{
        newArray.append(array[element])
    }

}

// MARK: - Task 5

func generateFibonacciElement(_ count: Int) -> Int {
    
    var fibonacciArray: [Int] = [0, 1]
    
    if count > 1 {
        for index in 2...count{
            fibonacciArray.append(fibonacciArray[index-1] + fibonacciArray[index-2])
        }
    }
    
    return fibonacciArray[count]
}

var emptyArray: [Int] = []

for times in 0...49 {
    emptyArray.append(generateFibonacciElement(times))
}
print(emptyArray)

// MARK: - Task 6

