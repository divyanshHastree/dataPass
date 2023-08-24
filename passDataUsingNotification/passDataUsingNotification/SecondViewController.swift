//
//  SecondViewController.swift
//  passDataUsingNotification
//
//  Created by Hastree on 24/08/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var facebookBtn: UIButton!
    
    
    @IBOutlet weak var twitterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actionFacebookBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .facebook, object: nil)
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func actionTwitterBtn(_ sender: Any) {
        NotificationCenter.default.post(name: .twitter, object: nil)
        navigationController?.popViewController(animated: true)
    }
    
}
