//
//  Nibs.swift
//  Aula01
//
//  Created by Jonattan Moises Sousa on 11/04/21.
//

import UIKit

class Nibs: UIView {
}

extension UIView {
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        guard let nibzao = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return UIView()}
        return nibzao
    }
}

extension UIView {
    public static var bundleUI: Bundle {
        var bundle: Bundle
        if let bundeLet = Bundle(identifier: "Pessoal.Aula01") {
            bundle = bundeLet
        } else {
            bundle = Bundle(for: self)
        }
        return bundle
    }
    public class func fromNib() -> Self {
        return fromNib(viewType: self)
    }
    public class func fromNib<T: UIView>(viewType: T.Type) -> T {
        if let nib = bundleUI.loadNibNamed(String(describing: viewType), owner: nil, options: nil)?.first as? T {
            return nib
        }
        return T()
    }
}
