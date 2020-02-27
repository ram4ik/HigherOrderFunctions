//
//  FlatMapHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 27.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class FlatMapHOF {
    
    let marks = [[3, 4, 5], [2, 5, 3], [1, 2, 2], [5, 5, 4], [3, 5, 3]]
    
    func traditionalForIn() {
        
        var allMarks = [Int]()
        for marksArray in marks {
            allMarks += marksArray
        }
        
        let allMarks2 = marks.flatMap { (array) -> [Int] in
            return array
        }
        
        print(allMarks)
        print(allMarks2)
        
        let allMarks3 = marks.flatMap { $0 }
        print(allMarks3)
        
        // Prints [3, 4, 5, 2, 5, 3, 1, 2, 2, 5, 5, 4, 3, 5, 3]
    }
    
    func innerCollectionsContainNilValues() {
        
        let valuesWithNil = [[2, nil, 5], [4, 3, nil], [nil, nil, 1]]
         
        let result = valuesWithNil.flatMap { $0 }
         
        print(result)
        // Prints [Optional(2), nil, Optional(5), Optional(4), Optional(3), nil, nil, nil, Optional(1)]
    }
    
    
}
