//
//  ViewController.swift
//  Svetofor
//
//  Created by Anna Prilipkina on 17.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    
    @IBOutlet var actionButton: UIButton!
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSignalView.layer.cornerRadius = 75
        redSignalView.alpha = 0.3
        redSignalView.backgroundColor = .red
        yellowSignalView.layer.cornerRadius = 75
        yellowSignalView.alpha = 0.3
        greenSignalView.layer.cornerRadius = 75
        greenSignalView.alpha = 0.3
        
        actionButton.layer.cornerRadius = 10
        actionButton.setTitle("START", for: .normal)
    }
    
    @IBAction func actionButtonTapped() {
        actionButton.setTitle("NEXT", for: .normal)
        switch count {
        case 0:
            redSignalView.alpha = 1
            greenSignalView.alpha = 0.3
            count += 1
        case 1:
            yellowSignalView.alpha = 1
            redSignalView.alpha = 0.3
            count += 1
        case 2:
            greenSignalView.alpha = 1
            yellowSignalView.alpha = 0.3
            count = 0
        default:
            count = 0
        }
    }
}

