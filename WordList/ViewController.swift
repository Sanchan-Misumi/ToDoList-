//
//  ViewController.swift
//  WordList
//
//  Created by Maho Misumi on 2017/11/04.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func back(segue: UIStoryboardSegue){
    }
    @IBAction func startButtonTapped(){
        let saveDate = UserDefaults.standard
        if  let wordArray = saveDate.array(forKey: "WORD"){
            if wordArray.count > 0 {
            self.performSegue(withIdentifier: "toQuestionView", sender: nil)
        }
    }
        let alert: UIAlertController = UIAlertController (
            title: "単語",
            message: "まずは単語一覧をタップして単語を登録してください",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        ))
        self.present(alert, animated: true, completion: nil)
}
}

















