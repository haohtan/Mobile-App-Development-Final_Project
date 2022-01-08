//
//  TrainingNoteTableViewCell.swift
//  TrainingMemory
//
//  Created by Team05 on 6/10/21.
//Haohong Tan haohtan@iu.edu
//Mattie Lawyer matlawye@iu.edu
//App's name: Training Memory
//submission date: 06/18/2021


import UIKit

class TrainingNoteTableViewCell: UITableViewCell {

    @IBOutlet weak var dateCell: UILabel!
    @IBOutlet weak var fitnessPartCell: UILabel!
    @IBOutlet weak var hoursCell: UILabel!
    @IBOutlet weak var noteCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
