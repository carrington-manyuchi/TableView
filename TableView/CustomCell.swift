//
//  CustomCell.swift
//  TableView
//
//  Created by DA MAC M1 157 on 2023/08/15.
//

import UIKit

class CustomCell: UITableViewCell {
    
    
    static let identifier = "CustomCell"
    
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(systemName: "questionmark")
        imageView.tintColor = .label
        return imageView
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 24, weight: .medium)
        label.text = "Error  "
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with image: UIImage,  and label: String) {
        myImageView.image = image
        myLabel.text =  label
    }
    
    private func setupUI() {
        self.contentView.addSubview(myImageView)
        self.contentView.addSubview(myLabel)
        configureConstraints()
    }
    
    private func  configureConstraints() {
        
        let composeMyImageView = [
            myImageView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            myImageView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            myImageView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            myImageView.heightAnchor.constraint(equalToConstant: 90),
            myImageView.widthAnchor.constraint(equalToConstant: 90)
        ]
        
        let composeMyLabel = [
            myLabel.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: 15),
            myLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            myLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            myLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(composeMyImageView)
        NSLayoutConstraint.activate(composeMyLabel)
    }
}
