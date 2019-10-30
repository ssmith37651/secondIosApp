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


}

