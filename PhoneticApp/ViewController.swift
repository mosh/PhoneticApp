//
//  ViewController.swift
//  PhoneticApp
//
//  Created by John Moshakis on 2016-12-16.
//  Copyright © 2016 John Moshakis. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource
{
    let alphabet = [
                    "A - Alfa",
                    "B - Bravo",
                    "C - Charlie",
                    "D - Delta",
                    "E - Echo",
                    "F - Foxtrot",
                    "G - Golf",
                    "H - Hotel",
                    "I - India",
                    "J - Juliet",
                    "K - Kilo",
                    "L - Lima",
                    "M - Mike",
                    "N - November",
                    "O - Oscar",
                    "P - Papa",
                    "Q - Quebec",
                    "R - Romeo",
                    "S - Sierra",
                    "T - Tango",
                    "U - Uniform",
                    "V - Victor",
                    "W - Whiskey",
                    "X - X-Ray",
                    "Y - Yankee",
                    "Z - Zulu",
                    ]
    
    let reuseIdentifier = "LetterCell"
    
    @available(iOS 6.0, *)
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,
                                                      for: indexPath) as! LetterCell

        let section = indexPath.section
        let row = indexPath.row
        
        cell.textLabel.text = alphabet[(section * 2)+row]
        cell.textLabel.textAlignment = .center
        
        return cell
        
    }

    
    @available(iOS 6.0, *)
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return alphabet.count
    }

    
    @IBOutlet weak var collectionView:UICollectionView!;

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.collectionView.delegate = self;
        self.collectionView.dataSource = self;
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UICollectionViewDelegateFlowLayout
{
    @available(iOS 6.0, *)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let numberOfItemsPerRow = 2
        
        let flowLayout = collectionViewLayout as! UICollectionViewFlowLayout
        let totalSpace = flowLayout.sectionInset.left
            + flowLayout.sectionInset.right
            + (flowLayout.minimumInteritemSpacing * CGFloat(numberOfItemsPerRow - 1))
        let size = Int((collectionView.bounds.width - totalSpace) / CGFloat(numberOfItemsPerRow))
        return CGSize(width: size, height: 50)
    }
    
}


