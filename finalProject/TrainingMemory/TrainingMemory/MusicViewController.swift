//
//  MusicViewController.swift
//  TrainingMemory
//
//  Created by Team05 on 6/10/21.
//Haohong Tan haohtan@iu.edu
//Mattie Lawyer matlawye@iu.edu
//App's name: Training Memory
//submission date: 06/18/2021
//

import UIKit
import AVFoundation
class MusicViewController: UIViewController {
    var audioPlay: AVAudioPlayer = AVAudioPlayer()
 

    @IBAction func playMuisc(_ sender: Any) { //stop playback
        if audioPlay.isPlaying{
            audioPlay.stop()
            //change the music button name.
            musicButton.setTitle("PLAY", for: .normal)
        }else{
            //set the path
            let urlMusic = Bundle.main.path(forResource: "background", ofType: "mp3")
            let soundurl = URL(fileURLWithPath: urlMusic!)
            do{
                try audioPlay = AVAudioPlayer(contentsOf: soundurl)
                // play the music
                audioPlay.play()
                //change the music button name.
                musicButton.setTitle("PAUSE", for: .normal)
            }
            catch{
                print(error)
            }
        }    }
    @IBOutlet weak var musicButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicButton.layer.cornerRadius = 25.0
        // Do any additional setup after loading the view.
    }
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
