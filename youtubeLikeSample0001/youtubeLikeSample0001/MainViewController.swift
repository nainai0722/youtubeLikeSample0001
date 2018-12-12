//
//  MainViewController.swift
//  youtubeLikeSample0001
//
//  Created by apple on 2018/12/11.
//  Copyright © 2018 com.nainai0722. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource{
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return 1
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "contentsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "contentsCollectionViewCell")
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : contentsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "contentsCollectionViewCell", for: indexPath as IndexPath) as! contentsCollectionViewCell
        
//        let imageName:String = "image00" + String(indexPath.row) + ".png"
//
//        cell.cellImage.image = UIImage(named: imageName)
//        //
//        cell.cellName.text = strArray[indexPath.row]
//
//        cell.cellDetailText.text = "世界最大級のティラノサウルス（13m）や、\n3本角のトリケラトプス（9m）が登場！"
        
        return cell
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
