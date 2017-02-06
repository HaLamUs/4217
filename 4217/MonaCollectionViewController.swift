//
//  MonaCollectionViewController.swift
//  4217
//
//  Created by Ha Lam on 2/4/17.
//  Copyright © 2017 MarInc. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MonaCollectionViewController: UICollectionViewController {
    
    //MARK: Properties
    let topView: UIView = {
        $0.backgroundColor = UIColor(hexString:"#386C79")!
        return $0
    }(UIView())
    
    let searchBar: UISearchBar = {
        $0.placeholder = "Search"
        $0.backgroundImage = UIImage()
        $0.tintColor = UIColor(hexString:"#386C79")!
        $0.sizeToFit()
        return $0
    }(UISearchBar())
    
    let menuButton: UIButton = {
        $0.setImage(#imageLiteral(resourceName: "HamburgerMenu").withRenderingMode(.alwaysTemplate), for: .normal)
        $0.tintColor = .white
        return $0
    } (UIButton())
    
    let bottomView: UIView = {
        $0.backgroundColor = UIColor(hexString:"#386C79")!
        return $0
    } (UIView())
    
    let showLabel: UILabel = {
        $0.text = "Show all"
        $0.textColor = .white
        $0.font = $0.font.withSize(15)
        return $0
    }(UILabel())
    
    let switchBottom: UISwitch = {
        $0.onTintColor = UIColor(hexString:"#D98E27")!
        $0.isOn = true
        return $0
    }(UISwitch())

    //Mark: View Life Circle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.definesPresentationContext = true

        // Register cell classes
        self.collectionView!.register(MonaCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        //setup after loading the view.
        collectionView?.alwaysBounceVertical = true
        navigationItem.title = "Siclo application"
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        
        setUpTopView()
        setUpBottomView()
    }
    
    //MARK: Logic
    func setUpTopView() {
        view.addSubview(topView)
        _ = topView.anchor(view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, heightConstraint: 42)
        topView.addSubview(searchBar)
        topView.addSubview(menuButton)
        _ = searchBar.anchor(topView.topAnchor, left: topView.leftAnchor, bottom: topView.bottomAnchor)
        _ = menuButton.anchor(left: searchBar.rightAnchor, right: topView.rightAnchor, leftConstraint: 5, rightConstraint: -5, widthConstraint: 30, heightConstraint: 30, centerY: topView.centerYAnchor)
    }
    
    func setUpBottomView() {
        view.addSubview(bottomView)
        _ = bottomView.anchor(nil, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, heightConstraint: 42)
        bottomView.addSubview(showLabel)
        bottomView.addSubview(switchBottom)
        
        _ = showLabel.anchor(left: bottomView.leftAnchor, leftConstraint: 10, centerY: bottomView.centerYAnchor)
        _ = switchBottom.anchor(right: bottomView.rightAnchor, rightConstraint: -10, centerY: bottomView.centerYAnchor)
    }

    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
//    
//        // Configure the cell
//    
//        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}

extension MonaCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
}















