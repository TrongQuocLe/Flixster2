//
//  DetailViewController.swift
//  MyStory
//
//  Created by LE, TRONG QUOC on 3/1/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Property
        var detail: Detail?
    // IBOutlet
    
    
    @IBOutlet weak var detailImage: UIImageView!
    
    // Fact Labels
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let detail = detail {
               print(detail.title)
           }

        if let detail = detail {
            self.navigationItem.backButtonTitle = ""
            self.navigationItem.title = detail.title
            detailImage.image = detail.image
            infoLabel.text = detail.info
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
