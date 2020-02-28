//
//  ForEachHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 28.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class ForEachHOF {
    
    let numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]
    
    func numberEvenOrOdd() {
        
        
         
        for number in numbers {
            number.isMultiple(of: 2) ? print("\(number) is even") : print("\(number) is odd")
        }
    }
    
    func forEachInstead() {
        
        numbers.forEach { (number) in
            number.isMultiple(of: 2) ? print("\(number) is even") : print("\(number) is odd")
        }
    }
    
    func oneLine() {
        numbers.forEach { $0.isMultiple(of: 2) ? print("\($0) is even") : print("\($0) is odd") }

    }
    
    let numbersWithNil = [5, 15, nil, 3, 9, 12, nil, nil, 17, nil]
    
    func unwrapOptionals() {
        
        
         
        for number in numbersWithNil {
            guard let number = number else {
                print("Found nil")
                continue
            }
            print("The double of \(number) is \(number * 2)")
        }
    }
    
    func equivalentAbove() {
        
        numbersWithNil.forEach { (number) in
            guard let number = number else {
                print("Found nil")
                return
            }
            print("The double of \(number) is \(number * 2)")
        }
    }
}
