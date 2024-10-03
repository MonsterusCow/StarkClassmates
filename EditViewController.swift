//
//  EditViewController.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/2/24.
//

import UIKit




class EditViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nickField: UITextField!
    @IBOutlet weak var colorField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var gradeField: UITextField!
    @IBOutlet weak var labelButton: UILabel!
    @IBOutlet weak var finishButton: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        labelButton.layer.cornerRadius = 10
        labelButton.layer.masksToBounds = true
        finishButton.layer.cornerRadius = 10
        finishButton.layer.masksToBounds = true
        nameField.text = thing.students[thing.number].Name
        nickField.text = thing.students[thing.number].Nick
        colorField.text = thing.students[thing.number].FavoriteColor
        ageField.text = String(thing.students[thing.number].Age)
        gradeField.text = String(thing.students[thing.number].Grade)
        nameField.delegate = self
        nickField.delegate = self
        colorField.delegate = self
        ageField.delegate = self
        gradeField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameField.resignFirstResponder()
        nickField.resignFirstResponder()
        colorField.resignFirstResponder()
        ageField.resignFirstResponder()
        return gradeField.resignFirstResponder()
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        press(label: labelButton)
    }
    
    
    
    @IBAction func finishButton(_ sender: UIButton) {
        press(label: finishButton)
        var go = true
        if nameField.text == "" {
            go = false
            nuhUH(alertName: "There nothing in the name field")
        }
        if go {
            if colorField.text == "" {
                go = false
                nuhUH(alertName: "There nothing in the color field")
            }
        }
        if go {
            if nickField.text == "" {
                go = false
                nuhUH(alertName: "There nothing in the nick field")
            }
        }
        if go {
            if ageField.text == "" {
                go = false
                nuhUH(alertName: "There nothing in the age field")
            }
        }
        if go {
            if gradeField.text == "" {
                go = false
                nuhUH(alertName: "There nothing in the grade field")
            }
        }
        let decimalCharacters = CharacterSet.decimalDigits
        var decimalRange = nameField.text!.rangeOfCharacter(from: decimalCharacters)
        if go {
            if decimalRange != nil {
                go = false
                nuhUH(alertName: "Theres a number in the name field")
            }
        }
        decimalRange = colorField.text!.rangeOfCharacter(from: decimalCharacters)
        if go {
            if decimalRange != nil {
                go = false
                nuhUH(alertName: "Theres a number in the color field")
            }
        }
        decimalRange = nickField.text!.rangeOfCharacter(from: decimalCharacters)
        if go {
            if decimalRange != nil {
                go = false
                nuhUH(alertName: "Theres a number in the nickname field")
            }
        }
        if go{
            if Int(ageField.text!) == nil {
                go = false
                nuhUH(alertName: "There is something that isnt numbers in the age field")
            }
        }
        if go{
            if Double(gradeField.text!) == nil {
                go = false
                nuhUH(alertName: "There is something that isnt numbers in the grade field")
            }
        }
        
        
        if go {
            thing.students[thing.number].Name = nameField.text!
            thing.students[thing.number].Nick = nickField.text!
            thing.students[thing.number].FavoriteColor = colorField.text!
            thing.students[thing.number].Age = Int(ageField.text!)!
            thing.students[thing.number].Grade = Double(gradeField.text!)!
            self.navigationController?.popViewController(animated: true)
        }
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

}
