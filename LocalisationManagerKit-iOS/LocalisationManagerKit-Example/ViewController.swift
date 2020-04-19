//
//  ViewController.swift
//  LocalisationManagerKit-Example
//
//  Created by Osama Rabie on 19/04/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import UIKit
import LocalisationManagerKit_iOS

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var button2: UIButton!
    let shared = TapLocalisationManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shared.localisationLocale = "ar"
        shared.localisationFilePath = URL(fileURLWithPath:Bundle.main.path(forResource: "localize", ofType: "json")!)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label1.text = shared.localisedValue(for: "view1.label1")
        label2.text = shared.localisedValue(for: "view2.label2")
    }


}

