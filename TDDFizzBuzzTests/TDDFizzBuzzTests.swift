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

    func test_printsDefaultNumber() {
        let sut = FizzBuzzFactory()
        let result = sut.retrieveResult(1)
        XCTAssertEqual("1", result)
    }
}
