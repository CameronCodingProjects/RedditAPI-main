//
//  TextFormattingUtility.swift
//  RedditSample
//
//  Created by Cameron Wright on 27/08/21.
//

import Foundation
import UIKit

class TextFormattingUtility {
    
    func getTextAndImageForComment(comments:String?) -> NSAttributedString {
        let fullString = NSMutableAttributedString(string: "Comments: \(comments ?? "")  ")

        let commentsImage = NSTextAttachment()

        commentsImage.image = UIImage(systemName: "bubble.right.fill", withConfiguration:.none)
        
        let commentsAndString = NSAttributedString(attachment: commentsImage)

        fullString.append(commentsAndString)

        return fullString
    }

    func getTextAndImageForScore(score:String?) -> NSAttributedString {
        let fullString = NSMutableAttributedString(string: "Score: \(score ?? "") ")

        let scoreImage = NSTextAttachment()

        scoreImage.image = UIImage(systemName: "arrow.up", withConfiguration:.none)
        
        let scoreAndImage = NSAttributedString(attachment: scoreImage)

        fullString.append(scoreAndImage)

        return fullString
     }

}
