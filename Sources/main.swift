class Calculator {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
    
    func subtract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }
    
    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }
    
    func divide(_ a: Double, _ b: Double) -> Double? {
        return a / b
    }
}

// Example usage
let calculator = Calculator()
print("Addition: \(calculator.add(5, 3))") // 8
print("Subtraction: \(calculator.subtract(5, 3))") // 2
print("Multiplication: \(calculator.multiply(5, 3))") // 15
if let divisionResult = calculator.divide(5, 0) {
    print("Division: \(divisionResult)")
} else {
    print("Division by zero is not allowed.")
}