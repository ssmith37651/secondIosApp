//
//  NewViewController.swift
//  SecondIosApp
//
//  Created by Stephen Smith on 10/31/19.
//  Copyright © 2019 Stephen Smith. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    
    // Gives NewViewController access to
    // the label
    @IBOutlet weak var tipLabel: UILabel!
    
    // Create a String that will store the
    // calculated tip from the original ViewController
    var tipToShow = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // display the calculated tip sent
        // from the original ViewController
        // in the Label
        tipLabel.text = tipToShow
    }
    
    
    @IBAction func goToTableView(_ sender: UIButton) {
        
        // segue to the NewViewController
        // this method requires that the prepare method be overridden
        performSegue(withIdentifier: "GoToTableView", sender: nil)
    }
    
    // this method creates an Instance of the ViewController that is being
    // segued
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // if we're segueing to the NewViewController that has the identifier
        // GoToTableView
        if segue.identifier == "GoToTableView"{
            // create an instance of that View Controller
            // check if the segue destination is castable to a NewTableViewController
            // and cast it if it is, else return nil
            _ = segue.destination as? NewTableViewController
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
