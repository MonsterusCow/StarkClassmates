//
//  TableFile.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/9/24.
//

import Foundation
import UIKit

class CellStuff: UITableViewCell{
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    
    func configure(Name: String, Nick: String, Age: Int, Color: String, Grade: Double, Gender: gender){
        nameLabel.text = "Name: \(Name) AKA \(Nick)"
        ageLabel.text = "Age: \(Age)"
        gradeLabel.text = "Grade: \(Grade)"
        genderLabel.text = "Gender: \(Gender)"
        colorLabel.text = "Color: \(Color)"
        
    }
    
    
    
}
