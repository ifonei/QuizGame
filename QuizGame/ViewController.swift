//
//  ViewController.swift
//  QuizGame
//
//  Created by D. F. on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        print("===============000000===============")
        let vc = storyboard?.instantiateViewController(withIdentifier: "Quiz") as? Quiz
        if let viewController = vc {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}

