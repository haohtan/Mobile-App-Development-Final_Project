//
//  TrainingAppModel.swift
//  TrainingMemory
//
//  Created by Team05 on 6/10/21.
//Haohong Tan haohtan@iu.edu
//Mattie Lawyer matlawye@iu.edu
//App's name: Training Memory
//submission date: 06/18/2021


import Foundation

class TrainingModel{
    var allTheTrainingNote : [NotesData] = []
    
    func addNotes(theFitnessPart: String,
                    theDate: String,
                    theHours: String,
                    theNotes: String) {
        self.allTheTrainingNote.append(NotesData(pFitnessPart: theFitnessPart, pDate: theDate, pHours: theHours, pNotes: theNotes))
    }

}

class NotesData: Codable {
    var theFitnessPart: String
    var theDate: String
    var theHours: String
    var theNotes: String
    
    
    
    init(pFitnessPart: String, pDate: String, pHours: String, pNotes: String) {
        self.theFitnessPart = pFitnessPart
        self.theDate = pDate
        self.theHours = pHours
        self.theNotes = pNotes
    }
}
