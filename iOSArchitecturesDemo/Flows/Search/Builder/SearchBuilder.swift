//
//  SearchBuilder.swift
//  iOSArchitecturesDemo
//
//  Created by Даниил Мурыгин on 09.09.2020.
//  Copyright © 2020 ekireev. All rights reserved.
//

import UIKit

final class SearchModuleBuilder {
    
    static func build() -> (UIViewController & SearchViewInput) {
        let presenter = SearchPresenter()
        let viewController = SearchViewController(presenter: presenter)
        presenter.viewInput = viewController
        return viewController
    }
}
