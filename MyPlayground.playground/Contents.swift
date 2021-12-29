import Foundation

// MARK: - Task 1
// standard quadratic equiation is ax2+bx+c=0

// a,b,c are the coefficients.
let a: Double = 1
let b: Double = 40
let c: Double = 10

//lets declare the root of equation as an array
var root = [Double]()

//to calculate the discriminant
var discriminant = pow(b, 2) - 4*a*c

if (a != 0) && (discriminant >= 0) {
    //Equation might have 3 cases: 2 roots, 1 root, no roots
    if discriminant > 0 {
        root.append((-b+sqrt(discriminant))/(2*a))
        root.append((-b-sqrt(discriminant))/(2*a))
        print("Two roots exist \(root)")
    }

    else {
        root.append(-b/(2*a))
        print("One root exists: \(root)")
    }
}
else {
    print("no roots available for a given coefficients")
}


// MARK: - Task 2
// Declare sides of the triangle. Since pow and sqrt functions return Double, all input variables will be double either
let sideA: Double = 10
let sideB: Double = 20

//Declare the perimeter, area, hypotenuse
var area: Double = 0
var perimeter: Double = 0
var hypotenuse: Double = 0

hypotenuse = round(sqrt(pow(sideB, 2) + pow(sideA, 2)))
perimeter = round(sideA + sideB + hypotenuse)
area = 0.5 * sideA * sideB

// MARK: - Task 3
//user input data

let initialMoney: Double = 1000 // inital deposit amount, in $
let interestRate: Double = 15 // annual interest rate
let period: Double = 5 // in years

// use compound interest formula A = P * (1+r)^t
var finalSum = initialMoney * pow((1+interestRate/100), period)

