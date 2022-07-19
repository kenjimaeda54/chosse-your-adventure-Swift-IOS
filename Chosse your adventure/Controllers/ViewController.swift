//
//  ViewController.swift
//  Chosse your adventure
//
//  Created by kenjimaeda on 18/07/22.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var labelDescription: UILabel!
	@IBOutlet weak var buttonChoice1: UIButton!
	@IBOutlet weak var buttonChoice2: UIButton!
	
	let storyModel = StoryModel()
	
	override func viewDidLoad() {
		super.viewDidLoad()
	
		setupViews()
	
	}
	
	func setupViews () {
		let description = StoryModel.title
		let attributedString = NSMutableAttributedString(string: description)
		let paragraphStyle = NSMutableParagraphStyle()
		paragraphStyle.lineSpacing = 4
		paragraphStyle.lineHeightMultiple = 1.5
		attributedString.addAttribute(.paragraphStyle,value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
		labelDescription.attributedText = attributedString
		buttonChoice1.setTitle(StoryModel.choice1, for: .normal)
		buttonChoice2.setTitle(StoryModel.choice2, for: .normal)
	
	}
	
	@IBAction func pressChoice1(_ sender: UIButton) {
		let story = StoryModel.story.filter({
			 sender.currentTitle == $0.choice1
		})
		storyModel.handleDestination1(story[0].choice1Destionation)
		setupViews()
	}
	
	@IBAction func pressChoice2(_ sender: UIButton) {
		let story = StoryModel.story.filter({
			 sender.currentTitle == $0.choice2
		})
		storyModel.handleDestination1(story[0].choice2Destionation)
		setupViews()
	}
}

