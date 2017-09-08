//
//  MoodTableViewCell.swift
//  MoodTest
//
//  Created by Alonso on 2017/9/7.
//  Copyright © 2017年 Alonso. All rights reserved.
//

import UIKit


class MoodTableViewCell: UITableViewCell {
    @IBOutlet weak var moodView: MoodView!
    @IBOutlet weak var label: UILabel!
}


private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .short
    formatter.doesRelativeDateFormatting = true
    formatter.formattingContext = .standalone
    return formatter
}()


extension MoodTableViewCell {
    func configure(for mood: Mood) {
        moodView.colors = mood.colors
        label.text = dateFormatter.string(from: mood.date)
    }
}
