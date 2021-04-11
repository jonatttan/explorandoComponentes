//
//  ViewController.swift
//  Aula01
//
//  Created by Jonattan Moises Sousa on 06/04/21.
//

import UIKit

enum Categoria: String {
    case semana
    case dia
    case tudo
}
enum CollectionColors {
    case corCeu
    case corTerra
    case corMar
    case corAzuLeve
    var colorSelected: UIColor { // Para utilizar da palheta de cores, #colorLiteral()
        switch self {
        case .corCeu: return #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case .corTerra: return #colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1)
        case .corMar: return #colorLiteral(red: 0, green: 0.6069188714, blue: 0.4077592492, alpha: 1)
        case .corAzuLeve: return #colorLiteral(red: 0.8209471107, green: 0.986862123, blue: 1, alpha: 1)
        }
    }
}



extension UIColor {
    static let newColorByExtension = #colorLiteral(red: 0.5866405964, green: 0.6862757802, blue: 0.4406885803, alpha: 1)
}

extension UIColor {
    struct CoresInstituicao {
        static var firstColor: UIColor { return UIColor(red: 1, green: 0, blue: 0, alpha: 1) }
        static var secondColor: UIColor { return UIColor(red: 0, green: 1, blue: 0, alpha: 1) }
    }
}

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var stackVw: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    func setupUI() {
        // Adicionando componente preparado na MyView.swift
        let minhaView = MyView().loadNib()
        minhaView.backgroundColor = CollectionColors.corMar.colorSelected
        stackVw.addArrangedSubview(minhaView)
        //
//        let tituloS = Titulo.init() // Colocou apenas o elemento Label, não aparenta trazer a View.
//        tituloS.addTitulo(titulo: "dads", positionY: 3, cor: .lightText)
//        stackVw.addArrangedSubview(tituloS)
        //
        let myTitle = Titulo.fromNib()
        myTitle.setupUI(dados: DataTitle(titulo: "Côza Linda", delegate: self))
//        stackVw.addArrangedSubview(myTitle)
        // ADICIONANDO FORMULARIO
        let meuForm = Formulario.fromNib()
        meuForm.setupUI(dados: DadosFormulario(initialTitle: "Update Register", initialLabel1: "Your Name",
                                               initialLabel2: "Phone", initialLabel3: "City", initialLabel4: "State",
                                               initialSubmit: "Submit", delegate: self))
        stackVw.addArrangedSubview(meuForm)
        //
        testeDosEnun(categoria: .semana, cor: .corTerra)
    }
    func testeDosEnun(categoria: Categoria, cor: CollectionColors) {
        print("Esta seria a categoria: \(categoria.rawValue)")
        print("Esta seria a cor: \(cor.colorSelected)")
    }

}

extension ViewController: TituloDelegate {
    func buttonAction() {
        print("====================================")
    }
}

extension UIViewController: SubmitDataFormDelegate {
    public func actionSubmit() {
        print("================= Ação do botão ===================")
    }
}
