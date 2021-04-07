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

public class Titulo: UIView {
    weak var delegate: TituloDelegate?
    var buttonAction: (() -> Void)?
    
    let nibName = "Vamos mudar."
    var contentView:UIView?
    var tituloHere = ""

    struct EnumTitulo {
        let name: String
        let background: UIColor
    }
    
    @IBOutlet private var labelTitulo: UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupInit()
    }
    
    init(title: String) {
        super.init(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        self.tituloHere = "CoisaQualquer"
        layoutIfNeeded()
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        setupUIView()
    }
    
    public func addTitulo(titulo: String, positionY: Int, cor: UIColor) {
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
        titleLabel.text = titulo
        titleLabel.textAlignment = .center
        titleLabel.center = CGPoint(x: 200, y: positionY)
        titleLabel.backgroundColor = cor
        self.addSubview(titleLabel)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupInit() {
        if self.tituloHere.isEmpty {
            self.tituloHere = "1o Preenchimento"
        }
    }
    
    func setupUI(title: String) {
        DispatchQueue.main.async {
            self.tituloHere = title
            self.labelTitulo?.text = title
        }
    }
    
    private func setupUICell() {
        self.labelTitulo?.text = tituloHere
    }
    
    private func setupUIView() {
        self.labelTitulo?.text = tituloHere
    }
    
    @IBAction func btAction(_ sender: UIButton) {
        if let kButonAction = buttonAction {
            kButonAction()
        } else {
            delegate?.buttonAction()
        }
    }
    
}
