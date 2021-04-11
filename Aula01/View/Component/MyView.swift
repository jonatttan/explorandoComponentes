//
//  MyView.swift
//  Aula01
//
//  Created by Jonattan Moises Sousa on 06/04/21.
//

import Foundation
import UIKit

class MyView: UIView {
    var view: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func setupUI() {
        self.backgroundColor = .yellow
    }
}

private extension MyView {
    func xibConfig() {
        backgroundColor = UIColor.clear
        view = loadNib()
        view.frame = bounds
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
