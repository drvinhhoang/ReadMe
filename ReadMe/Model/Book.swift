//
//  Book.swift
//  ReadMe
//
//  Created by VINH HOANG on 27/11/2021.
//

import Foundation
import UIKit

struct Book {
    let title: String
    let author: String
    var image: UIImage  {
        Library.loadImage(forBook: self) ?? LibrarySymbol.letterSquare(letter: title.first).image
    }
}
