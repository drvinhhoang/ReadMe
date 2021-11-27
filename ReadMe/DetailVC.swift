//
//  DetailVC.swift
//  ReadMe
//
//  Created by VINH HOANG on 27/11/2021.
//

import UIKit

class DetailVC: UIViewController {
    
    let book: Book
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = book.image
        authorLabel.text = book.author
        titleLabel.text = book.title
    }
    
    
    init?(coder: NSCoder, book: Book) {
        self.book = book
        super.init(coder: coder)
      
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
