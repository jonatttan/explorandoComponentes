//
//  ComponentProtocol.swift
//  Aula01
//
//  Created by Jonattan Moises Sousa on 11/04/21.
//

public protocol TituloDelegate: class {
    func buttonAction()
}

public protocol SubmitDataFormDelegate: class { // Delegate
    func actionSubmit()
}
