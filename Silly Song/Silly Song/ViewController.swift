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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(sender: AnyObject) {
    }
    
    @IBAction func displayLyrics(sender: AnyObject) {
    }

}

