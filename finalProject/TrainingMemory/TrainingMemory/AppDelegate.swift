//
//  AppDelegate.swift
//  TrainingMemory
//
//  Created by Team05 on 6/18/21.
//Haohong Tan haohtan@iu.edu
//Mattie Lawyer matlawye@iu.edu
//App's name: Training Memory
//submission date: 06/18/2021


import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    let myTrainingModel = TrainingModel()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //Use AppDelegate to check if the plist exists and then load the data to the view
            do{
        //Same as previous fileManager
            let fm = FileManager.default
            let docsurl = try! fm.url(for:.documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let path = docsurl.appendingPathComponent("notesInformations.plist")
                    //Decode instances of data types from a property list.
            let property = try PropertyListDecoder().decode([NotesData].self, from: try Data(contentsOf: path))
                myTrainingModel.allTheTrainingNote = property
                    }catch let err{
                      print(err)
                    
            }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

