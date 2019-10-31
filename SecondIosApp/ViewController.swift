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
    
}

