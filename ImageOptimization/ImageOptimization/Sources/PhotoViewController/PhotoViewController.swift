//
//  PhotoViewController.swift
//  ImageOptimization
//
//  Created by David Tran on 2/25/19.
//  Copyright © 2019 David Tran. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    var isUseThumbnail = false
    var imageUrl = Bundle.main.url(forResource: "photo-big.jpg", withExtension: nil)!
    
    @IBOutlet private weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadImage()
    }
    
    private func loadImage() {
        if isUseThumbnail {
            imageView.image = UIImage.createThumbnail(at: imageUrl, size: imageView.bounds.size, scale: UIScreen.main.scale)
        } else {
            imageView.image = UIImage(data: try! Data(contentsOf: imageUrl))
        }
    }

}
