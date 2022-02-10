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
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        
        title = country?.name
        
        // Do any additional setup after loading the view.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
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
