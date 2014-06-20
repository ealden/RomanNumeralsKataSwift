//
//  RomanNumeralConverter.swift
//  RomanNumeralsKata
//
//  Created by Ealden Escañan on 6/12/14.
//  Copyright (c) 2014 Ealden Escañan. All rights reserved.
//

import Foundation

class RomanNumeralConverter {
    let romanNumeralToNumber = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]

    func convert(let input: String) -> Int {
        var output = 0

        if input.isValidRomanNumeralString() {
            output = convertValidRomanNumeralString(input)
        }

        return output
    }

    func convertValidRomanNumeralString(let input: String) -> Int {
        var output = 0
        var lastNumber = 0
        var subtracted = false

        for romanNumeral in input.reverse() {
          if let number = romanNumeralToNumber[String(romanNumeral)] {
            if subtracted && (lastNumber >= number) {
                return 0
            }

            if (lastNumber != 0) && (lastNumber > number) {
              output -= number

              subtracted = true
            } else {
              output += number

              subtracted = false
            }

            lastNumber = number
          } else {
            return 0
          }
        }

        return output
    }
}

extension String {
    func reverse() -> String {
        var string = ""

        for char in self {
            string = char + string
        }

        return string
    }
}

extension String {
    func isValidRomanNumeralString() -> Bool {
        let invalidRomanNumeralStrings = [
            "VV", "LL", "DD",
            "IIII", "XXXX", "CCCC", "MMMM",
            "VX", "VL", "VC", "VD", "VM",
            "LC", "LD", "LM",
            "DM",
            "IL", "IC", "ID", "IM",
            "XD", "XM"
        ]

        for invalidRomanNumeralString in invalidRomanNumeralStrings {
            if self.rangeOfString(invalidRomanNumeralString) {
                return false
            }
        }

        return true
    }
}