//
//  CellHome.swift
//  CollectionViewInCollectionViewCell
//
//  Created by Pankaj on 28/06/16.
//  Copyright © 2016 Pankaj. All rights reserved.
//

import UIKit

class CellHome: UICollectionViewCell {
    
    @IBOutlet weak var collInputFields: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let nipName=UINib(nibName: "CellInputFields", bundle:nil)
        collInputFields!.registerNib(nipName, forCellWithReuseIdentifier: "CellInputFields")
    }

}

// MARK: Collectionview Delegates
extension CellHome: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CellInputFields", forIndexPath: indexPath) as! CellInputFields
        return cell
    }
    
}

