//
//  ViewController.swift
//  TableviewCellSizing
//
//  Created by Apple on 11/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit


struct Display {
    var description: String
    var authorName: String
    var imageDisplay: UIImage?
}

class ViewController: UITableViewController {

    
    let dispaltDtaa = [
        Display(description: "Writers, writing about themselves? These About the Author examples will show you how. #amwriting “NY Times & USA Today Bestselling Thriller Author JFPenn.com. Creative Entrepreneur. Podcaster. Professional speaker. INFJ. Travel junkie.”“NY Times & USA Today Bestselling Thriller Author JFPenn.com. Creative Entrepreneur. Podcaster. Professional speaker. INFJ. Travel junkie.Writers, writing about themselves? These About the Author examples will show you how. #amwriting “NY Times & USA Today Bestselling Thriller Author JFPenn.com. Creative Entrepreneur. Podcaster. Professional speaker. INFJ. Travel junkie.”“NY Times & USA Today Bestselling Thriller Author JFPenn.com. Creative Entrepreneur. Podcaster. Professional speaker. INFJ. Travel junkie.”", authorName: "Ronaldo", imageDisplay: UIImage(named: "hinh1")),
        Display(description: "We’ve all heard the cliché that writers have big egos — so it makes sense that there’s a section in every book where you’re required to talk about the author (meaning yourself).", authorName: "Messi", imageDisplay: UIImage(named: "hinh2")),
        Display(description: "Why it works: Is this the flashiest bio in the world? Of course not. But that’s exactly why it works. Each word builds on the last, adding new information to her story: her name, her qualifications, her books, their history, her home life, and, finally, her online presence.", authorName: "Kaka", imageDisplay: UIImage(named: "hinh3")),
        Display(description: "“Glynnis Campbell is a USA Today bestselling author of swashbuckling action-adventure romance. She’s the wife of a rock star, and the mother of two young adults, but she’s also been a ballerina, a typographer, a film composer", authorName: "Levan dosky", imageDisplay: UIImage(named: "hinh4")),
        Display(description: "When it comes to nonfiction, creativity is outweighed by certainty. The latter is a pretty hard thing to prove, but the About the Author is as good a place as any to give it a shot.", authorName: "Macuroi", imageDisplay: UIImage(named: "hinh5")),
        Display(description: "Why it works: Or, of course, you could go with this hilarious, deadpan approach that also tells you everything you need to know about the author. After this particularly memorable About the Author example, do you really need to know anything else about Samantha Irby?", authorName: "Blackmohamet", imageDisplay: UIImage(named: "hinh6"))
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.estimatedRowHeight = 75
//        tableView.rowHeight = UITableView.automaticDimension
    }


}

//MARK: DATASOURCE

extension ViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dispaltDtaa.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.noidung.text = dispaltDtaa[indexPath.row].description
        cell.tavgia.text = dispaltDtaa[indexPath.row].authorName
        cell.imageDisplay.image = dispaltDtaa[indexPath.row].imageDisplay
        return cell
    }
}

//MARK: DELEGATE
extension ViewController {
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
