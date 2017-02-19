//
//  PageCell.swift
//  Prototype1
//
//  Created by RayRainier on 2/19/17.
//  Copyright © 2017 RadiuSense. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        //iv.backgroundColor = .yellow
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "green_artsy")
        return iv
    }()
    
    func setupViews() {
    
    	backgroundColor = .blue
        
        addSubview(imageView)
        imageView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        
    }
    
}
