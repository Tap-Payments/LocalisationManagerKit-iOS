//
//  TapLocalisationManager.swift
//  LocalisationManagerKit-iOS
//
//  Created by Osama Rabie on 19/04/2020.
//  Copyright © 2020 Tap Payments. All rights reserved.
//

import Foundation
/// Represents  the tap localisation singleton class
@objc public class TapLocalisationManager: NSObject {
    
    /// This is the shared instance of the tap localiser, this is what you  have to use to access the available methods
    @objc public static let shared = TapLocalisationManager()
    /// Please set the localisation json file path you want the localiser to fetch values from
    @objc public var localisationFilePath:URL?
    /// Please set the locale you want the localiser to use
    @objc public var localisationLocale:String?
    
    
}


