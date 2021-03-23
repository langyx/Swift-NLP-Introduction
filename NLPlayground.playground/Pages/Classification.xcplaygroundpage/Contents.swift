//: [Previous](@previous)

import Foundation
import NaturalLanguage

func retrieveSentiment(for text: String) -> Double {
    let tagger = NLTagger(tagSchemes: [.sentimentScore])

    let string = text
    tagger.string = string

    let (sentiment, _) = tagger.tag(at: string.startIndex, unit: .paragraph, scheme: .sentimentScore)
    let value = sentiment?.rawValue ?? ""
    
    return (value as NSString).doubleValue
}

let sentiment1 = retrieveSentiment(for: "Ce week end était exceptionnel, je me suis vraiement amusé !")
print(sentiment1)

let sentiment2 = retrieveSentiment(for: "Le rendez vous c'est plutot bien passé.")
print(sentiment2)

let sentiment3 = retrieveSentiment(for: "Le rendez vous c'est mal passé.")
print(sentiment3)


//: [Next](@next)
