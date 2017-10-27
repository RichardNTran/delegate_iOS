//
//  ClassBVC.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

//MARK: step 1 Add Protocol here
protocol SmartDelegate: class {
    func updateAnswer(_ answer: String)
}

class SmartViewController: UIViewController {
    

    //MARK: step 2 Create a delegate property here, don't forget to make it weak!
    weak var delegate: SmartDelegate?
    
    @IBOutlet weak var isIdiot: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func goBack(_ sender: UIBarButtonItem) {
        delegate?.updateAnswer(isIdiot.isOn ? "You are Idiot" : "You are not Idiot")
        navigationController?.dismiss(animated: true)
    }
    
}
