//
//  ViewController.swift
//  PassData
//
//  Created by mark me on 5/26/20.
//  Copyright © 2020 mark me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        
        //cell.profileImage.text = array[indexPath.row]
        cell.profileName1.text = array[indexPath.row]
        cell.profileName2.text = array[indexPath.row]
        cell.profileName3.text = array[indexPath.row]
        
        return cell
    }
    
    @IBAction func addItem(_ sender: Any)
    {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
}

