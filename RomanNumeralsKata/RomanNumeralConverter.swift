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
        "V": 5
    ]

    func convert(let input: String) -> Int {
        var output: Int = 0

        for romanNumeral in input {
            if let number = romanNumeralToNumber[String(romanNumeral)] {
                output += number
            }
        }

        return output
    }
}