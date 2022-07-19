//
//  ViewController.swift
//  CollectionCell
//
//  Created by Yang Chi on 2022/7/19.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    
    var coffees = [Coffee]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        coffees.append(Coffee(text: "First", imageName: "image_1"))
        coffees.append(Coffee(text: "First", imageName: "image_2"))
        coffees.append(Coffee(text: "Third", imageName: "image_3"))
        coffees.append(Coffee(text: "Demo", imageName: "image_4"))
        
        coffees.append(Coffee(text: "First", imageName: "image_1"))
        coffees.append(Coffee(text: "First", imageName: "image_2"))
        coffees.append(Coffee(text: "Third", imageName: "image_3"))
        coffees.append(Coffee(text: "Demo", imageName: "image_4"))
        
        coffees.append(Coffee(text: "First", imageName: "image_1"))
        coffees.append(Coffee(text: "First", imageName: "image_2"))
        coffees.append(Coffee(text: "Third", imageName: "image_3"))
        coffees.append(Coffee(text: "Demo", imageName: "image_4"))

        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
    }
    
    
    // Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        
        cell.configure(with: coffees)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}

struct Coffee {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}
