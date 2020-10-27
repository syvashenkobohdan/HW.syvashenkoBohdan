//
//  ViewController.swift
//  HW4
//
//  Created by Богдан Сивашенко on 15.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(transliterate(str: "ДоРОГА"))
    }
    
    func transliterate(str: String) -> String {
        return str
                    .applyingTransform(.toLatin, reverse: false)?
                    .applyingTransform(.stripDiacritics, reverse: false) ?? str
                    
    }
    
    
}


