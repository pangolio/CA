//
//  ViewController.swift
//  Contacts List
//
//  Created by Sergej Dubovskij on 2022-10-13.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell" , for: indexPath)
        cell.textLabel!.text = contactList[indexPath.row].0 + contactList[indexPath.row].1
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var contactList = [("Jonas", " 97597959"),("Petras", " 34958798"),  ("Zigmas", " 238979879")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? pridetiViewController { vc.clousure = addContact
        }
    }
    func addContact (_ contact: (kontaktas:String, telephoneNumber:String)) {
       
        contactList.append(contact)
        tableView.reloadData()
    }

}

