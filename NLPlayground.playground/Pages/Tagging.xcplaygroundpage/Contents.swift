//: [Previous](@previous)

import Foundation
import NaturalLanguage

func retrievePOS(from text: String) -> [String] {
    let tagger = NLTagger(tagSchemes: [.lexicalClass])
    tagger.string = text
    
    var tags = [String]()
    let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace]
    tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .lexicalClass, options: options) { (tag, tokenRange) -> Bool in
        if let tag = tag {
            tags.append(tag.rawValue)
        }
        return true
    }
    return tags
}

let posTags = retrievePOS(from: "Je participe à la formation AFP Extension.")
print(posTags)

//: [Next](@next)
