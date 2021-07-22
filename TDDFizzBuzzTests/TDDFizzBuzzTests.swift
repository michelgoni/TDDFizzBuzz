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
        "\(number)"
    }
}

class TDDFizzBuzzTests: XCTestCase {

    func test_printsNonFizzBuzzNumbers() {
        expect(prints: 1, withResult: "1")
        expect(prints: 2, withResult: "2")
    }
  
    
    //MARK: -- Private implementations
    private func makeSut() -> FizzBuzzFactory {
        FizzBuzzFactory()
    }
    
    private func expect(prints number: Int, withResult result: String) {
        let sut = makeSut()
        let result = sut.retrieveResult(number)
        XCTAssertEqual(result, result)
    }
}

