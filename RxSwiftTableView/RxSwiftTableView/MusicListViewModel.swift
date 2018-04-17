//
//  MusicListViewModel.swift
//  RxSwiftTableView
//
//  Created by Yu-J.Cheng on 2018/4/17.
//  Copyright © 2018年 YuChienCheng. All rights reserved.
//

import Foundation
import RxSwift


struct MusicListViewModel {
    let data = Observable.just([
        Music(name: "Take On Me", singer: "a-ha"),
        Music(name: "Zombie", singer: "Cranbarries"),
        Music(name: "Yellow", singer: "ColdPlay"),
        Music(name: "Creep", singer: "Radiohead"),
        ])
}
