//
//  BodyPageDayView.swift
//  Learn30DaysOfSwiftUI
//
//  Created by Hutomo on 09/06/24.
//

import SwiftUI

struct BodyPageDayView: View {
    let navigationBarTitle: String
    let title: String
    var points: [PointItem]?
    var conclusions: [String]?
    var mediumUrl: String?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text(title).frame(maxWidth: .infinity, maxHeight: .infinity).font(.largeTitle).fontWeight(.bold).multilineTextAlignment(.center)
                if points != nil {
                    ForEach(points!, id: \.title) { point in
                        VStack() {
                            Divider()
                            VStack(alignment: .leading, spacing: 10) {
                                Text(point.title).font(.title).fontWeight(.bold)
                                if point.description != nil {
                                    Text(point.description!)
                                }
                                if point.subPoints != nil {
                                    ForEach(point.subPoints!, id: \.title) { subPoint in
                                        VStack() {
                                            if subPoint.title != nil {
                                                Text(subPoint.title!).font(.title2).fontWeight(.semibold)
                                            }
                                            if subPoint.description != nil {
                                                Text(subPoint.description!)
                                            }
                                            if subPoint.codeExample != nil {
                                                Text("Contoh:").fontWeight(.semibold)
                                                CodeSnippetView(code: """
                                                    \(subPoint.codeExample!.codeView)
                                                    """
                                                )
                                                Text("Hasilnya:").fontWeight(.semibold)
                                                subPoint.codeExample!.codeView
                                                if subPoint.codeExample!.explanation != nil {
                                                    Text(subPoint.codeExample!.explanation!)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Divider()
                if conclusions != nil {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Kesimpulan").font(.title).fontWeight(.bold)
                        ForEach(Array(conclusions!.enumerated()), id: \.element) { index, conslusion in
                            Text("\(index+1). \(conslusion)")
                        }
                    }
                }
                
                if mediumUrl != nil {
                    Link(destination: URL(string: mediumUrl!)!){
                        Image(systemName: "safari.fill").font(.title).fontWeight(.bold).foregroundColor(.gray)
                    }
                }
            }.padding()
        }.navigationBarTitle(Text(navigationBarTitle))
    }
}

struct PointItem {
    let title: String
    var description: String?
    var subPoints: [SubPointItem]?
}

struct SubPointItem {
    var title: String?
    var description: String?
    var codeExample: CodeExampleItem?
}

struct CodeExampleItem {
    let codeView: AnyView
    var explanation: String?
}
