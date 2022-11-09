//
//  Builder.swift
//  CharacersNew
//
//  Created by stimLite on 09.11.2022.
//

import UIKit


class Factory {
    func buildCharacters () -> UIViewController {
        let view = CharactersViewController()
        let presenter = CharacterViewPresenter()
        let network = NetworckService<Endpoint>()
        presenter.settingView(view: view, network: network)
        view.presenter = presenter
        return view
    }
}
