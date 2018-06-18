//
//  ViewController.swift
//  UILongPressGesture
//
//  Copyright © 2018 MyCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var longGesture = UILongPressGestureRecognizer()
    @IBOutlet weak var viewLong: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        longGesture = UILongPressGestureRecognizer(target: self, action: #selector(self.longPress(_:)))
        longGesture.minimumPressDuration = 1
        viewLong.addGestureRecognizer(longGesture)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func longPress(_ sender: UILongPressGestureRecognizer){
        let alertC = UIAlertController(title: "Long Press", message: "Long press gesture called when you press on view for 1 second", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            
        }
        alertC.addAction(ok)
        self.present(alertC, animated: true, completion: nil)
    }

}

