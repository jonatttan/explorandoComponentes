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
        var initialTitle = ""
        var initialLabel1 = ""
        var initialLabel2 = ""
        var initialLabel3 = ""
        var initialLabel4 = ""
        var initialSubmit = ""
    }
    public var view: UIView!
    private var camposFormulario = DadosFormulario()
    // MARK: - IBOutlets
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var buttonSubmit: UIButton!
    // MARK: - Func
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupInit()
    }
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        layoutIfNeeded()
    }
    override public func awakeFromNib() { // Esse cara permite a instancia com Formulario.fromNib() na ViewController
        super.awakeFromNib()
        setupUICell()
    }
    override public func layoutSubviews() {
        super.layoutSubviews()
        setupUIView()
    }
    override public init(frame: CGRect) {
        super .init(frame: frame)
    }
    private func setupInit() {
        if camposFormulario.initialTitle.isEmpty {
            camposFormulario.initialTitle = "Formulário"
        }
        if camposFormulario.initialLabel1.isEmpty {
            camposFormulario.initialLabel1 = "Nome: "
        }
        if camposFormulario.initialLabel2.isEmpty {
            camposFormulario.initialLabel2 = "Telefone: "
        }
        if camposFormulario.initialLabel3.isEmpty {
            camposFormulario.initialLabel3 = "Cidade: "
        }
        if camposFormulario.initialLabel4.isEmpty {
            camposFormulario.initialLabel4 = "Estado: "
        }
        if camposFormulario.initialSubmit.isEmpty {
            camposFormulario.initialSubmit = "Enviar"
        }
    }
    private func setupUICell() {
//        buttonSubmit.backgroundColor = #colorLiteral(red: 0.7363891602, green: 1, blue: 0.8901621501, alpha: 1)
    }
    private func setupUIView() {
        self.labelTitulo.text = camposFormulario.initialTitle
        self.labelOne.text = "\(camposFormulario.initialLabel1): "
        self.labelTwo.text = "\(camposFormulario.initialLabel2): "
        self.labelThree.text = "\(camposFormulario.initialLabel3): "
        self.labelFour.text = "\(camposFormulario.initialLabel4): "
        self.buttonSubmit.setTitle(camposFormulario.initialSubmit, for: .normal)
    }
    public func setupUI(titleForm: String, botao: String) {
        camposFormulario.initialTitle = titleForm
        camposFormulario.initialSubmit = botao
    }
    public func setupUI(titulo: String, campo1: String, campo2: String, campo3: String, campo4: String, botao: String) {
        camposFormulario.initialTitle = titulo
        camposFormulario.initialLabel1 = campo1
        camposFormulario.initialLabel2 = campo2
        camposFormulario.initialLabel3 = campo3
        camposFormulario.initialLabel4 = campo4
        camposFormulario.initialSubmit = botao
        
    }
}
