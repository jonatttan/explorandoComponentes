//
//  Titulo.swift
//  Aula01
//
//  Created by Jonattan Moises Sousa on 06/04/21.
//

import Foundation
import UIKit

protocol TituloDelegate: class {
    func buttonAction()
}

class Titulo: UIView {
    weak var delegate: TituloDelegate?
    var buttonAction: (() -> Void)?
    @IBOutlet private var labelTitulo: UILabel?
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    func addTitulo(titulo: String, positionY: Int, cor: UIColor) {
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
        titleLabel.text = titulo
        titleLabel.textAlignment = .center
        titleLabel.center = CGPoint(x: 200, y: positionY)
        titleLabel.backgroundColor = cor
        self.addSubview(titleLabel)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    func setupUI(cor: CollectionColors) {
        self.backgroundColor = cor.colorSelected
    }
    
    @IBAction func btAction(_ sender: UIButton) {
        if let kButonAction = buttonAction {
            kButonAction()
        } else {
            delegate?.buttonAction()
        }
    }
    
}
