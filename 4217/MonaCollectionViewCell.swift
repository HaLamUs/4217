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
    
    override var isHighlighted: Bool {
        didSet {
            backgroundColor = isHighlighted ? UIColor(hexString:"#386C79")! :  UIColor(white: 0.95, alpha: 1)
//            nameLabel.textColor = isHighlighted ? .white : UIColor(hexString:"#386C79")!
        }
    }
    
    let nameLabel: UILabel = {
        $0.numberOfLines = 2
        //first line
        let attributedText = NSMutableAttributedString(string: "Mona Lisa", attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 17), NSForegroundColorAttributeName: UIColor(hexString:"#386C79")!])
        //sendcond line
        attributedText.append(NSMutableAttributedString(string: "\nLeonardo Da Vinci, Louvre", attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 16), NSForegroundColorAttributeName: UIColor.lightGray]))
        //line spacing
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 14
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
        
        _ = cellImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: dividerLineView.topAnchor, right: nil, topConstraint: 10, leftConstraint: 10, bottomConstraint: -10, rightConstraint: 0, widthConstraint: 60, heightConstraint: 0, centerY: nil, centerX: nil, centerYConstraint: 0, centerXConsatrint: 0)
        
        _ = detailButton.anchor(right: self.rightAnchor, rightConstraint: -8, widthConstraint: 44, heightConstraint: 44, centerY: self.centerYAnchor)
        
        _ = addButton.anchor(right: detailButton.leftAnchor, rightConstraint: -8, widthConstraint: 44, heightConstraint: 44, centerY: self.centerYAnchor)

        _ = dividerLineView.anchor(nil, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstraint: 0, leftConstraint: 10, bottomConstraint: 0, rightConstraint: -10, widthConstraint: 0, heightConstraint: 1, centerY: nil, centerX: nil, centerYConstraint: 0, centerXConsatrint: 0)
    }
    
}

