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
        // Adicionando novamente a mesma view
        let minha2View = MyView().loadNib()
        minha2View.backgroundColor = .gray
//        stackVw.addArrangedSubview(minha2View)
        // Adicionando novamente a mesma view
        let minha3View = MyView().loadNib()
        minha3View.backgroundColor = .gray
//        stackVw.addArrangedSubview(minha3View)
        // 
        let meuTitulo = Titulo(title: "Ops")
        meuTitulo.backgroundColor = CollectionColors.corCeu.colorSelected
        meuTitulo.addTitulo(titulo: "Bem Vindo!", positionY: 200, cor: CollectionColors.corMar.colorSelected)
//        meuTitulo.setupUI(cor: .corAzuLeve)
//        stackVw.addArrangedSubview(meuTitulo)
        // ADICIONANDO FORMULARIO
        let meuForm = Formulario.fromNib()
//        meuForm.setupUI(titleForm: "Example", botao: "Manda")
        meuForm.setupUI(titulo: "Update Register", campo1: "Your Name", campo2: "Phone",
                        campo3: "City", campo4: "State", botao: "Submit")
//        stackVw.addArrangedSubview(meuForm)
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
