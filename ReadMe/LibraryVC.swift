//
//  ViewController.swift
//  ReadMe
//
//  Created by VINH HOANG on 27/11/2021.
//

import UIKit

class LibraryVC: UITableViewController {
    
    let books = Library.books

    @IBSegueAction func showDetailView(_ coder: NSCoder) -> DetailVC? {
        guard let indexPath = tableView.indexPathForSelectedRow else { fatalError("Nothing selected!")}
        let book = books[indexPath.row]
    
        return DetailVC(coder: coder, book: book)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    
    
    // MARK: - DataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        
        let book = Library.books[indexPath.row]
        
        cell.textLabel?.text = book.title
        cell.imageView?.image = book.image
        
        return cell
    }

}

