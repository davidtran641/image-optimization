//
//  ViewController.swift
//  ImageOptimization
//
//  Created by David Tran on 2/25/19.
//  Copyright © 2019 David Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func buttonUseThumbnailPressed(_ sender: Any) {
        showPhotoViewController(isUseThumbnail: true)
    }
    @IBAction func buttonNotUseThumbnailPressed(_ sender: Any) {
        showPhotoViewController(isUseThumbnail: false)
    }

    private func showPhotoViewController(isUseThumbnail: Bool) {
        let viewController = PhotoViewController()
        viewController.isUseThumbnail = isUseThumbnail
        self.navigationController?.pushViewController(viewController, animated: true)
    }

}

