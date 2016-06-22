//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Takes a fullName and removes any consonants before the first vowel
// Returns the new shortName

func shortNameFromName(fullName: String) -> String {
    var shortName = ""
    let vowels = NSCharacterSet(charactersInString: "aeiou")
    let lowercaseFullName = fullName.lowercaseString.stringByFoldingWithOptions(.DiacriticInsensitiveSearch, locale: nil)
    if let vowelRange = lowercaseFullName.rangeOfCharacterFromSet(vowels, options: .CaseInsensitiveSearch) {
        let vowelStarterName = lowercaseFullName.substringFromIndex(vowelRange.startIndex)
        shortName = vowelStarterName
    }
    return shortName
}

// Takes a Lyrics Template and implements the fullName and ShortName into the song

func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
    let shortName = shortNameFromName(fullName)
    
    let lyrics = lyricsTemplate.stringByReplacingOccurrencesOfString("<FULL_NAME>", withString: fullName)
    return lyrics.stringByReplacingOccurrencesOfString("<SHORT_NAME>", withString: shortName)
}

var fullName = "lenny"
let bananaFanaTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joinWithSeparator("\n")

print(lyricsForName(bananaFanaTemplate, fullName: fullName))


