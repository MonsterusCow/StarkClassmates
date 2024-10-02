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
    var number = 0
    @IBOutlet weak var nextLabel: UILabel!
    @IBOutlet weak var prevLabel: UILabel!
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var editLable: UILabel!
    @IBOutlet weak var sortLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
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
        
        nameLavel.text = "\(thing.students[number].Name) Aka \(thing.students[number].Nick)"
        textThing.text = "This dude is \(thing.students[number].Age) years old, their favorite color is \(thing.students[number].FavoriteColor), and their grade is \(thing.students[number].Grade)"
    }
    
    @IBAction func nextBytton(_ sender: UIButton) {
        if number != thing.students.count-1{
            number += 1
        } else {
            number = 0
        }
        nameLavel.text = "\(thing.students[number].Name) Aka \(thing.students[number].Nick)"
        textThing.text = "This dude is \(thing.students[number].Age) years old, their favorite color is \(thing.students[number].FavoriteColor), and their grade is \(thing.students[number].Grade)"
    }
    @IBAction func prevButton(_ sender: UIButton) {
        if number > 0{
            number -= 1
        } else {
            number = thing.students.count-1
        }
        nameLavel.text = "\(thing.students[number].Name) Aka \(thing.students[number].Nick)"
        textThing.text = "This dude is \(thing.students[number].Age) years old, their favorite color is \(thing.students[number].FavoriteColor), and their grade is \(thing.students[number].Grade)"
    }
    

}
