//
//  File.swift
//  Notiz-App
//
//  Created by Alexandra Soglassova / BBM3H19M on 23.09.21.
//

import UIKit

class ViewController:  UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    
   
    
  //  UITableViewController,

    @IBOutlet  var table: UITableView!
    @IBOutlet  var lable: UILabel!
    
    var models: [(title: String, note: String)] = []
    
    override func viewDidLoad(){
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        title = "Notes"
        
    }
    @IBAction func didTapNewNote(){
        
    }
    
    // Table
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
        cell.textLabel?.text = models[indexPath.row].title
    }
    
    
}
