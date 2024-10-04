//
//  ClassMate.swift
//  StarkClassmates
//
//  Created by RYAN STARK on 10/1/24.
//
enum gender {
    case boy, girl
}
import Foundation

class ClassMate {
    
    var Name: String
    var Nick: String
    var Age: Int
    var FavoriteColor: String
    var Grade: Double
    var Gender: gender
    
    init(Name: String, Nick: String, Age: Int, FavoriteColor: String, Grade: Double, Gender: gender) {
        self.Name = Name
        self.Nick = Nick
        self.Age = Age
        self.FavoriteColor = FavoriteColor
        self.Grade = Grade
        self.Gender = Gender
    }
}
