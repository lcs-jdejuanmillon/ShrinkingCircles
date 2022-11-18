//
//  ContentView.swift
//  ShrinkingCircles
//
//  Created by Jacobo de Juan Millon on 2022-11-18.
//

import SwiftUI

struct ShrinkingCircles: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        for i in 0...8 {
            let j = Double(i)
            path.addEllipse(in: CGRect(origin: CGPoint(x: (rect.width - rect.height) / 2 + 25 * j, y: 25 * j), size: CGSize(width: rect.height - 50 * j, height: rect.height - 50 * j)))
        }
        return path
    }
}

struct ContentView: View {
    var body: some View {
        ShrinkingCircles()
            .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
