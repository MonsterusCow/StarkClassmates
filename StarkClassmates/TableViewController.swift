//
//  TableViewController.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/9/24.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    
    @IBOutlet weak var tableViewThing: UITableView!
    @IBOutlet weak var labelButton: UILabel!
    @IBOutlet weak var addButton: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableViewThing.delegate = self
        tableViewThing.dataSource = self
        labelButton.layer.cornerRadius = 10
        labelButton.layer.masksToBounds = true
        addButton.layer.cornerRadius = 10
        addButton.layer.masksToBounds = true
        tableViewThing.reloadData()
    }
    @IBAction func backButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToAdd(_ sender: Any) {
        performSegue(withIdentifier: "addgohere", sender: self)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thing.students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellBeHere") as! CellStuff
        cell.configure(Name: thing.students[indexPath.row].Name, Nick: thing.students[indexPath.row].Nick, Age: thing.students[indexPath.row].Age, Color: thing.students[indexPath.row].FavoriteColor, Grade: thing.students[indexPath.row].Grade, Gender: thing.students[indexPath.row].Gender)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "gohere", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            thing.students.remove(at: indexPath.row)
            tableViewThing.deleteRows(at: [indexPath], with: .fade)
        }
    }

    
}
