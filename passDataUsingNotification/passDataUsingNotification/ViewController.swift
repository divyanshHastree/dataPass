//
//  ViewController.swift
//  passDataUsingNotification
//
//  Created by Hastree on 24/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chooseSocialMediaBtn: UIButton!
    
    @IBOutlet weak var socialMediaNameLbl: UILabel!
    
    
    @IBOutlet weak var socialMediaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
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
        socialMediaNameLbl.text = "Facebook"
        socialMediaImage.image = UIImage(imageLiteralResourceName: "facebook")
    }
    
    @objc func twitter(notification : Notification){
        socialMediaNameLbl.text = "Twitter"
        socialMediaImage.image = UIImage(imageLiteralResourceName: "twitter")
        
    }

    @IBAction func actionChooseSocialMediaBtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension Notification.Name{
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
    
}

