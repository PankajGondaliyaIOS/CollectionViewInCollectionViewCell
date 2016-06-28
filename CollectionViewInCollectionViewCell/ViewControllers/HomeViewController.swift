//
//  HomeViewController.swift
//  CollectionViewInCollectionViewCell
//
//  Created by Pankaj on 28/06/16.
//  Copyright © 2016 Pankaj. All rights reserved.
//

import UIKit

class HomeViewController: CollectionParentViewController {

    @IBOutlet weak var collHome: UICollectionView!
    
    let kCellsPerRow: CGFloat = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        initiateView()
    }
    
    func initiateView() {
        let nipName=UINib(nibName: "CellHome", bundle:nil)
        collHome!.registerNib(nipName, forCellWithReuseIdentifier: "CellHome")
    }

}

// MARK: Collectionview Delegates
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let flowLayout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let availableWidthForCell = CGRectGetWidth(collectionView.frame) - flowLayout.sectionInset.left - flowLayout.sectionInset.right - flowLayout.minimumInteritemSpacing * CGFloat(kCellsPerRow - 1)
        let cellWidth = availableWidthForCell / kCellsPerRow
        flowLayout.itemSize = CGSizeMake(cellWidth, cellWidth);
        return CGSize(width:cellWidth, height: 64)
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellHome", forIndexPath: indexPath) as! CellHome
        return cell
    }
    
}

