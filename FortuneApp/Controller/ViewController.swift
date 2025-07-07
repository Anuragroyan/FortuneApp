//
//  ViewController.swift
//  FortuneApp
//
//  Created by Dungeon_master on 31/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var storyLabel: UILabel!

    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMe(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

