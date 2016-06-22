//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/* The shortened name should be all lowercase letters (this way it will fit in with the song)
 Any consonants before the first vowel will be removed; if no vowels exist, then no consonants will be removed */

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


shortNameFromName("Zöe")





///


/* Silly Songs
 
 A function that takes a name and a template:
 1. Make a shortened version of the name
 2. Replace <FULL_NAME> in the template with the original name
 3. Replace <SHORT_NAME> in the template from step 2 with the shortened name
 4. Return the customized template
 
*/

