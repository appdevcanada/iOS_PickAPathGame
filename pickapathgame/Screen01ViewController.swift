//
//  Screen01ViewController.swift
//  pickapathgame
//
//  Created by Luis Souza on 2019-11-14.
//  Copyright © 2019 Luis Henrique Souza. All rights reserved.
//

import UIKit

class Screen01ViewController: UIViewController {

    // Variables
    @IBOutlet weak var pg1ch1: UIBarButtonItem!
    @IBOutlet weak var pg1ch2: UIBarButtonItem!
    @IBOutlet weak var pg1TxtV: UITextView!
    @IBOutlet weak var navPage: UINavigationItem!
    @IBOutlet weak var imgOttawa: UIImageView!
    
    // Initialize all pages variables
    var page1: Page? = Page()
    var page2: Page? = Page()
    var page3: Page? = Page()
    var page4: Page? = Page()
    var page5: Page? = Page()
    var page6: Page? = Page()
    var page7: Page? = Page()
    var currentPage: Page? = Page()


    // Functions
    @IBAction func pg1Ch1(_ sender: Any) {
        performSegue(withIdentifier: "showPageB", sender: "Ch1")
    }
    @IBAction func pg1Ch2(_ sender: Any) {
        performSegue(withIdentifier: "showPageB", sender: "Ch2")    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as? Screen02ViewController

        // Sets next VC according to the page selected
        switch sender as! String {
            // In case Page 2
            case "Ch1":
                nextVC?.currentPage = self.currentPage?.pgCh1
                            
            // In case Page 3
            case "Ch2":
                nextVC?.currentPage = self.currentPage?.pgCh2

            default:
                return
        }

    }

    // Initializes controllers with first values (viewDidLoad)
    override func viewWillAppear(_ animated: Bool) {
        navPage.title = "Page \(currentPage?.pgNumber ?? 0)"
        pg1ch1.title = "Page 2"
        pg1ch2.title = "Page 3"
        pg1TxtV.text = currentPage?.pgText
    }
    
    // Initializes Page numbers and textviews contents
    override func viewDidLoad() {
        super.viewDidLoad()
        page1?.pgNumber = 1
        page1?.pgText = "Your phone buzzes relentlessly with Twitter and Facebook feed updates – zombies are flooding the streets of Ottawa! You grab your backpack. Is the first thing you look for:\n\n\t• a weapon to defend yourself?\n(Page 2)\n\t• food and supplies? Who knows when you'll be able to have another good meal?\n(Page 3)"
        page2?.pgNumber = 2
        page2?.pgText = "You rush to the basement and find a baseball bat, a chainsaw, and a paintball gun. You grab the bat, a few snacks, and consider your options. Do you:\n\n\t• board up the house and try wait out the invasion?\n(Page 4)\n\t• run to the mall? It kind-of worked in that movie.\n(Page 5)"
        page3?.pgNumber = 3
        page3?.pgText = "You pack a few sets of clothes, and as much food as your bag can hold. Looking cautiously outside the window, the streets seem empty. Do you:\n\n\t• make a run for the car? If you make it out of town, you may be able to buy yourself some time.\n(Page 6)\n\t• call your buddies and set up a rendezvous? You'll be safer in numbers.\n(Page 7)"
        page4?.pgNumber = 4
        page4?.pgText = "You tear apart your furniture and board up all of the windows and doors. Sitting at the top of the stairs, you wait for the inevitable. Several hours later the doorbell rings. You cautiously peer outside, and see your friends waiting at the door. They laugh hysterically as you rip down the barricade. 'Don't you know what day it is?' one asks you.\nApril 1st!\nAh well - at least you're prepared...\nOr maybe not!"
        page5?.pgNumber = 5
        page5?.pgText = "You grab your bag, lock up the house, and run down the street towards the mall. Off in the distance, you see some lumbering silhouettes. As you reach the doors, you notice that a few others seem to have had the same idea. Once inside, the doors are locked, and you claim one of the big showroom beds and a 60” LED TV as your own. Who knows how long you'll have to wait?\n\n\tTO BE CONTINUED..."
        page6?.pgNumber = 6
        page6?.pgText = "Your bags are packed, and you get the keys to the car. You're glad you filled up the tank on your way home from work last night. After making sure the coast is clear, you lock the door and dash to the car. Your parents are out of the country – thankfully – which means that the boat should be locked up along the river. You'll be safe there; everyone knows that zombies can't swim... right?\n\n\tTO BE CONTINUED..."
        page7?.pgNumber = 7
        page7?.pgText = "Even calling your friends, you couldn't defeat the hundreds of zombies that attacked your group. All efforts were not enough and...\n\n\t\tYou are now a ZOMBIE!"

        // Sets other pages actions according
        // the selected page by the user
        page1?.pgCh1 = page2
        page1?.pgCh2 = page3
        page2?.pgCh1 = page4
        page2?.pgCh2 = page5
        page3?.pgCh1 = page6
        page3?.pgCh2 = page7
        
        currentPage = page1
    }
    
}
