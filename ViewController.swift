//
//  ViewController.swift
//  war
//
//  Created by Nikhil Panigrahi on 25/03/17.
//  Copyright © 2017 Nikhil Panigrahi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RightCard: UIImageView!
    @IBOutlet weak var LeftCard: UIImageView!
    @IBOutlet weak var LeftScoreLabel: UILabel!
    @IBOutlet weak var RightScoreLabel: UILabel!
    var right:Int=0
    var left:Int=0
    let cardNames = ["ace" , "card2" , "card3" , "card4" , "card5" , "card6" , "card7" , "card8" , "card9" , "card10" , "jack" , "queen" , "king"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealtapped(_ sender: AnyObject) {
        
        let leftnumber:Int = Int(arc4random_uniform(13))
      
        let rightnumber:Int = Int(arc4random_uniform(13))
        
        LeftCard.image = UIImage(named : cardNames[leftnumber])
        
        RightCard.image = UIImage(named :cardNames[rightnumber])
        
        if (leftnumber>rightnumber){
            left += 1
            LeftScoreLabel.text = String(left)
        }
        else if (leftnumber==rightnumber){
        }
        else {
            right += 1
            RightScoreLabel.text = String(right)
        }

}
}

