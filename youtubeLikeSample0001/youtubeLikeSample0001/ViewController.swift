//
//  ViewController.swift
//  youtubeLikeSample0001
//
//  Created by apple on 2018/12/11.
//  Copyright © 2018 com.nainai0722. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func tappedButton(_ sender: UIButton) {
         performSegue(withIdentifier: "moveMainView", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MainViewController" {
            let mainViewController = segue.destination as! MainViewController
//            mainViewController.detailString = sender as? String
        }
    }
}

