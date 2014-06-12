//
//  RomanNumeralConverter.swift
//  RomanNumeralsKata
//
//  Created by Ealden Escañan on 6/12/14.
//  Copyright (c) 2014 Ealden Escañan. All rights reserved.
//

import Foundation

class RomanNumeralConverter {
    func convert(let input: String) -> Int {
        var output: Int = 0

        for romanNumeral in input {
            output += 1
        }

        return output
    }
}