//
//  ViewController.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/1/24.
//
class thing{
    static var students = [ClassMate]()
    static var number = 0
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelbutton: UILabel!
    
    var mattew = ClassMate(Name: "Mattew", Nick: "Glitch Fitch", Age: 16, FavoriteColor: "purble", Grade: 23.0)
    var peter = ClassMate(Name: "Peter", Nick: "Peter Kickle", Age: 12, FavoriteColor: "blue", Grade: 3.5)
    var daniel = ClassMate(Name: "Daniel", Nick: "Bananiael", Age: 102, FavoriteColor: "red", Grade: 68.99)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        thing.students.append(mattew)
        thing.students.append(peter)
        thing.students.append(daniel)
        labelbutton.layer.cornerRadius = 10
        labelbutton.layer.masksToBounds = true
        
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        press(label: labelbutton)
    }
    
    func press(label: UILabel){
        label.textColor = UIColor.gray
        let timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: false) { timer in
            label.textColor = UIColor.black
            }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var nvc = segue.destination as! ClassMateViewController
    }


}

