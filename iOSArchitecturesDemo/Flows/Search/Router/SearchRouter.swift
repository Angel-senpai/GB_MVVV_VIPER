//
//  SearchRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Даниил Мурыгин on 09.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

protocol SearchRouterInput {
    func openDetailsFor(_ item: Any)
}

class SearchRouter: SearchRouterInput {
    
    weak var viewController: UIViewController?
    
    func openDetailsFor(_ item: Any) {
        if let item = item as? ITunesApp {
            let appDetailViewController = AppDetailViewController(app: item)
            self.viewController?.navigationController?.pushViewController(appDetailViewController, animated: true)
        } else if let item = item as? ITunesSong {
            let songDetailViewController = SongDetailViewController(song: item)
            self.viewController?.navigationController?.pushViewController(songDetailViewController, animated: true)
        }
    }
}
