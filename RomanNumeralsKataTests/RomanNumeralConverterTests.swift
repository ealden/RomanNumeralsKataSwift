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

    func testShouldReturn0ForUnsupportedRomanNumeral() {
        XCTAssertEqual(0, converter.convert("A"))
    }

    func testShouldReturn0ForUnsupportedRomanNumeralWithSupportedOnes() {
        XCTAssertEqual(0, converter.convert("AX"))
    }

    func testShouldReturn1ForI() {
        XCTAssertEqual(1, converter.convert("I"))
    }

    func testShouldReturn5ForV() {
        XCTAssertEqual(5, converter.convert("V"))
    }

    func testShouldReturn10ForX() {
        XCTAssertEqual(10, converter.convert("X"))
    }

    func testShouldReturn50ForL() {
        XCTAssertEqual(50, converter.convert("L"))
    }
    
    func testShouldReturn100ForC() {
        XCTAssertEqual(100, converter.convert("C"))
    }

    func testShouldReturn500ForD() {
        XCTAssertEqual(500, converter.convert("D"))
    }

    func testShouldReturn1000ForM() {
        XCTAssertEqual(1000, converter.convert("M"))
    }

    func testShouldReturn2ForII() {
        XCTAssertEqual(2, converter.convert("II"))
    }

    func testShouldReturn30ForXXX() {
        XCTAssertEqual(30, converter.convert("XXX"))
    }

    func testShouldReturn300ForCCC() {
        XCTAssertEqual(300, converter.convert("CCC"))
    }

    func testShouldReturn3000ForMMM() {
        XCTAssertEqual(3000, converter.convert("MMM"))
    }

    func testShouldReturn4ForIV() {
        XCTAssertEqual(4, converter.convert("IV"))
    }

    func testShouldReturn9ForIX() {
        XCTAssertEqual(9, converter.convert("IX"))
    }

    func testShouldReturn40ForXL() {
        XCTAssertEqual(40, converter.convert("XL"))
    }

    func testShouldReturn90ForXC() {
        XCTAssertEqual(90, converter.convert("XC"))
    }

    func testShouldReturn400ForCD() {
        XCTAssertEqual(400, converter.convert("CD"))
    }

    func testShouldReturn900ForCM() {
        XCTAssertEqual(900, converter.convert("CM"))
    }

    func testShouldReturn0ForVV() {
        XCTAssertEqual(0, converter.convert("VV"))
    }

    func testShouldReturn0ForLL() {
        XCTAssertEqual(0, converter.convert("LL"))
    }

    func testShouldReturn0ForDD() {
        XCTAssertEqual(0, converter.convert("DD"))
    }

    func testShouldReturn0ForIIII() {
        XCTAssertEqual(0, converter.convert("IIII"))
    }

    func testShouldReturn0ForXXXX() {
        XCTAssertEqual(0, converter.convert("XXXX"))
    }

    func testShouldReturn0ForCCCC() {
        XCTAssertEqual(0, converter.convert("CCCC"))
    }

    func testShouldReturn0ForMMMM() {
        XCTAssertEqual(0, converter.convert("MMMM"))
    }

    func testShouldReturn0ForVX() {
        XCTAssertEqual(0, converter.convert("VX"))
    }

    func testShouldReturn0ForVL() {
        XCTAssertEqual(0, converter.convert("VL"))
    }

    func testShouldReturn0ForVC() {
        XCTAssertEqual(0, converter.convert("VC"))
    }

    func testShouldReturn0ForVD() {
        XCTAssertEqual(0, converter.convert("VD"))
    }

    func testShouldReturn0ForVM() {
        XCTAssertEqual(0, converter.convert("VM"))
    }

    func testShouldReturn0ForLC() {
        XCTAssertEqual(0, converter.convert("LC"))
    }

    func testShouldReturn0ForLD() {
        XCTAssertEqual(0, converter.convert("LD"))
    }

    func testShouldReturn0ForLM() {
        XCTAssertEqual(0, converter.convert("LM"))
    }

    func testShouldReturn0ForDM() {
        XCTAssertEqual(0, converter.convert("DM"))
    }

    func testShouldReturn0ForIL() {
        XCTAssertEqual(0, converter.convert("IL"))
    }

    func testShouldReturn0ForIC() {
        XCTAssertEqual(0, converter.convert("IC"))
    }

    func testShouldReturn0ForID() {
        XCTAssertEqual(0, converter.convert("ID"))
    }

    func testShouldReturn0ForIM() {
        XCTAssertEqual(0, converter.convert("IM"))
    }

    func testShouldReturn0ForXD() {
        XCTAssertEqual(0, converter.convert("XD"))
    }

    func testShouldReturn0ForXM() {
        XCTAssertEqual(0, converter.convert("XM"))
    }

    func testShouldReturn0ForMultipleSubtractionIIV() {
        XCTAssertEqual(0, converter.convert("IIV"))
    }

    func testShouldReturn0ForMultipleSubtractionIIX() {
        XCTAssertEqual(0, converter.convert("IIX"))
    }

    func testShouldReturn0ForMultipleSubtractionXXL() {
        XCTAssertEqual(0, converter.convert("XXL"))
    }

    func testShouldReturn0ForMultipleSubtractionXXC() {
        XCTAssertEqual(0, converter.convert("XXC"))
    }

    func testShouldReturn0ForMultipleSubtractionCCD() {
        XCTAssertEqual(0, converter.convert("CCD"))
    }

    func testShouldReturn0ForMultipleSubtractionCCM() {
        XCTAssertEqual(0, converter.convert("CCM"))
    }
}