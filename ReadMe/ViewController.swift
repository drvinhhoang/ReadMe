//
//  ViewController.swift
//  ReadMe
//
//  Created by VINH HOANG on 27/11/2021.
//

import UIKit

class LibraryVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
    
    
    
    
    // MARK: - DataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Library.books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        
        let book = Library.books[indexPath.row]
        
        cell.textLabel?.text = book.title
        cell.imageView?.image = book.image
        
        return cell
    }

}

