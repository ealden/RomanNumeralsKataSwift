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

    func testShouldReturn0IfInputContainsAnUnsupportedRomanNumeral() {
        XCTAssertEqual(converter.convert("AX"), 0)
    }

    func testShouldReturn1ForI() {
        XCTAssertEqual(converter.convert("I"), 1)
    }

    func testShouldReturn5ForV() {
        XCTAssertEqual(converter.convert("V"), 5)
    }

    func testShouldReturn10ForX() {
        XCTAssertEqual(converter.convert("X"), 10)
    }

    func testShouldReturn50ForL() {
        XCTAssertEqual(converter.convert("L"), 50)
    }
    
    func testShouldReturn100ForC() {
        XCTAssertEqual(converter.convert("C"), 100)
    }

    func testShouldReturn500ForD() {
        XCTAssertEqual(converter.convert("D"), 500)
    }

    func testShouldReturn1000ForM() {
        XCTAssertEqual(converter.convert("M"), 1000)
    }

    func testRepeatShouldReturn2ForII() {
        XCTAssertEqual(converter.convert("II"), 2)
    }

    func testRepeatShouldReturn30ForXXX() {
        XCTAssertEqual(converter.convert("XXX"), 30)
    }

    func testRepeatShouldReturn300ForCCC() {
        XCTAssertEqual(converter.convert("CCC"), 300)
    }

    func testRepeatShouldReturn3000ForMMM() {
        XCTAssertEqual(converter.convert("MMM"), 3000)
    }

    func testSubtractionShouldReturn4ForIV() {
        XCTAssertEqual(converter.convert("IV"), 4)
    }

    func testSubtractionShouldReturn9ForIX() {
        XCTAssertEqual(converter.convert("IX"), 9)
    }

    func testSubtractionShouldReturn40ForXL() {
        XCTAssertEqual(converter.convert("XL"), 40)
    }

    func testSubtractionShouldReturn90ForXC() {
        XCTAssertEqual(converter.convert("XC"), 90)
    }

    func testSubtractionShouldReturn400ForCD() {
        XCTAssertEqual(converter.convert("CD"), 400)
    }

    func testSubtractionShouldReturn900ForCM() {
        XCTAssertEqual(converter.convert("CM"), 900)
    }

    func testInvalidRepeatShouldReturn0ForVV() {
        XCTAssertEqual(converter.convert("VV"), 0)
    }

    func testInvalidRepeatShouldReturn0ForLL() {
        XCTAssertEqual(converter.convert("LL"), 0)
    }

    func testInvalidRepeatShouldReturn0ForDD() {
        XCTAssertEqual(converter.convert("DD"), 0)
    }

    func testRepeatedTooMuchShouldReturn0ForIIII() {
        XCTAssertEqual(converter.convert("IIII"), 0)
    }

    func testRepeatedTooMuchShouldReturn0ForXXXX() {
        XCTAssertEqual(converter.convert("XXXX"), 0)
    }

    func testRepeatedTooMuchShouldReturn0ForCCCC() {
        XCTAssertEqual(converter.convert("CCCC"), 0)
    }

    func testRepeatedTooMuchShouldReturn0ForMMMM() {
        XCTAssertEqual(converter.convert("MMMM"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForVX() {
        XCTAssertEqual(converter.convert("VX"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForVL() {
        XCTAssertEqual(converter.convert("VL"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForVC() {
        XCTAssertEqual(converter.convert("VC"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForVD() {
        XCTAssertEqual(converter.convert("VD"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForVM() {
        XCTAssertEqual(converter.convert("VM"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForLC() {
        XCTAssertEqual(converter.convert("LC"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForLD() {
        XCTAssertEqual(converter.convert("LD"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForLM() {
        XCTAssertEqual(converter.convert("LM"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForDM() {
        XCTAssertEqual(converter.convert("DM"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForIL() {
        XCTAssertEqual(converter.convert("IL"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForIC() {
        XCTAssertEqual(converter.convert("IC"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForID() {
        XCTAssertEqual(converter.convert("ID"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForIM() {
        XCTAssertEqual(converter.convert("IM"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForXD() {
        XCTAssertEqual(converter.convert("XD"), 0)
    }

    func testInvalidSubtractionShouldReturn0ForXM() {
        XCTAssertEqual(converter.convert("XM"), 0)
    }

    func testShouldReturn0IfMultipleSubtractionWithSameNumeral() {
        XCTAssertEqual(converter.convert("IIV"), 0)
        XCTAssertEqual(converter.convert("IIX"), 0)
        XCTAssertEqual(converter.convert("XXL"), 0)
        XCTAssertEqual(converter.convert("XXC"), 0)
        XCTAssertEqual(converter.convert("CCD"), 0)
        XCTAssertEqual(converter.convert("CCM"), 0)
    }

    func testShouldReturn0IfMultipleSubtractionWithDifferentNumerals() {
        XCTAssertEqual(converter.convert("IXL"), 0)
        XCTAssertEqual(converter.convert("XCD"), 0)
        XCTAssertEqual(converter.convert("XCM"), 0)
    }

    func testSubtractionAndRepeatShouldReturn24ForXXIV() {
        XCTAssertEqual(converter.convert("XXIV"), 24)
    }}