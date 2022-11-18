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
        return path
    }
}

struct ContentView: View {
    var body: some View {
        ShrinkingCircles()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
