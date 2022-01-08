//
//  WritingPartViewController.swift
//  TrainingMemory
//
//  Created by Team05 on 6/10/21.
//Haohong Tan haohtan@iu.edu
//Mattie Lawyer matlawye@iu.edu
//App's name: Training Memory
//submission date: 06/18/2021


import UIKit
import AVKit
import AVFoundation

class WritingPartViewController: UIViewController, AVPlayerViewControllerDelegate{
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var notePart: UITextField!
    @IBOutlet weak var hoursForTraining: UITextField!
    @IBOutlet weak var datePart: UITextField!
    @IBOutlet weak var fitnessPart: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //set the button become radius
        submitButton.layer.cornerRadius = 25.0
        //set the current date time
        let dateForm = DateFormatter()
        //set the format for the date
        dateForm.dateFormat = "MM dd yyyy"
        //let the date become a string
        let str = dateForm.string(from: Date())
        //displat into a datePart 
        datePart.text = str
        

        // Do any additional setup after loading the view.
    }

    @IBAction func submitAction(_ sender: Any) {
        
        let lAppDelegate = UIApplication.shared.delegate as! AppDelegate
         
        let lDataModel = lAppDelegate.myTrainingModel
        lDataModel.addNotes(theFitnessPart: self.fitnessPart.text!, theDate: self.datePart.text!, theHours: self.hoursForTraining.text!, theNotes: self.notePart.text!)
        
        //set the path
        guard let VideoPath = Bundle.main.path(forResource: "Done", ofType: "mp4") else {
            print("could not find")
            return
            
        }
            let video = AVPlayer(url: URL(fileURLWithPath: VideoPath))
            let videoPlay = AVPlayerViewController()
            videoPlay.player = video
            present(videoPlay, animated: true)
            
        
        
        
        do{
        let fm = FileManager.default
        let docsurl = try fm.url(for:.documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            print(docsurl)
//        let notes = NotesData(pFitnessPart: self.fitnessPart.text!, pDate: self.datePart.text!, pHours: self.hoursForTraining.text!, pNotes: self.notePart.text!)
        
            let notes = try PropertyListEncoder().encode(lDataModel.allTheTrainingNote)
            let noteFiles = docsurl.appendingPathComponent("notesInformations.plist")
            try notes.write(to: noteFiles, options: .atomic)
        }catch{
            print(error)
        }

        
         
    }
    

}
