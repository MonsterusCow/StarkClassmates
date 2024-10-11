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
    @IBOutlet weak var lotsOfGuys: UILabel!
    
    var mattew = ClassMate(Name: "Mattew", Nick: "Glitch Fitch", Age: 16, FavoriteColor: "purble", Grade: 23.0, Gender: gender.boy)
    var peter = ClassMate(Name: "Peter", Nick: "Peter Kickle", Age: 12, FavoriteColor: "blue", Grade: 3.5, Gender: gender.boy)
    var daniel = ClassMate(Name: "Daniel", Nick: "Bananiael", Age: 102, FavoriteColor: "red", Grade: 68.99, Gender: gender.boy)
    var micheal = ClassMate(Name: "Micheal", Nick: "Micheal Micheal Tricical", Age: 16, FavoriteColor: "Blue", Grade: 127, Gender: gender.boy)
    var googan = ClassMate(Name: "Googan", Nick: "Googball Googan", Age: 16, FavoriteColor: "Green", Grade: 210, Gender: gender.boy)
    var sean = ClassMate(Name: "Sean", Nick: "Boat Gone Sean", Age: 16, FavoriteColor: "Light Blue", Grade: 12.3, Gender: gender.boy)
    var ryan = ClassMate(Name: "Ryan", Nick: "Rainbow Ryan", Age: 16, FavoriteColor: "Silver", Grade: 192, Gender: gender.boy)
    var cam = ClassMate(Name: "Cam", Nick: "Chef Cam", Age: 15, FavoriteColor: "Tan", Grade: 99.99, Gender: gender.boy)
    var brennen = ClassMate(Name: "Brennen", Nick: "Breakin Brennen", Age: 15, FavoriteColor: "Sea Green", Grade: 45.3, Gender: gender.boy)
    var eva = ClassMate(Name: "Eva", Nick: "No Pickles Noftz", Age: 17, FavoriteColor: "Cyan", Grade: 256, Gender: gender.girl)
    var ava = ClassMate(Name: "Ava", Nick: "Abba Ava", Age: 17, FavoriteColor: "Teal", Grade: 1, Gender: gender.girl)
    var justin = ClassMate(Name: "Justin", Nick: "Trustin Justin", Age: 17, FavoriteColor: "Hot Pink", Grade: 97.3, Gender: gender.boy)
    var jaiden = ClassMate(Name: "Jaiden", Nick: "Sleepy Saurer", Age: 17, FavoriteColor: "Medium Purple", Grade: 10, Gender: gender.boy)
    var john = ClassMate(Name: "John", Nick: "Jimmy John", Age: 17, FavoriteColor: "Dark Green", Grade: 67, Gender: gender.boy)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        thing.students.append(mattew)
        thing.students.append(peter)
        thing.students.append(daniel)
        thing.students.append(micheal)
        thing.students.append(googan)
        thing.students.append(sean)
        thing.students.append(ryan)
        thing.students.append(cam)
        thing.students.append(brennen)
        thing.students.append(eva)
        thing.students.append(ava)
        thing.students.append(justin)
        thing.students.append(jaiden)
        thing.students.append(john)
        labelbutton.layer.cornerRadius = 10
        labelbutton.layer.masksToBounds = true
        lotsOfGuys.layer.cornerRadius = 10
        lotsOfGuys.layer.masksToBounds = true

        
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
        var nvc = segue.destination as? ClassMateViewController
    }


}

