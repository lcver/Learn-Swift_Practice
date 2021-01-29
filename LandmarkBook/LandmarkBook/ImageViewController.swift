//
//  ImageViewController.swift
//  LandmarkBook
//
//  Created by Yapindo on 29/01/21.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedCarName = ""
    var selectedCarImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedCarName
        imageView.image = selectedCarImage
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
