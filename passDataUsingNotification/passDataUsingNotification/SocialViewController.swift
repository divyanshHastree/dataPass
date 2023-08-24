//
//  SocialViewController.swift
//  passDataUsingNotification
//
//  Created by Hastree on 24/08/23.
//

import UIKit

class SocialViewController: UIViewController {

    @IBOutlet weak var socialMediaLbl : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Executed")

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(facebook(notification: )),
            name: .facebook,
            object: nil)
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(twitter(notification: )),
            name: .twitter,
            object: nil)
        
    }
    
    @objc func facebook(notification : Notification){
        socialMediaLbl.text = "Facebook"
    }
    @objc func twitter(notification : Notification){
        socialMediaLbl.text = "Twitter"
    }
    


}


