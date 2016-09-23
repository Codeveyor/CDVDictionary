//
//  InfoViewController.swift
//  CDVDictionary
//
//  Created by Alex Golub on 9/23/16.
//  Copyright © 2016 Alex Golub. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoTableView: UITableView!
    fileprivate let tableViewNumberOfSections = 1
    fileprivate let tableViewHeaderFooterHeight: CGFloat = 0.01
    fileprivate let tableViewRowHeight: CGFloat = 60.0
    fileprivate let infoCellIdentifier = "infoCellIdentifier"
    fileprivate var sourceArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        sourceArray = ["Srpski Abeceda", "Русский алфавит", "Ruski Jezik", "Сербский язык", "Сайт разработчика"]
    }
}

extension InfoViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewNumberOfSections
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sourceArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: infoCellIdentifier, for: indexPath) as! InfoCell
        let cellText = sourceArray[indexPath.row]
        cell.label?.text = cellText
        return cell
    }
}

extension InfoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableViewRowHeight
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return tableViewHeaderFooterHeight
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return tableViewHeaderFooterHeight
    }
}
