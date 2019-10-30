//
//  Jokes.swift
//  SecondIosApp
//
//  Created by Stephen Smith on 10/30/19.
//  Copyright © 2019 Stephen Smith. All rights reserved.
//

import Foundation

class Jokes {
    
    // created a property that is an array of Strings
    var jokes = [String] ()
    
    // created an init method
    // it's the equivalent of a Java constructor
    init() {
        // includes two Strings in the Jokes array
        jokes.append("What do you call a bear with no teeth? A gummy bear!")
        jokes.append("If con is the opposite of progress, then it must mean Congress is the opposite of Progress!")
    }
    
}
