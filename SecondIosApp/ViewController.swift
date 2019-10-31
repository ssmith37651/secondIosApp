//
//  ViewController.swift
//  SecondIosApp
//
//  Created by Stephen Smith on 10/30/19.
//  Copyright © 2019 Stephen Smith. All rights reserved.
//

import UIKit

// equivalent of the MainActivity Java class in Android
class ViewController: UIViewController {

    // gives ViewController access to the ImageView
    @IBOutlet weak var monsterImageView: UIImageView!
    
    // create an array of Strings that contains the
    // names of the different monsters
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    // IBOutlets are created as optionals
    // This means that they may contain a value or
    // They may be nil (null)
    @IBOutlet weak var amountTextField: UITextField!
    
    @IBOutlet weak var tipPercentTextField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    // the equivalent of the onCreate method in Java Android Classes
    // called when the scene that it controls is accessed
    // initialization work is done in this method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // creating an instance of a Joke
        let joke = Jokes()
        
        // iterating throught the joke array
        for joke in joke.jokes {
            //printing out the jokes to the debug area
            print(joke)
        }
        
    }

    // gives the ViewController ability to respond to the
    // selection of segments in the Segmented control
    @IBAction func changeMonster(_ sender: UISegmentedControl) {
        
        // change the image in the ImageView based on
        // the segment selected
        
        // get the index of the selected segment (0,1,2,3)
        let index = sender.selectedSegmentIndex
        
        // set the Image of the IMageView to a new UIImage
        // the new UIImage is the element in the monsters
        // array that matches the Index
        monsterImageView.image = UIImage(named: monsters[index])
    }
    
    // gives the ViewController the ability to respond to
    // the button being pushed
    @IBAction func calculateTip(_ sender: UIButton) {
        
        var dTip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        
        // get the values in the TextFields, if a value
        // exists and the assign values to constants
        // the TextFields are Optionals, so they could
        // contain a value and they could also contain nil
        if let amount = amountTextField.text, let percent = tipPercentTextField.text {
            
            // trim whitespace that may exist at the beginning
            // or the ending of the constants
            let trimmedAmount = amount.trimmingCharacters(in: .whitespaces)
            let trimmedPercent = percent.trimmingCharacters(in: .whitespaces)
            
            // check to make sure the trimmed constants
            // aren't empty
            if (!trimmedAmount.isEmpty && !trimmedPercent.isEmpty){
                
                // Convert trimmed constants to Doubles
                dAmount = Double(trimmedAmount)!
                dPercent = Double(trimmedPercent)!
                
                // Calculate the tip
                dTip = dAmount * dPercent
            }
        }
        
        // Convert calculated tip into a String
        // displayed it in the label
        tipLabel.text = "Tip is $\(String(dTip))"
    }
    
}

