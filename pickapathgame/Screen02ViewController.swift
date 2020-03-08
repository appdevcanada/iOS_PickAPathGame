//
//  Screen02ViewController.swift
//  pickapathgame
//
//  Created by Luis Souza on 2019-11-14.
//  Copyright © 2019 Luis Henrique Souza. All rights reserved.
//

import UIKit

class Screen02ViewController: UIViewController {

    // Variables
    @IBOutlet weak var pg2ch1: UIBarButtonItem!
    @IBOutlet weak var pg2ch2: UIBarButtonItem!
    @IBOutlet weak var pg2TxtV: UITextView!
    @IBOutlet weak var navPage: UINavigationItem!
 
    var currentPage: Page?


    // Funtions
    @IBAction func pg2Ch1(_ sender: Any) {
        performSegue(withIdentifier: "showPageC", sender: "Ch1")
    }
    
    @IBAction func pg2Ch2(_ sender: Any) {
        performSegue(withIdentifier: "showPageC", sender: "Ch2")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as? Screen03ViewController

        // Sets next VC according to the page selected
        switch sender as! String {
            // In case Page 4
            case "Ch1":
                nextVC?.currentPage = self.currentPage?.pgCh1
                            
            // In case Page 5
            case "Ch2":
                nextVC?.currentPage = self.currentPage?.pgCh2

            default:
                return
        }
    }
    
    // Initializes controllers with values received from first VC
    override func viewWillAppear(_ animated: Bool) {
        let curPg = currentPage?.pgNumber ?? 0
        navPage.title = "Page \(curPg)"
        pg2ch1.title = "Page \(curPg * 2)"
        pg2ch2.title = "Page \(curPg * 2 + 1)"
        pg2TxtV.text = currentPage?.pgText
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
