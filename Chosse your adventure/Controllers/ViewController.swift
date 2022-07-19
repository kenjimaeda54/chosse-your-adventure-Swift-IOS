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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let letter =  "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'."
		let attributedString = NSMutableAttributedString(string: letter)
		let paragraphStyle = NSMutableParagraphStyle()
		paragraphStyle.lineSpacing = 4
		paragraphStyle.lineHeightMultiple = 1.5
		attributedString.addAttribute(.paragraphStyle,value: paragraphStyle, range: NSRange(location: 0, length: attributedString.length))
		labelDescription.attributedText = attributedString
	}
	
	
}

