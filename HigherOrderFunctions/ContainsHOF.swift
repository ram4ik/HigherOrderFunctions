//
//  ContainsHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 28.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class ContainsHOF {
    
    let numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]
    
    func elementSatisfyConditions() {
        
        var containsLessThan5 = false
        for number in numbers {
            if number < 5 {
                containsLessThan5 = true
                print(containsLessThan5)
                break
            }
        }
    }
    
    func solutionWithContains() {
        
        let hasNumbersLessThan5 = numbers.contains { (number) -> Bool in
            return number < 5
        }
         
        print("Has small numbers? :", hasNumbersLessThan5)
        // Prints true
    }
    
    func sorthandArgument() {
        
        let hasNumbersLessThan5 = numbers.contains { $0 < 5 }
        
        print(hasNumbersLessThan5)
    }
    
    //
    func performSearches() {

        let hasStaffOver40 = staff.contains { $0.age > 40 }
        print("hasStaffOver40", hasStaffOver40)
        // Prints true
         
        let hasMalesOver40 = staff.contains { $0.gender == .male && $0.age > 40 }
        print("hasMalesOver40", hasMalesOver40)
        // Prints true
         
        let hasMalesUnder30 = staff.contains { $0.gender == .male && $0.age < 30 }
        print("hasMalesUnder30", hasMalesUnder30)
        // Prints false
    }
    
    //
    
    let temperatures = ["London": 7, "Athens": 14, "New York": 15, "Cairo": 19, "Sydney": 28]
    
    func highTemperatus() {
        let hasHighTemperatures = temperatures.contains { $0.value > 25 }
         
        print(hasHighTemperatures)
        // Prints true
    }
}

class Staff {
    enum Gender {
        case male, female
    }
 
    var name: String
    var gender: Gender
    var age: Int
 
    init(name: String, gender: Gender, age: Int) {
        self.name = name
        self.gender = gender
        self.age = age
    }
}
 
let staff = [Staff(name: "Nick", gender: .male, age: 37), Staff(name: "Julia", gender: .female, age: 29), Staff(name: "Tom", gender: .male, age: 41), Staff(name: "Tony", gender: .male, age: 45), Staff(name: "Emily", gender: .female, age: 42), Staff(name: "Irene", gender: .female, age: 30)]
