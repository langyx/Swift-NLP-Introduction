//: [Previous](@previous)

import Foundation
import NaturalLanguage

let recognizer = NLLanguageRecognizer()

recognizer.languageConstraints = [.french, .english, .german,
                                  .italian, .spanish, .portuguese]

recognizer.languageHints = [.french: 0.5,
                            .english: 0.9,
                            .german: 0.8,
                            .italian: 0.6,
                            .spanish: 0.3,
                            .portuguese: 0.2]


recognizer.processString("This is a test")

if let language = recognizer.dominantLanguage {
    print(language.rawValue)
} else {
    print("Language not recognized")
}

print(recognizer.languageHypotheses(withMaximum: 2))

// Reset the recognizer to its initial state.
recognizer.reset()

// Process additional strings for language identification.
recognizer.processString("Este es un idioma diferente.")

print(recognizer.languageHypotheses(withMaximum: 2))

//: [Next](@next)
