//
//  ViewController.swift
//  twoFrame
//
//  Created by Dmitriy Mukhin on 20.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var textButton: UIButton!
    
    private var arrayOfColorView : [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfColorView.append(redView)
        arrayOfColorView.append(yellowView)
        arrayOfColorView.append(greenView)
        
        for currentView in arrayOfColorView {
            let bg = currentView.backgroundColor
            currentView.layer.cornerRadius = currentView.frame.size.width / 2
            currentView.clipsToBounds = true
            currentView.backgroundColor = bg?.withAlphaComponent(0.3)
        }
    }

    @IBAction func buttonChange(_ sender: UIButton) {
        
    }
    
    
}

