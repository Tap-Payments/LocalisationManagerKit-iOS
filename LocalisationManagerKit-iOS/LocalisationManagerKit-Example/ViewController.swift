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
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var button3: UIButton!
    let shared = TapLocalisationManager.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        shared.localisationLocale = "en"
        shared.localisationFilePath = URL(fileURLWithPath:Bundle.main.path(forResource: "localize", ofType: "json")!)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        localise()
    }
    
    func localise() {
        label1.text = shared.localisedValue(for: "view1.label1")
        label2.text = shared.localisedValue(for: "view2.label2")
        label3.text = shared.localisedValue(for: "view3.label3",with: URL(fileURLWithPath:Bundle.main.path(forResource: "fallback", ofType: "json")!))
        
        
        button1.setTitle(shared.localisedValue(for: "view1.button1"), for: .normal)
        button2.setTitle(shared.localisedValue(for: "view2.button2"), for: .normal)
        button3.setTitle(shared.localisedValue(for: "view3.button3",with: URL(fileURLWithPath:Bundle.main.path(forResource: "fallback", ofType: "json")!)), for: .normal)
        
        
    }

    @IBAction func languageChanged(_ sender: Any) {
        if let segment = sender as? UISegmentedControl {
            if segment.selectedSegmentIndex == 0 {
                shared.localisationLocale = "en"
            }else {
                shared.localisationLocale = "ar"
            }
            
            localise()
        }
    }
    
}

