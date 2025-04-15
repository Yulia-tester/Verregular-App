//
//  VerbTableViewCell.swift
//  Verregular App
//
//  Created by Юлия Дегтярева on 2025-04-14.
//

import UIKit

final class VerbTableViewCell: UITableViewCell {
    @IBOutlet private weak var infinitiveLabel: UILabel!
    @IBOutlet private weak var pastSimpleLabel: UILabel!
    @IBOutlet private weak var participleLabel: UILabel!
    @IBOutlet private weak var translationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("awakeFromNib")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        print("prepareForReuse")
        infinitiveLabel.text = ""
    }
    
    func configure(for verb: Verb) {
        infinitiveLabel.text = verb.infinitive
        pastSimpleLabel.text = verb.pastSimple
        participleLabel.text = verb.participle
        translationLabel.text = verb.translation
    }
}
