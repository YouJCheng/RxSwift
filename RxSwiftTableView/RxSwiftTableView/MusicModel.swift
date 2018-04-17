//
//  MusicModel.swift
//  RxSwiftTableView
//
//  Created by Yu-J.Cheng on 2018/4/17.
//  Copyright © 2018年 YuChienCheng. All rights reserved.
//

import Foundation
// music data
struct Music {
    let name: String //歌名
    let singer: String //演唱者

    init(name: String, singer: String) {
        self.name = name
        self.singer = singer
    }
}

// Confirm CustomStringConvertible for testing
extension Music: CustomStringConvertible {
    var description: String {
        return "name：\(name) singer：\(singer)"
    }
}
