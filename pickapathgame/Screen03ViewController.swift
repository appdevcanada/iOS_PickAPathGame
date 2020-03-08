//
//  Screen03ViewController.swift
//  pickapathgame
//
//  Created by Luis Souza on 2019-11-14.
//  Copyright © 2019 Luis Henrique Souza. All rights reserved.
//

import UIKit

class Screen03ViewController: UIViewController {

    // Variables
    @IBOutlet weak var pg3TxtV: UITextView!
    @IBOutlet weak var navPage: UINavigationItem!
    @IBOutlet weak var imgZb: UIImageView!
    
    var currentPage: Page?

    // Functions
    override func viewWillAppear(_ animated: Bool) {
        navPage.title = "Page \(currentPage?.pgNumber ?? 0)"
        pg3TxtV.text = currentPage?.pgText
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        // Animate the image with fade-in effect
        UIView.animate(withDuration: 1.5) {
            self.imgZb.alpha = 1.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Sets the alpha of the image to be invisible
        imgZb.alpha = 0.0
    }
    
    // Returns the controller to the first VC (Screen01VC - root)
    @IBAction func btnRestart(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
