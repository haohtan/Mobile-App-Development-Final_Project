//
//  ViewController.swift
//  TrainingMemory
//
//  Created by Team05 on 6/10/21.
//Haohong Tan haohtan@iu.edu
//Mattie Lawyer matlawye@iu.edu
//App's name: Training Memory
//submission date: 06/18/2021

import UIKit
import AVFoundation
class MainViewController: UIViewController {
    
    var audioPlay: AVAudioPlayer = AVAudioPlayer()
 
    
    @IBAction func noteAction(_ sender: Any) {
        (sender as! UIButton).tag = 0
        performSegue(withIdentifier: "tabBar", sender: sender)
    }
    
    
    @IBAction func historyAction(_ sender: Any) {
        (sender as! UIButton).tag = 1
        performSegue(withIdentifier: "tabBar", sender: sender)
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        if segue.identifier == "tabBar"{
            if let vc = segue.destination as? UITabBarController{
                vc.selectedIndex = (sender as! UIButton).tag
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

