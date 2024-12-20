import XCTest
@testable import calculator_ios_app

class CalculatorTests: XCTestCase {

    var calculator: Calculator!

    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }

    override func tearDown() {
        calculator = nil
        super.tearDown()
    }

    func testAddition() {
        XCTAssertEqual(calculator.add(5, 3), 8)
        XCTAssertEqual(calculator.add(-5, -3), -8)
        XCTAssertEqual(calculator.add(0, 0), 0)
    }

    func testSubtraction() {
        XCTAssertEqual(calculator.subtract(5, 3), 2)
        XCTAssertEqual(calculator.subtract(-5, -3), -2)
        XCTAssertEqual(calculator.subtract(0, 0), 0)
    }

    func testMultiplication() {
        XCTAssertEqual(calculator.multiply(5, 3), 15)
        XCTAssertEqual(calculator.multiply(-5, -3), 15)
        XCTAssertEqual(calculator.multiply(0, 5), 0)
    }

    func testDivision() {
        XCTAssertEqual(calculator.divide(6, 3), 2)
        XCTAssertEqual(calculator.divide(-6, -3), 2)
        XCTAssertNil(calculator.divide(5, 0))
    }

    func testLogarithm() {
        XCTAssertEqual(calculator.log(2.71828), 1, accuracy: 0.0001)
    }

    func testExponential() {
        XCTAssertEqual(calculator.exp(1), 2.71828, accuracy: 0.0001)
    }

    func testSin() {
        XCTAssertEqual(calculator.sin(Double.pi / 2), 1, accuracy: 0.0001)
    }

    func testCos() {
        XCTAssertEqual(calculator.cos(0), 1, accuracy: 0.0001)
    }
}