//
//  SortedHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 28.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class SortedHOF {
    
    let toSort = [5, 3, 8, 2, 10]
    
    func ascendingOrder() {
        
        
         
        let sorted = toSort.sorted()
         
        print(sorted)
        // Prints [2, 3, 5, 8, 10]
    }
    
    func specificCondition() {
        
        let sorted = toSort.sorted { (num1, num2) -> Bool in
            return num1 > num2
        }
        print(sorted)
    }
    
    func sorterWay() {
        
        let sorted = toSort.sorted { $0 > $1 }
        
        print(sorted)
    }
    
    func similarWay() {
        
        let sorted = toSort.sorted(by: >)
        
        print(sorted)
    }
}
