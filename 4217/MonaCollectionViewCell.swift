//
//  MonaCollectionViewCell.swift
//  4217
//
//  Created by Ha Lam on 2/4/17.
//  Copyright © 2017 MarInc. All rights reserved.
//

import UIKit

class MonaCollectionViewCell: UICollectionViewCell {
    
    //MARK: Properties
    let nameLabel: UILabel = {
        $0.numberOfLines = 2
        //first line
        let attributedText = NSMutableAttributedString(string: "Mona Lisa", attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 17), NSForegroundColorAttributeName: UIColor(hexString:"#386C79")!])
        //sendcond line
        attributedText.append(NSMutableAttributedString(string: "\nLeonardo Da Vinci, Louvre", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 16), NSForegroundColorAttributeName: UIColor.lightGray]))
        //line spacing
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        attributedText.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range: NSRange(location: 0, length: attributedText.string.characters.count))
        
        $0.attributedText = attributedText
        return $0
    }(UILabel())
    
    let cellImageView: UIImageView = {
        $0.image = #imageLiteral(resourceName: "MonaLisa")
        $0.contentMode = .scaleAspectFill
//        $0.backgroundColor = .red //need this check it fit as need
        $0.clipsToBounds = true//need this
        return $0
    }(UIImageView())
    
    let addButton: UIButton = {
        $0.tintColor = UIColor(hexString:"#BE3951")!
        return $0
    }(UIButton(type: .contactAdd))
    
    let detailButton: UIButton = {
        $0.tintColor = UIColor(hexString:"#D98E27")!
        return $0
    }(UIButton(type: .detailDisclosure))
    
    let dividerLineView: UIView = {
        $0.backgroundColor = .lightGray
        return $0
    }(UIView())
    
    
    //MARK: Setup View
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        //        backgroundColor = .orange
        //cellImageView.widthAnchor.constraint(equalTo: cellImageView.heightAnchor).isActive = true
        addSubview(nameLabel)
        addSubview(cellImageView)
        addSubview(detailButton)
        addSubview(addButton)
        addSubview(dividerLineView)
        
        //need x, y, width, height contrains
        
        _ = nameLabel.anchor( left: cellImageView.rightAnchor, leftConstraint: 8, centerY: self.centerYAnchor)
        
        _ = cellImageView.anchor(left: self.leftAnchor, leftConstraint: 10, widthConstraint: 44, heightConstraint: 44, centerY: self.centerYAnchor)
        
        _ = detailButton.anchor(right: self.rightAnchor, rightConstraint: -8, widthConstraint: 30, heightConstraint: 30, centerY: self.centerYAnchor)
        
        _ = addButton.anchor(right: detailButton.leftAnchor, rightConstraint: -8, widthConstraint: 30, heightConstraint: 30, centerY: self.centerYAnchor)
        _ = dividerLineView.anchor(cellImageView.bottomAnchor, left: self.leftAnchor, right: self.rightAnchor, topConstraint: 8, leftConstraint: 8, rightConstraint: -8, heightConstraint: 1)
    }
    
}

