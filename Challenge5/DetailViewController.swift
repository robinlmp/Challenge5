//
//  DetailViewController.swift
//  Challenge5
//
//  Created by Robin Phillips on 09/02/2022.
//

import UIKit

private let reuseIdentifier = "DetailCell"

class DetailViewController: UICollectionViewController {
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = country?.name

    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! DetailCell
        
        cell.layer.cornerRadius = 15
        
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOpacity = 0.2
        cell.layer.shadowOffset = .zero
        cell.layer.shadowRadius = 10
        
        
        switch indexPath.row {
        case 0:
            cell.detailLabel.text = country?.capital
        case 1:
            cell.detailLabel.text = String("\(country?.sizeSqKm)")
        case 2:
            cell.detailLabel.text = String("\(country?.population)")
        default: cell.detailLabel.text = country?.name
        }
        
        return cell
    }
    
}
