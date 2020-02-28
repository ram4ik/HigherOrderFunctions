//
//  SplitHOF.swift
//  HigherOrderFunctions
//
//  Created by ramil on 28.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import Foundation

class SplitHOF {
    
    let message = "Hello World!"
        
    func breakString() {
        
        
         
        let result = message.split { (char) -> Bool in
            return char == " "
        }
         
        print(result)
        // Prints ["Hello", "World!"]
    }
    
    func shorthandArgument() {
        
        let result = message.split { $0 == " " }
        
        print(result)
    }
    
    func maxSplit() {
        
        let anotherMessage = "This message is going to be broken in pieces!"
         
        let splitOnce = anotherMessage.split(maxSplits: 1, whereSeparator: { $0 == " " })
         
        print(splitOnce)
        // Prints ["This", "message is going to be broken in pieces!"]
    }
    
    func omittingEmptySubsequencesParametr() {
        
        let anotherMessage = "This message is going to    be broken in pieces!"
        
        let emptySequences = anotherMessage.split(omittingEmptySubsequences: false, whereSeparator: { $0 == " " })
         
        print(emptySequences)
        // Prints ["This", "message", "is", "going", "to", "", "", "", "be", "broken", "in", "pieces!"]
    }
    
    func useThemAsString() {
        
        let message = "Hello World!"
        let result = message.split { $0 == " " }
        print(result)
        // Prints ["Hello", "World!"]
         
        // result type is [String.SubSequence]
         
        // Create String values from substrings.
        let allStrings = result.map { String($0) }
         
        print(allStrings)
        // Prints ["Hello", "World!"]
         
        // allStrings type is [String]
    }
    
    func breakParagraphIntoSentences() {
        
        let paragraph = "This paragraph will be separated in parts. Based on the periods and the exclamation mark! There will be three strings!"
         
        let sentences = paragraph.split { $0 == "." || $0 == "!" }
         
        print(sentences)
        // Prints ["This paragraph will be separated in parts", " Based on the periods and the exclamation mark", " There will be three strings"]

    }
}
