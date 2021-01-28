//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Yapindo on 28/01/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        var carsName = [String]()
        carsName.append("gtr-pandem")
        carsName.append("gtr-libertywalk")
        carsName.append("chevrolet")
        carsName.append("mazda-rx7-red")
        
        var carsImage = [UIImage]()
        carsImage.append(UIImage(named: "gtr-pandem")!)
        carsImage.append(UIImage(named: "gtr-libertywalk")!)
        carsImage.append(UIImage(named: "chevrolet")!)
        carsImage.append(UIImage(named: "mazda-rx7-red")!)
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test \(indexPath.row)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }


}

