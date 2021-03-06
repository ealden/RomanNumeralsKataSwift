import XCTest

class RomanNumeralsKataTests: XCTestCase {
    let converter: RomanNumeralsKata = RomanNumeralsKata()

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

    func testShouldReturnValueForRepeatableNumerals() {
        XCTAssertEqual(converter.convert("II"), 2)
        XCTAssertEqual(converter.convert("XX"), 20)
        XCTAssertEqual(converter.convert("CC"), 200)
        XCTAssertEqual(converter.convert("MM"), 2000)

        XCTAssertEqual(converter.convert("III"), 3)
        XCTAssertEqual(converter.convert("XXX"), 30)
        XCTAssertEqual(converter.convert("CCC"), 300)
        XCTAssertEqual(converter.convert("MMM"), 3000)
    }

    func testShouldSubtractIToNextTwoNumerals() {
        XCTAssertEqual(converter.convert("IV"), 4)
        XCTAssertEqual(converter.convert("IX"), 9)
    }

    func testShouldSubtractXToNextTwoNumerals() {
        XCTAssertEqual(converter.convert("XL"), 40)
        XCTAssertEqual(converter.convert("XC"), 90)
    }

    func testShouldSubtractCToNextTwoNumerals() {
        XCTAssertEqual(converter.convert("CD"), 400)
        XCTAssertEqual(converter.convert("CM"), 900)
    }

    func testShouldReturn0IfNonRepeatableNumeralRepeated() {
        XCTAssertEqual(converter.convert("VV"), 0)
        XCTAssertEqual(converter.convert("LL"), 0)
        XCTAssertEqual(converter.convert("DD"), 0)
    }

    func testShouldReturn0IfRepeatableNumeralRepeatedMoreThanThreeTimes() {
        XCTAssertEqual(converter.convert("IIII"), 0)
        XCTAssertEqual(converter.convert("XXXX"), 0)
        XCTAssertEqual(converter.convert("CCCC"), 0)
        XCTAssertEqual(converter.convert("MMMM"), 0)
    }

    func testShouldReturn0IfVIsSubtracted() {
        XCTAssertEqual(converter.convert("VX"), 0)
        XCTAssertEqual(converter.convert("VL"), 0)
        XCTAssertEqual(converter.convert("VC"), 0)
        XCTAssertEqual(converter.convert("VD"), 0)
        XCTAssertEqual(converter.convert("VM"), 0)
    }

    func testShouldReturn0IfLIsSubtracted() {
        XCTAssertEqual(converter.convert("LC"), 0)
        XCTAssertEqual(converter.convert("LD"), 0)
        XCTAssertEqual(converter.convert("LM"), 0)
    }

    func testShouldReturn0IfDIsSubtracted() {
        XCTAssertEqual(converter.convert("DM"), 0)
    }

    func testShouldReturn0IfIIsSubtractedAfterNextTwoNumerals() {
        XCTAssertEqual(converter.convert("IL"), 0)
        XCTAssertEqual(converter.convert("IC"), 0)
        XCTAssertEqual(converter.convert("ID"), 0)
        XCTAssertEqual(converter.convert("IM"), 0)
    }

    func testShouldReturn0IfXIsSubtractedAfterNextTwoNumerals() {
        XCTAssertEqual(converter.convert("XD"), 0)
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

    func testShouldReturn24ForXXIV() {
        XCTAssertEqual(converter.convert("XXIV"), 24)
    }
}