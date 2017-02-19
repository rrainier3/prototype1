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
        iv.contentMode = .scaleAspectFill
        //iv.image = UIImage(named: "green_artsy")
        iv.image = UIImage(named: "page1")
        iv.clipsToBounds = true
        return iv
    }()
    
    
    let textView: UITextView = {
        let tv = UITextView()
        tv.text = "MOUNTAIN DEW AT THE ALPS"
        tv.isEditable = false
        return tv
    }()
    
    
    func setupViews() {
    
        addSubview(imageView)
        addSubview(textView)
        
        imageView.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        
        textView.anchor(nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        textView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
        
    }
    
}
