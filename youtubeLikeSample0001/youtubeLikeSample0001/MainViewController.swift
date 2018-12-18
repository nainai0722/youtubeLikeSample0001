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
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "contentsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "contentsCollectionViewCell")
        // Do any additional setup after loading the view.
        let titleLabel = UILabel(frame: CGRect(x:0,y:0,width:self.view.frame.width - 32,height:view.frame.height))
        titleLabel.text = "Home"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        self.navigationItem.titleView = titleLabel
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : contentsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "contentsCollectionViewCell", for: indexPath as IndexPath) as! contentsCollectionViewCell
        cell.thumnailImage.image = UIImage (named: "test.jpeg")
        cell.presenterIdonImage.image = UIImage(named: "icon.jpeg")
        cell.presenterIdonImage.clipsToBounds = true
        cell.presenterIdonImage.layer.cornerRadius = cell.presenterIdonImage.frame.height / 2.0
        cell.movieTitleLabel.text = "ヴァイオレット・エヴァーガーデンop「Sincerely」Full歌詞付き"
        cell.movieDescriptionLabel.text = "アニメ「ヴァイオレット・エヴァーガーデン」OP主題歌\n「Sincerely」/TRU"
        
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
