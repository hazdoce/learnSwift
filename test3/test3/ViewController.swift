//
//  ViewController.swift
//  test3
//
//  Created by Vladimir Krinkin on 11/05/2019.
//  Copyright © 2019 Vladimir Krinkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func showMessage() {
        let alertController = UIAlertController(title: "Welcome to My First App",
                                                message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style:
            UIAlertAction.Style.default, handler: nil))
        alertController.addAction(UIAlertAction(title: "HO", style:
            UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}

