//
//  RomanNumeralConverterTests.swift
//  RomanNumeralsKata
//
//  Created by Ealden Escañan on 6/12/14.
//  Copyright (c) 2014 Ealden Escañan. All rights reserved.
//

import XCTest

class RomanNumeralConverterTests: XCTestCase {
    let converter: RomanNumeralConverter = RomanNumeralConverter()
    
    func testShouldReturn1ForI() {
        XCTAssertEqual(1, converter.convert("I"))
    }

    func testShouldReturn2ForII() {
        XCTAssertEqual(2, converter.convert("II"))
    }

    func testShouldReturn5ForV() {
        XCTAssertEqual(5, converter.convert("V"))
    }

    func testShouldReturn0ForUnsupportedRomanNumeral() {
        XCTAssertEqual(0, converter.convert("A"))
    }
}