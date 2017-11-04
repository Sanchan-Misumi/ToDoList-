//
//  AddViewController.swift
//  WordList
//
//  Created by Maho Misumi on 2017/11/04.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var todoTextField: UITextField!
     @IBOutlet var whenTextField: UITextField!
    
    var wordArray: [Dictionary<String, String>] = []
    
    let saveData = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "WORD") != nil{
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
            }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveWord(){
        let wordDictionary = ["ToDo": todoTextField.text!, "When": whenTextField.text!]
        wordArray.append(wordDictionary)
        saveData.set(wordArray, forKey: "WORD")
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
