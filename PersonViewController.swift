//
//  PersonViewController.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/11/24.
//

import UIKit

class PersonViewController: UIViewController {

    @IBOutlet weak var nameLavel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var textThing: UILabel!
    @IBOutlet weak var labelButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelButton.layer.cornerRadius = 10
        labelButton.layer.masksToBounds = true
        nameLavel.text = "\(thing.students[thing.number].Name) Aka \(thing.students[thing.number].Nick)"
        if thing.students[thing.number].Gender == gender.boy{
            textThing.text = "This dude is \(thing.students[thing.number].Age) years old, their favorite color is \(thing.students[thing.number].FavoriteColor), and their grade is \(thing.students[thing.number].Grade)"
            image.image = UIImage(named: "boy")
        } else {
            textThing.text = "This dudette is \(thing.students[thing.number].Age) years old, their favorite color is \(thing.students[thing.number].FavoriteColor), and their grade is \(thing.students[thing.number].Grade)"
            image.image = UIImage(named: "girl")
        }
    }

    @IBAction func homeButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
