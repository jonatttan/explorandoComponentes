//
//  ComponentStruct.swift
//  Aula01
//
//  Created by Jonattan Moises Sousa on 11/04/21.
//

// MARK: Struct Titulo
public struct DataTitle {
    var titulo: String?
    var delegate: TituloDelegate?
}

public struct DadosFormulario {
    var initialTitle = ""
    var initialLabel1 = ""
    var initialLabel2 = ""
    var initialLabel3 = ""
    var initialLabel4 = ""
    var initialSubmit = ""
    var delegate: SubmitDataFormDelegate?
}
