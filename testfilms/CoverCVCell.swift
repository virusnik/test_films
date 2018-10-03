//
//  CoverCVCell.swift
//  testfilms
//
//  Created by Sergio Veliz on 10/2/18.
//  Copyright © 2018 Sergio Veliz. All rights reserved.
//

import UIKit

class CoverCVCell: UICollectionViewCell {
    
    let coverImage: UIImageView = {
        let coverImage = UIImageView()
        coverImage.backgroundColor = .red
        coverImage.layer.cornerRadius = 4.0
        coverImage.clipsToBounds = true
        return coverImage
    }()

    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "titleFilm"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.systemFont(ofSize: 12)
        titleLabel.numberOfLines = 1
        titleLabel.minimumScaleFactor = 0.9

        return titleLabel
    }()

    let yearLabel: UILabel = {
        let yearLabel = UILabel()
        yearLabel.text = "2018"
        yearLabel.textColor = .white
        yearLabel.font = UIFont.systemFont(ofSize: 12)
        yearLabel.numberOfLines = 1
        yearLabel.minimumScaleFactor = 0.9

        return yearLabel
    }()

    lazy var verticalStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [self.coverImage, self.titleLabel, self.yearLabel])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 2.0
        return stackView
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        handleConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func handleConstraints() {

        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(verticalStackView)

        let stackView = ["stackView": self, "verticalStackView": verticalStackView]
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:[stackView]-(<=0)-[verticalStackView(60)]", options: NSLayoutConstraint.FormatOptions.alignAllCenterY, metrics: nil, views: stackView)
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "V:[stackView]-(<=0)-[verticalStackView(120)]", options: NSLayoutConstraint.FormatOptions.alignAllCenterX, metrics: nil, views: stackView)
        self.addConstraints(horizontalConstraints)
        self.addConstraints(verticalConstraints)
        
    }
    
}
