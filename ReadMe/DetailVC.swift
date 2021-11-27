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
    
    
    @IBAction func updateImage() {
        
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerController.isSourceTypeAvailable(.camera) ? .camera : .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true)
        
    }
    
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


extension DetailVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.editedImage] as? UIImage else { return }
        
        imageView.image = selectedImage
        Library.saveImage(selectedImage, forBook: book)
        dismiss(animated: true)
        
    }
    
}
