//
//  MapAndCustomTypes.swift
//  HigherOrderFunctions
//
//  Created by ramil on 27.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class MapAndCustomTypes {
    let testers = [
        Tester(name: "John", age: 23),
        Tester(name: "Lucy", age: 25),
        Tester(name: "Tom", age: 32),
        Tester(name: "Mike", age: 29),
        Tester(name: "Hellen", age: 19),
        Tester(name: "Jim", age: 35)]
    
    func getAnArrayWithTheAgesOfTheTestersOnly() {
        let ages = testers.map { $0.age }
        print(ages)
        
        // prints: [23, 25, 32, 29, 19, 35]
    }
    
}

class Tester {
    var name: String
    var age: Int
 
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
