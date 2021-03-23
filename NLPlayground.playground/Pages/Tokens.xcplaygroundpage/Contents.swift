import Foundation
import NaturalLanguage

let text = "Hi, everyone ! My name is Yannis."

func retrieveTokens(from text: String, unit: NLTokenUnit = .word) -> [String] {
    let tokenizer = NLTokenizer(unit: unit)
    tokenizer.string = text
    
    var tokens = [String]()
    tokenizer.enumerateTokens(in: text.startIndex..<text.endIndex) { (tokenRange, _) -> Bool in
        tokens.append(String(text[tokenRange].lowercased()))
        return true
    }
    return tokens
}

let sentences = retrieveTokens(from: text, unit: .sentence)
print(sentences)

let words = retrieveTokens(from: text)
print(words)
