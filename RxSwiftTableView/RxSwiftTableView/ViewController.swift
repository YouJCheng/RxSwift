//
//  ViewController.swift
//  RxSwiftTableView
//
//  Created by Yu-J.Cheng on 2018/2/27.
//  Copyright © 2018年 YuChienCheng. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import SnapKit

class ViewController: UIViewController {

    lazy var tableView:UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "musicCell")
        return table
    }()

    let musicListViewModel = MusicListViewModel()
    let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        addTable()
    }

    func addTable() {
        /*tableView.dataSource = self
        tableView.delegate = self*/
        view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.bottom.top.left.right.equalToSuperview()
        }
        bindDataToTableView()
    }

    func bindDataToTableView() {
        musicListViewModel.data
            .bind(to: tableView.rx.items(cellIdentifier:"musicCell")) { _, music, cell in
                cell.textLabel?.text = music.name
                cell.detailTextLabel?.text = music.singer
            }.disposed(by: disposeBag)

    }

}
/*
extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return musicListViewModel.data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "musicCell")!
            let music = musicListViewModel.data[indexPath.row]
            cell.textLabel?.text = music.name
            cell.detailTextLabel?.text = music.singer
            return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("【\(musicListViewModel.data[indexPath.row])】")
    }
}
*/

