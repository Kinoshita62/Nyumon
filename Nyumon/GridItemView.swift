//
//  GridItem.swift
//  Nyumon
//
//  Created by USER on 2024/07/12.
//

import SwiftUI

struct GridItemView: View {
    var body: some View {
        VStack {
            Grid(alignment: .leading, horizontalSpacing: 20, verticalSpacing: 15) {
                GridRow {
                    Text("りんご")
                    Text("いちご")
                    Text("スイカ")
                }
                GridRow {
                    Text("梨")
                    Text("パイナップル")
                }
                GridRow {
                    Text("ぶどう")
                    Text("マンゴー")
                    Text("バナナ")
                    Text("メロン")
                }
            }
            .padding()
            .border(.gray)
            
            Spacer()
            
            Grid(alignment: .leading, verticalSpacing: 20) {
                GridRow {
                    Color.clear
                        .gridCellUnsizedAxes([.horizontal, .vertical])
                    Text("種目").bold()
                    Text("距離").bold()
                }
                Divider()
                    .gridCellUnsizedAxes(.horizontal)
                GridRow {
                    Image(systemName: "figure.pool.swim").font(.system(size: 50))
                    Text("オープンウォータースイム")
                    Text("3.8km")
                }
                GridRow {
                    Image(systemName: "figureoutdoor.cycle").font(.system(size: 50))
                    Text("バイク")
                    Text("180km")
                }
                GridRow {
                    Image(systemName: "figure.run").font(.system(size: 50))
                    Text("ラン")
                    Text("42.195km")
                }
            }
            .padding()
            .border(.gray)
            
            Spacer()
            
            GroupBox {
                Grid(alignment: .leading, horizontalSpacing: 20, verticalSpacing: 15) {
                    GridRow {
                        Text("1")
                        Text("サッカー")
                        Text("ランニング")
                    }
                    GridRow {
                        Text("2")
                        Text("テニス")
                        Text("サーフィン")
                        Text("ゴルフ")
                    }
                    GridRow {
                        Text("3")
                        Text("オープンウォータースイム")
                            .gridCellColumns(2)
                    }
                    GridRow {
                        Text("4")
                        Image(systemName: "figure.curling").font(.system(size: 50))
                        Text("カーリング")
                            .gridCellAnchor(UnitPoint(x: -1.2, y: 0.75))
                    }
                }
            }
        }
    }
}

#Preview {
    GridItemView()
}
