//
//  Formulario.swift
//  Aula01
//
//  Created by Jonattan Moises Sousa on 08/04/21.
//

import Foundation
import UIKit

public class Formulario: UIView {
    // MARK: - Variaveis
    struct DadosFormulario {
        let titulo: String
        let nome: String
        let telefone: String
        let cidade: String
        let estado: String
    }
    public var view: UIView!
    var initialTitle = ""
    // MARK: - IBOutlets
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelTelefone: UILabel!
    @IBOutlet weak var labelTitulo: UILabel!
    
    // MARK: - Func
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        setupInit()
    }
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        layoutIfNeeded()
    }
    
    override public func awakeFromNib() { //Esse cara permite a instancia com Formulario.fromNib() na ViewController
        super.awakeFromNib()
        setupUICell()
    }
    override public func layoutSubviews() {
        super.layoutSubviews()
//        setupUIView()
    }
    
    override public init(frame: CGRect) {
        super .init(frame: frame)
    }
    
    private func setupInit() {
        if self.initialTitle.isEmpty {
            self.initialTitle = "Sem titulo"
        }
    }
    
    private func setupUICell() {
        self.labelTitulo.text = self.initialTitle
    }
    
    private func setupUIView() {
        self.labelTitulo.text = self.initialTitle
    }
    
    public func setupUI(titleForm: String){
        self.initialTitle = titleForm
        self.labelTitulo.text = "\(titleForm) manu"
    }
//    public func addFormulario() {
//        let titleForm = UILabe(frame: CGRect(x: 0, y: 0, width: 200, height: 40)
//        
//    }
    
    
}
