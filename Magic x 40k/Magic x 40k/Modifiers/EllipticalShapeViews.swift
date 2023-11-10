//
//  EllipticalShapeViews.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 06/10/2023.
//

import SwiftUI

struct EllipticalShapeOuter: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width:6, height: 20))
        return path
    }
}


// The black stroke border
struct EllipticalShapeOuterStroke: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 31))
        return path
    }
}

struct EllipticalShapeInner: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 4, height: 28))
        return path
    }
}

struct EllipticalShapeInnerPlate: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 3, height: 24))
        return path
    }
}

struct EllipticalShapeOuter2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width:6, height: 20))
        return path
    }
}


// The black stroke border
struct EllipticalShapeOuterStroke2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 5, height: 31))
        return path
    }
}

struct EllipticalShapeInner2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 4, height: 28))
        return path
    }
}

struct EllipticalShapeInnerPlate2: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addRoundedRect(in: rect, cornerSize: CGSize(width: 3, height: 24))
        return path
    }
}

struct EllipticalShapeViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}



#Preview {
    EllipticalShapeViews()
}
