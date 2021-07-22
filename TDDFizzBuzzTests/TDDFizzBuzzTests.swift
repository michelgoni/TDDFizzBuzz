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
        
        switch number % 3 == 0 {
        case true:
            return "Fizz"
        default:
            return "\(number)"
        }
        
    }
}

class TDDFizzBuzzTests: XCTestCase {

    func test_printsNonFizzBuzzNumbers() {
        expect(prints: 1, withResult: "1")
        expect(prints: 2, withResult: "2")
    }
    
    func test_numberThreeDoesNotPrintFizz() {
        doNotExpect(prints: 3, withResult: "3")
    }
    
    func test_printsFizzWhenNumberIsMultipleOfThree() {
        expect(prints: 3, withResult: "Fizz")
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
    
    private func doNotExpect(prints number: Int, withResult result: String, file: StaticString = #filePath, line: UInt = #line) {
        let sut = makeSut()
        let numberValue = sut.retrieveResult(number)
        XCTAssertNotEqual(numberValue, result, file: file, line:line)
    }
}

