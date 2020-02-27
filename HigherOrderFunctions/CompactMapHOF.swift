//
//  CompactMapHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 27.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class CompactMapHOF {
    
    let numbersWithNil = [5, 15, nil, 3, 9, 12, nil, nil, 17, nil]
    
    func doubleTheNonNilValuesAndProduceANewArray() {
        
        let doubledNums = numbersWithNil.map { (number) -> Int? in
            if let number = number {
                return number * 2
            } else {
                return nil
            }
        }
        
        print(doubledNums)
    }
    
    func shortVersion() {
        let doubledNums = numbersWithNil.map { $0 != nil ? $0! * 2 : nil }
        
        print(doubledNums)
    }
    
    func usingTheCompactMap() {
        let notNilDoubled = numbersWithNil.compactMap { $0 != nil ? $0! * 2 : nil }
        
        print(notNilDoubled)
        
        // prints: [10, 30, 6, 18, 24, 34]
    }
    
    func modifyingThosFunction() {
        let doubledNums = numbersWithNil.map { $0 != nil ? $0! * 2 : -1 }
        
        print(doubledNums)
        
        // prints: [10, 30, -1, 6, 18, 24, -1, -1, 34, -1]
    }
}
