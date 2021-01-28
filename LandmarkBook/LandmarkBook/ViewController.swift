//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Yapindo on 28/01/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var carsName = [String]()
    var carsImage = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        // Name
        carsName.append("gtr-pandem")
        carsName.append("gtr-libertywalk")
        carsName.append("chevrolet")
        carsName.append("mazda-rx7-red")
        
        // Images
        carsImage.append(UIImage(named: "gtr-pandem")!)
        carsImage.append(UIImage(named: "gtr-libertywalk")!)
        carsImage.append(UIImage(named: "chevrolet")!)
        carsImage.append(UIImage(named: "mazda-rx7-red")!)
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(carsName[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsName.count
    }


}

