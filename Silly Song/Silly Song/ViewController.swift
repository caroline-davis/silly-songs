//
//  ViewController.swift
//  Silly Song
//
//  Created by Caroline Davis on 22/06/2016.
//  Copyright © 2016 Caroline Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(sender: AnyObject) {
        nameField.text = ""
        lyricsView.text = ""
    }
    
    @IBAction func displayLyrics(sender: AnyObject) {
        if nameField != "" {
           lyricsView.text = lyricsForName(bananaFanaTemplate, fullName: nameField.text!)
        } else {
            "Did not Work"
        }
    }

}

// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

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

//print(lyricsForName(bananaFanaTemplate, fullName: fullName))

