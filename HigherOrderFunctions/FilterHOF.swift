//
//  FilterHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 27.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class FilterHOF {
    
    let numbers = [2, 5, 3, 9, 15, 12, 8, 17, 20, 11]
    
    func wiithOutFilter() {
        
        var over10 = [Int]()
         
        for number in numbers {
            if number > 10 {
                over10.append(number)
            }
        }
        
        print(over10)
    }
    
    func withFilter() {
        
        let over10 = numbers.filter { (number) -> Bool in
            if number > 10 {
                return true
            } else {
                return false
            }
        }
        
        print(over10)
    }
    
    func shortVersion() {
        let over10 = numbers.filter { (number) -> Bool in
            return number > 10
        }
        
        print(over10)
        
        
        let over10_2 = numbers.filter { $0 > 10 }
        
        print(over10_2)
    }
    
    let testers = [
        Tester(name: "John", age: 23),
        Tester(name: "Lucy", age: 25),
        Tester(name: "Tom", age: 32),
        Tester(name: "Mike", age: 29),
        Tester(name: "Hellen", age: 19),
        Tester(name: "Jim", age: 35)]
    
    func startWithJandAtLeast30() {
        
        let results = testers.filter { $0.name.prefix(1) == "J" && $0.age >= 30 }
        
        print(results[0].name, results[0].age)
    }
    
    func getOnlyTheFirstItemOfaCollection() {
        let filtered = testers.filter { $0.name.prefix(1) == "J" }
         
        if filtered.count > 0 {
            let firstTester = filtered[0]
            // Do something with firstTester...
            print(firstTester)
        }
    }
    
    func shortenItUsingASingleGuard() {
        guard let firstTester = (testers.filter { $0.name.prefix(1) == "J" }).first else { return }
        // Do something with firstTester...
        
        print(firstTester)
    }
}
