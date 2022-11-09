//
//  Characters.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit


class CharactersViewController: UIViewController {
    
    var tabelView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tabelView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        tabelView.dataSource = self
        tabelView.delegate = self
        
        tabelView.register(CharacterTabelViewCell.self, forCellReuseIdentifier: "cellId")
        tabelView.register(CharacterHeaderView.self, forHeaderFooterViewReuseIdentifier: "headerId")
        
        view.addSubview(tabelView)
    }
    
}

extension CharactersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height / 7.2
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 37
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "String"
    }
}

extension CharactersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CharacterTabelViewCell
        cell.backgroundColor = .red
        cell.configurationView()
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewHeader = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerId") as! CharacterHeaderView
//        viewHeader.backgroundColor = .green
        
        viewHeader.header.text = "Characters"
        viewHeader.configurationHeaderView ()
        return viewHeader
    }
}
