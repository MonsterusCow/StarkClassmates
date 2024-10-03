//
//  ClassMateViewController.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/2/24.
//

import UIKit

class ClassMateViewController: UIViewController {

    @IBOutlet weak var nameLavel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var textThing: UILabel!
    @IBOutlet weak var nextLabel: UILabel!
    @IBOutlet weak var prevLabel: UILabel!
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var editLable: UILabel!
    @IBOutlet weak var sortLabel: UILabel!
    @IBOutlet weak var labelButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelButton.layer.cornerRadius = 10
        labelButton.layer.masksToBounds = true
        nextLabel.layer.cornerRadius = 10
        nextLabel.layer.masksToBounds = true
        prevLabel.layer.cornerRadius = 10
        prevLabel.layer.masksToBounds = true
        addLabel.layer.cornerRadius = 10
        addLabel.layer.masksToBounds = true
        editLable.layer.cornerRadius = 10
        editLable.layer.masksToBounds = true
        sortLabel.layer.cornerRadius = 10
        sortLabel.layer.masksToBounds = true
        
        nameLavel.text = "\(thing.students[thing.number].Name) Aka \(thing.students[thing.number].Nick)"
        textThing.text = "This dude is \(thing.students[thing.number].Age) years old, their favorite color is \(thing.students[thing.number].FavoriteColor), and their grade is \(thing.students[thing.number].Grade)"
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func nextBytton(_ sender: UIButton) {
        if thing.number != thing.students.count-1{
            thing.number += 1
        } else {
            thing.number = 0
        }
        nameLavel.text = "\(thing.students[thing.number].Name) Aka \(thing.students[thing.number].Nick)"
        textThing.text = "This dude is \(thing.students[thing.number].Age) years old, their favorite color is \(thing.students[thing.number].FavoriteColor), and their grade is \(thing.students[thing.number].Grade)"
        press(label: nextLabel)
    }
    @IBAction func prevButton(_ sender: UIButton) {
        if thing.number > 0{
            thing.number -= 1
        } else {
            thing.number = thing.students.count-1
        }
        nameLavel.text = "\(thing.students[thing.number].Name) Aka \(thing.students[thing.number].Nick)"
        textThing.text = "This dude is \(thing.students[thing.number].Age) years old, their favorite color is \(thing.students[thing.number].FavoriteColor), and their grade is \(thing.students[thing.number].Grade)"
        press(label: prevLabel)
    }
    @IBAction func addButton(_ sender: UIButton) {
        press(label: addLabel)
    }
    @IBAction func editButton(_ sender: UIButton) {
        press(label: editLable)
    }
    @IBAction func sortButton(_ sender: UIButton) {
        press(label: sortLabel)
    }
    
    
    func press(label: UILabel){
        label.textColor = UIColor.gray
        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { timer in
            label.textColor = UIColor.black
            }
    }
    

}
