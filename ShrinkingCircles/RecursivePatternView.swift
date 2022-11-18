//
//  RecursivePatternView.swift
//  ShrinkingCircles
//
//  Created by Jacobo de Juan Millon on 2022-11-18.
//

import SwiftUI

struct RecursivePattern: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addEllipse(in: CGRect(origin: CGPoint(x: (rect.width - 2 / 3 * rect.height) / 2, y: rect.height / 6), size: CGSize(width: 2 / 3 * rect.height, height: 2 / 3 * rect.height)))
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width / 2 - 4 / 9 * rect.height, y: rect.height / 2 - 1 / 9 * rect.height), size: CGSize(width: 2 / 9 * rect.height, height: 2 / 9 * rect.height)))
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width / 2 - 1 / 9 * rect.height, y: 1 / 18 * rect.height), size: CGSize(width: 2 / 9 * rect.height, height: 2 / 9 * rect.height)))
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width / 2 + 2 / 9 * rect.height, y: rect.height / 2 - 1 / 9 * rect.height), size: CGSize(width: 2 / 9 * rect.height, height: 2 / 9 * rect.height)))
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.width / 2 - 1 / 9 * rect.height, y: 13 / 18 * rect.height), size: CGSize(width: 2 / 9 * rect.height, height: 2 / 9 * rect.height)))
        return path
    }
}

struct RecursivePatternView: View {
    var body: some View {
        RecursivePattern()
            .stroke()
    }
}

struct RecursivePatternView_Previews: PreviewProvider {
    static var previews: some View {
        RecursivePatternView()
    }
}
