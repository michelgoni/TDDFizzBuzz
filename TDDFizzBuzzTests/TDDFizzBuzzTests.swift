//
//  TDDFizzBuzzTests.swift
//  TDDFizzBuzzTests
//
//  Created by Michel Goñi on 22/7/21.
//

import XCTest
@testable import TDDFizzBuzz

final class FizzBuzzFactory {
    
    func retrieveResult(_ number: Int) -> String {
        
        switch (number.isMultiple(of: 3), number.isMultiple(of: 5))  {
        case (true, false):
            return "Fizz"
        case (false, true):
            return "Buzz"
        case (true, true):
            return "FizzBuzz"
        default:
            return "\(number)"
        }
        
    }
}

class TDDFizzBuzzTests: XCTestCase {

    func test_printsNonFizzBuzzNumbers() {
        expect(prints: 1, withResult: "1")
        expect(prints: 2, withResult: "2")
        expect(prints: 4, withResult: "4")
        expect(prints: 7, withResult: "7")
    }
    
    func test_printsFizzWhenNumberIsMultipleOfThree() {
        expect(prints: 3, withResult: "Fizz")
        expect(prints: 6, withResult: "Fizz")
        expect(prints: 9, withResult: "Fizz")
    }
    
    func test_printsBuzzWhenNumberIsMultipleOfFive() {
        expect(prints: 5, withResult: "Buzz")
        expect(prints: 10, withResult: "Buzz")
    }
    
    func test_printsFizzBuzzWhenNumberIsMultipleOfThreeAndFive() {
        expect(prints: 15, withResult: "FizzBuzz")
        expect(prints: 30, withResult: "FizzBuzz")
    }
  
    
    //MARK: -- Private implementations
    private func makeSut() -> FizzBuzzFactory {
        FizzBuzzFactory()
    }
    
    private func expect(prints number: Int, withResult result: String, file: StaticString = #filePath, line: UInt = #line) {
        let sut = makeSut()
        let numberValue = sut.retrieveResult(number)
        XCTAssertEqual(numberValue, result, file: file, line:line)
    }

}
