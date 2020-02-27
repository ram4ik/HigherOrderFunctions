//
//  ReduceHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 27.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class ReduceHOF {
    
    let numbers = [5, 3, 8, 4, 2]
    
    func withoutReduce() {
        
        var product = 1
        for number in numbers {
            product *= number
        }
        
        print(product)
        
        let product2 = numbers.reduce(1) { (partialResult, number) -> Int in
            return partialResult * number
        }
        
        print(product2)
    }
    
    func shortened() {
        let product = numbers.reduce(1, { $0 * $1 })
        
        print(product)
        
        
        let product2 = numbers.reduce(1, *)
        
        print(product2)
    }
    
    func withDictionaries() {
        let friendsAndMoney = ["Alex": 150.00, "Tim": 62.50, "Alice": 79.80, "Jane": 102.00, "Bob": 94.20]
        
        let allMoney = friendsAndMoney.reduce(0, { $0 + $1.value })
        
        print(allMoney)
    }
}
