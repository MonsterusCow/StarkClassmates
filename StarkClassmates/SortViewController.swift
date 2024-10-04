//
//  SortViewController.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/4/24.
//

import UIKit

class SortViewController: UIViewController {

    @IBOutlet weak var labelButton: UILabel!
    @IBOutlet weak var NameSwitch: UISegmentedControl!
    @IBOutlet weak var AgeSwitch: UISegmentedControl!
    @IBOutlet weak var GradeSwitch: UISegmentedControl!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var gradeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelButton.layer.cornerRadius = 10
        labelButton.layer.masksToBounds = true
        nameLabel.layer.cornerRadius = 10
        nameLabel.layer.masksToBounds = true
        ageLabel.layer.cornerRadius = 10
        ageLabel.layer.masksToBounds = true
        colorLabel.layer.cornerRadius = 10
        colorLabel.layer.masksToBounds = true
        gradeLabel.layer.cornerRadius = 10
        gradeLabel.layer.masksToBounds = true
    }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        thing.number = 0
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func nameSort(_ sender: UIButton) {
        if NameSwitch.selectedSegmentIndex == 0{
            thing.students = thing.students.sorted(by: sortByNameFirst)
        } else {
            thing.students = thing.students.sorted(by: sortByNameLast)
        }
        press(label: nameLabel)
        sorted(alertName: "The class mates have been sorted by name")
    }
    
    @IBAction func ageSort(_ sender: UIButton) {
        if AgeSwitch.selectedSegmentIndex == 0{
            thing.students = thing.students.sorted(by: sortByAgeBig)
        } else {
            thing.students = thing.students.sorted(by: sortByAgeSmall)
        }
        press(label: ageLabel)
        sorted(alertName: "The class mates have been sorted by age")
    }
    
    @IBAction func colorSort(_ sender: UIButton) {
        nuhUH(alertName: "How are you supposed to sort colors???")
        press(label: colorLabel)
        sorted(alertName: "The class mates have been sorted by color")
    }
    
    @IBAction func gradeSort(_ sender: UIButton) {
        if GradeSwitch.selectedSegmentIndex == 0{
            thing.students = thing.students.sorted(by: sortByGradeBig)
        } else {
            thing.students = thing.students.sorted(by: sortByGradeSmall)
        }
        press(label: gradeLabel)
        sorted(alertName: "The class mates have been sorted by grade")
    }
    
    
    
    //sorting things
    func sortByNameFirst(p1: ClassMate, p2: ClassMate) -> Bool {
            return p1.Name < p2.Name
        }
    func sortByNameLast(p1: ClassMate, p2: ClassMate) -> Bool {
            return p1.Name > p2.Name
        }
    func sortByAgeBig(p1: ClassMate, p2: ClassMate) -> Bool {
        return p1.Age > p2.Age
        }
    func sortByAgeSmall(p1: ClassMate, p2: ClassMate) -> Bool {
        return p1.Age < p2.Age
        }
    func sortByGradeBig(p1: ClassMate, p2: ClassMate) -> Bool {
        return p1.Grade > p2.Grade
        }
    func sortByGradeSmall(p1: ClassMate, p2: ClassMate) -> Bool {
        return p1.Grade < p2.Grade
        }
    
    func press(label: UILabel){
        label.textColor = UIColor.gray
        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { timer in
            label.textColor = UIColor.black
            }
    }
    
    func nuhUH(alertName: String)
        {
            let alert = UIAlertController(title: "Error", message: alertName, preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(alertAction)
            
            self.present(alert, animated: true)
            
        }
    
    func sorted(alertName: String)
        {
            let alert = UIAlertController(title: "Sorted", message: alertName, preferredStyle: UIAlertController.Style.alert)
            let alertAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            
            alert.addAction(alertAction)
            
            self.present(alert, animated: true)
            
        }
}
