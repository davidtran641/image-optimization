//
//  UIImage+Thumbnail.swift
//  ImageOptimization
//
//  Created by David Tran on 2/25/19.
//  Copyright © 2019 David Tran. All rights reserved.
//

import UIKit

extension UIImage {
    
    static func createThumbnail(at imageUrl: URL, size: CGSize, scale: CGFloat = 2.0) -> UIImage? {
        let imageSourceOptions = [kCGImageSourceShouldCacheImmediately: false] as CFDictionary
        guard let imageSource = CGImageSourceCreateWithURL(imageUrl as CFURL, imageSourceOptions) else {
            return nil
        }
        
        let maxDimesion = max(size.width, size.height) * scale
        let thumbnailOptions = [kCGImageSourceShouldCacheImmediately: true,
                                kCGImageSourceCreateThumbnailFromImageAlways: true,
                                kCGImageSourceCreateThumbnailWithTransform: true,
                                kCGImageSourceThumbnailMaxPixelSize: maxDimesion] as CFDictionary
        
        guard let thumbnailImage = CGImageSourceCreateThumbnailAtIndex(imageSource, 0, thumbnailOptions) else {
            return nil
        }
        return UIImage(cgImage: thumbnailImage)
        
    }
}
