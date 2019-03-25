//
//  ViewController.swift
//  Listry
//
//  Created by Molnár Csaba on 2019. 03. 25..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}

