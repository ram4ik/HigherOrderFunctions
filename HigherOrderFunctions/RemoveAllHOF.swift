//
//  RemoveAllHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 28.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class RemoveAllHOF {
    
    var numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]
    
    func removeValuesLessThan10() {
        
        numbers.removeAll { (number) -> Bool in
            return number < 10
        }
        
        print(numbers)
    }
    
    func aboveInSingleLine() {
        numbers.removeAll { $0 < 10 }
    }
}
