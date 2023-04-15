//
//  ViewController.swift
//  Module_10
//
//  Created by Renat on 15.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var story: UILabel!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice1: UIButton!
    
    var model = mainModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        choice1.titleLabel?.adjustsFontSizeToFitWidth = true
        choice2.titleLabel?.adjustsFontSizeToFitWidth = true
    }

    func updateUI() {
        story.text = model.allStoties[model.storyIndex].title
        choice1.setTitle(model.allStoties[model.storyIndex].choice1, for: .normal)
        choice2.setTitle(model.allStoties[model.storyIndex].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        //choosePath func returns number of required story
        model.choosePath(usersChoice: sender.currentTitle!)
        updateUI()
    }
}

