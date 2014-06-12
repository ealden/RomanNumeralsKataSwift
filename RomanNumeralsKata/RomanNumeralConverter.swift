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
        "D": 500
    ]

    func convert(let input: String) -> Int {
        var output = 0
        var lastNumber = 0

        for romanNumeral in input.reverse() {
            if let number = romanNumeralToNumber[String(romanNumeral)] {
                if (lastNumber != 0) && (lastNumber > number) {
                    output -= number
                } else {
                    output += number
                }

                lastNumber = number
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