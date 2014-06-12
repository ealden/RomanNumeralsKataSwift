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

    func testShouldReturn4ForIV() {
        XCTAssertEqual(4, converter.convert("IV"))
    }

    func testShouldReturn10ForX() {
        XCTAssertEqual(10, converter.convert("X"))
    }

    func testShouldReturn30ForXXX() {
        XCTAssertEqual(30, converter.convert("XXX"))
    }

    func testShouldReturn50ForL() {
        XCTAssertEqual(50, converter.convert("L"))
    }

    func testShouldReturn100ForC() {
        XCTAssertEqual(100, converter.convert("C"))
    }

    func testShouldReturn300ForCCC() {
        XCTAssertEqual(300, converter.convert("CCC"))
    }

    func testShouldReturn500ForD() {
        XCTAssertEqual(500, converter.convert("D"))
    }
}