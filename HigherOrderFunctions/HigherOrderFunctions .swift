//
//  HigherOrderFunctions .swift
//  HigherOrderFunctions
//
//  Created by ramil on 27.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class HigherOrderFunctions {
    
    // Map
    let numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]
    
    func forIn() {
        var doubled = [Int]()
         
        for number in numbers {
            doubled.append(number * 2)
        }
         
        print(doubled)
        // Prints [4, 10, 6, 18, 30, 24, 16, 34, 40, 22]
    }
    
    func mapHOF() {
        let doubled = numbers.map({ (number) -> Int in
            return number * 2
        })
        
        print(doubled)
    }
    
    func map2HOF() {
        let doubled = numbers.map { $0 * 2 }
        print(doubled)
    }
    
    let degrees = [20, 45, 160, 360, 84, 215, 178, 185]
    
    func map3HOF() {
        let rads = degrees.map { Double($0) * Double.pi / 180.0 }
        print(rads)
    }
    
    func withOutMapHOF() {
        var rads = [Double]()
        for deg in degrees {
            rads.append(Double(deg) * Double.pi / 180.0)
        }
        
        print(rads)
    }
    
    func map4HOF() {
        
        var info = [String: String]()
        info["name"] = "andrew"
        info["city"] = "berlin"
        info["job"] = "developer"
        info["hobby"] = "computer games"
        
        let keys = info.map { $0.key }
        let values = info.map { $0.value }
        
        print(keys)
        print(values)
        
        let result = info.map { $0 }
        print(result)
        
        let newInfo = Dictionary(uniqueKeysWithValues: result)
        print(newInfo)
            
        let updatedKeysAndValues = info.map { ($0.key.uppercased(), $0.value.capitalized) }
        print(updatedKeysAndValues)
        
        let updatedKeysAndValues2 = info.map { ($0.uppercased(), $1.capitalized) }
        print(updatedKeysAndValues2)
        
        let capitalizedInfo = Dictionary(uniqueKeysWithValues: updatedKeysAndValues)
        print(capitalizedInfo)
        
        let capitalizedInfo2 = Dictionary(uniqueKeysWithValues: info.map { ($0.uppercased(), $1.capitalized) } )
        print(capitalizedInfo2)
        
        let updatedInfo = info.mapValues { $0.capitalized }
        print(updatedInfo)
    }
}
