//
//  ViewController.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

//MARK: step 4 conform the protocol here
class IdiotViewController: UIViewController, SmartDelegate {
    
    @IBOutlet weak var answerIdiot: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nav = segue.destination as? UINavigationController, let svc = nav.topViewController as? SmartViewController {
            svc.delegate = self
        }
    }
    
    func updateAnswer(_ answer: String) {
        answerIdiot.text = answer
    }
}
