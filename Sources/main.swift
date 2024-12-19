import Foundation

func add(a: Double, b: Double) -> Double {
    return a + b
}

// Subtraction
func subtract(a: Double, b: Double) -> Double {
    return a - b
}

// Multiplication
func multiply(a: Double, b: Double) -> Double {
    return a * b
}

// Division
func divide(a: Double, b: Double) -> Double {
    return a / b
}


func getInput() -> (Double, Double)? {
    print("Enter first number: ", terminator: "")
    guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
        print("Invalid input")
        return nil
    }
    
    print("Enter second number: ", terminator: "")
    guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
        print("Invalid input")
        return nil
    }
    
    return (firstNumber, secondNumber)
}

func main() {
    print("Simple Calculator")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")
    print("Enter your choice: ", terminator: "")
    
    guard let choice = readLine(), let operation = Int(choice) else {
        print("Invalid choice")
        return
    }
    
    guard let (a, b) = getInput() else {
        return
    }
    
    let result: Double?
    
    switch operation {
    case 1:
        result = add(a, b)
    case 2:
        result = subtract(a, b)
    case 3:
        result = multiply(a, b)
    case 4:
        result = divide(a, b)
    default:
        print("Invalid operation")
        return
    }
    
    if let result = result {
        print("Result: \(result)")
    }
}


main()