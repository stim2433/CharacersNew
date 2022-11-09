//
//  Characters.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit


class CharactersViewController: UIViewController {
    var presenter: CharacterViewPresenterProtocol?
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(CharacterTabelViewCell.self, forCellReuseIdentifier: "cellId")
        tableView.register(CharacterHeaderView.self, forHeaderFooterViewReuseIdentifier: "headerId")
        tableView.separatorStyle = .none
        
        presenter?.getData()
        
        view.addSubview(tableView)
    }
}

extension CharactersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height / 7.2
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 37
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "String"
//    }
}

extension CharactersViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.dataModel?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CharacterTabelViewCell
        let data = presenter?.dataModel?.results[indexPath.row]
        cell.configurationView()
        
        guard let data = data else { return cell }
        
        cell.content.statusView.text = data.status
        cell.content.titleView.text = data.name
        cell.content.locationViewContainer.locationLabel.text = data.location.name
        cell.content.genderView.text = "\(data.species), \(data.gender )"
        
        presenter?.getImage(strUrl: data.image, index: indexPath)
        presenter?.callBack = { index in
            let updateCell = tableView.cellForRow(at: index) as! CharacterTabelViewCell
            updateCell.avatar.image = UIImage (data: (self.presenter?.imageModel)!)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewHeader = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerId") as! CharacterHeaderView
        
        viewHeader.header.text = "Characters"
        viewHeader.configurationHeaderView ()
        return viewHeader
    }
}

extension CharactersViewController: CharacterViewProtocol {
    func saccess() {
        tableView.reloadData()
    }
}
