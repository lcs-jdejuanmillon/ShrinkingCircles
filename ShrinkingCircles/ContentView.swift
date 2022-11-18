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
        for i in 0...3 {
            let j = Double(i)
            path.addEllipse(in: CGRect(origin: CGPoint(x: (rect.width - rect.height) / 2 + 25 * j, y: 25 * j), size: CGSize(width: rect.height - 50 * j, height: rect.height - 50 * j)))
        }
        return path
    }
}

struct ShrinkingCirclesRecursively: Shape {
    
    let desiredDepth: Int
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let allThePaths = recursiveHelper(currentDepth: 1, drawingIn: rect)
        path.addPath(allThePaths)
        return path
    }
    
    func recursiveHelper(currentDepth: Int, drawingIn rect: CGRect) -> Path {
        var path = Path()
        let j = CGFloat(currentDepth - 1)
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.midX - rect.midY + 25 * j, y: 25 * j), size: CGSize(width: rect.height - 50 * j, height: rect.height - 50 * j)))
        if currentDepth < desiredDepth {
            let pathForNextCircle = recursiveHelper(currentDepth: currentDepth + 1, drawingIn: rect)
            path.addPath(pathForNextCircle)
        }
        return path
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ShrinkingCircles()
                .stroke()
            ShrinkingCirclesRecursively(desiredDepth: 4)
                .stroke()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
