//
//  CharacterPresenter.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import Foundation


protocol CharacterViewProtocol: AnyObject {
    func saccess()
}

protocol CharacterViewPresenterProtocol: AnyObject {
    var dataModel: CharacterData? { get set }
    var imageModel: Data? { get set }
    var callBack: ((IndexPath) -> Void)! { get set }
    
    func settingView (view: CharacterViewProtocol, network: NetworckService<Endpoint>)
    func getData()
    func getImage(strUrl: String?, index: IndexPath)
    
}

class CharacterViewPresenter: CharacterViewPresenterProtocol {
    weak var view: CharacterViewProtocol?
    var network: NetworckService<Endpoint>!
    
    var dataModel: CharacterData?
    var imageModel: Data?
    var callBack: ((IndexPath) -> Void)!
    
    func settingView(view: CharacterViewProtocol, network: NetworckService<Endpoint>) {
        self.view = view
        self.network = network
    }
    
    func printStarus() {
        view?.saccess()
    }
    
    func getData () {
        
        network.load(service: .region, dataType: CharacterData.self) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let modelData):
                self.dataModel = modelData
                self.view?.saccess()
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getImage (strUrl: String?, index: IndexPath) {
        
        let testStr = strUrl?.split(separator: "/")
        let idImage = testStr?.last
        guard let idImage = idImage else { return }
        
        network.load(service: .avatar(String(idImage))){ [weak self] result in
            guard let self = self else { return }

            switch result {
            case .success(let imageData):
                self.imageModel = imageData
                self.callBack(index)
            case .failure(let error):
                print(error)
            }
        }
    }
}
