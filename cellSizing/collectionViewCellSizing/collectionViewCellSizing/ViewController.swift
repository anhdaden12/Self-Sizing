//
//  ViewController.swift
//  collectionViewCellSizing
//
//  Created by Apple on 11/28/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    
    let dataDisplay = ["We’ve all heard the cliché that writers have big egos — so it makes sense that there’s a section in every book where you’re required to talk about the author (meaning yourself).","That said, it’s crucial to get the About the Author right. Whether it appears on the back of your book, your Amazon Author page, your social media or all of the above, you should make every sentence count (and tailor it depending on where it will appear). For non-fiction authors, who you are can be more important than what you write about. For indie fiction writers, this is an opportunity to let your growing readership get to know you","If you're here to learn the ropes, we’ve already published an extensive guide on how to write one. In this post, we'll be looking at 13 About the Author examples to further illustrate what works (and what doesn't).","Writers, writing about themselves? These About the Author examples will show you how. #amwriting","For fiction writers (especially self-published ones), who you are matters little in comparison to the quality of the story you've written — and an attention grabbing synopsis."," But that doesn’t mean you shouldn’t take full advantage when you’re encouraged to talk about yourself. Here are some examples of how to pull it off without soliloquizing.","Roth and her husband call the Chicago area home. You can visit her online at www.veronicarothbooks.com or on Twitter (@VeronicaRoth).”"]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(UINib.init(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
            //flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 12, right: 0)
        }

    }
    

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.headerlabel.text = "Header"
        cell.contentLabel.text = dataDisplay[indexPath.item]
        return  cell
    }
    
}
