//: [Previous](@previous)

import Foundation
import NaturalLanguage

//https://developer.apple.com/documentation/naturallanguage/finding_similarities_between_pieces_of_text

let embedding = NLEmbedding.wordEmbedding(for: .french)

let neighbors = embedding?.neighbors(for: embedding?.vector(for: "sport") ?? [], maximumCount: 10) ?? []
print(neighbors)



//: [Next](@next)
