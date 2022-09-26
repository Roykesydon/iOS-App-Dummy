//
//  ContentView.swift
//  HW1
//
//  Created by roykesydone on 2022/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 18/256, green: 18/256, blue: 18/256).ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    HStack{
                        Text("晚安").foregroundColor(.white).font(.system(size:23)).fontWeight(.bold)
                        Spacer()
                        Image("bell").resizable().frame(width: 30, height:30).foregroundColor(.white)
                        Image("wall-clock").resizable().frame(width: 27, height:27).foregroundColor(.white).padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                        Image("settings").resizable().frame(width: 27, height:27).foregroundColor(.white)
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 18, trailing: 0))
                    HStack{
                        Text("音樂")
                            .font(.system(size:13))
                            .frame(height:5.0)
                            .padding().background(Color(red:41/256, green:41/256, blue:41/256))
                            .cornerRadius(.infinity)
                            .foregroundColor(.white)
                        
                        Text("Podcast 和節目")
                            .font(.system(size:13))
                            .frame(height:5.0)
                            .padding().background(Color(red:41/256, green:41/256, blue:41/256))
                            .cornerRadius(.infinity)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    HStack{
                        HStack{
                            AsyncImage(url: URL(string: "https://pbs.twimg.com/media/FKvm1ORUYAEEOs3?format=jpg&name=4096x4096"), scale:25.0).frame(width: 55, height:55, alignment: .center)
                                .offset(x:0,y:15)
                                .clipped()
                            Text("混合不分類")
                                .font(.system(size:14))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            Image("signal-status").resizable()
                                .foregroundColor(.yellow)
                                .colorMultiply(Color(red:51/256, green:210/256, blue:120/256))
                                .frame(width: 15, height:15)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 5))
                        }
                        .frame(width: 180.0, height: 55.0, alignment: .leading)
                        .background(Color(red:41/256, green:41/256, blue:41/256))
                        .cornerRadius(5)
                        
                        HStack{
                            AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67706c0000bebb3d5fed454c07ef7411f1f5d8"), scale: 11.5).frame(width: 55, height:55, alignment: .center)
                                .offset(x:0,y:0)
                                .clipped()
                            Text("lofi sleep, lofi\nrain 💤")
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 2.0))
                                .font(.system(size:14))
                                .fontWeight(.bold)
                                .font(.system(size:16))
                                .foregroundColor(.white)
                        }
                        .frame(width: 180.0, height: 55.0, alignment: .leading)
                        .background(Color(red:41/256, green:41/256, blue:41/256))
                        .cornerRadius(5)
                    }.padding(EdgeInsets(top: 15, leading: 0, bottom: 20, trailing: 0))

                    HStack{
                        Text("你可能會喜歡的節目").foregroundColor(.white).font(.system(size:23)).fontWeight(.bold)
                        Spacer()
                    }
                    HStack(spacing: 10){
                        VStack{
                            AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67656300005f1f79191bf8da1c999a0801d231"), scale: 2.0)
                                .frame(width: 155, height:155, alignment: .center)
                                .offset(x:0, y:0)
                                .clipped()
                                .cornerRadius(15)
                            VStack{
                                HStack{
                                    Text("Distractible")
                                        .font(.system(size:12))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(alignment: .leading)
                                    Spacer()
                                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                HStack{
                                    Text("節目 • Wood Elf Media")
                                        .font(.system(size:12))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red:125/256, green:125/256, blue:125/256))
                                        .frame(alignment: .leading)
                                    Spacer()
                                }
                            }
                        }
                        .frame(width: 155.0, height: 250.0, alignment: .topLeading)
                        
                        VStack{
                            AsyncImage(url: URL(string: "https://i.scdn.co/image/e8078a85f955c00879d61d5505aad91b725dc29f"), scale: 2.0)
                                .frame(width: 155, height:155, alignment: .center)
                                .offset(x:0,y:0)
                                .clipped()
                                .cornerRadius(15)
                            VStack{
                                HStack{
                                    Text("Talk To Me In Korean -...")
                                        .font(.system(size:12))
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .frame(alignment: .leading)
                                    
                                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                HStack{
                                    Text("節目 • Talk To Me In\nKorean")
                                        .font(.system(size:12))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(red:125/256, green:125/256, blue:125/256))
                                        .frame(width: 145.0, alignment: .leading)
                                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            }.offset(x: -3)
                        }
                        .frame(width: 155.0, height: 250.0, alignment: .topLeading)
                    }.frame(height:230.0, alignment: .topLeading)
                        .offset(x: -25)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                    HStack{
                        Text("為你推薦的當紅專輯").foregroundColor(.white).font(.system(size:23)).fontWeight(.bold)
                        Spacer()
                    }
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            VStack{
                                AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d00001e02a7dbcbf5013c0de853148e01"), scale:1.9)
                                    .frame(width: 155, height:155, alignment: .center)
                                    .offset(x:0,y:0)
                                    .clipped()
                                    .cornerRadius(5)
                                VStack{
                                    HStack{
                                        Text("Genshin Impact - The Stellar Moments Vol. 2 (Original Game Soundtrack)")
                                            .font(.system(size:12))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(alignment: .leading)
                                        Spacer()
                                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                    HStack{
                                        Text("專輯 • HOYO-MiX")
                                            .font(.system(size:12))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red:125/256, green:125/256, blue:125/256))
                                            .frame(alignment: .leading)
                                        Spacer()
                                    }
                                }
                                
                            }.frame(width: 155.0, height: 250.0, alignment: .topLeading)
                            
                            VStack{
                                AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d00001e029c3625a413a9a79facea38c2"), scale: 1.9)
                                    .frame(width: 155, height:155, alignment: .center)
                                    .offset(x:0,y:0)
                                    .clipped()

                                VStack{
                                    HStack{
                                        Text("THE BOOK 2")
                                            .font(.system(size:12))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(alignment: .leading)
                                        Spacer()
                                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                    HStack{
                                        Text("專輯 • YOASOBI")
                                            .font(.system(size:12))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red:125/256, green:125/256, blue:125/256))
                                            .frame(alignment: .leading)
                                        Spacer()
                                    }
                                }
                                
                            }.frame(width: 155.0, height: 250.0, alignment: .topLeading)
                            
                            VStack{
                                AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d00001e029a067db34b24b7030cb87909"), scale:1.9)
                                    .frame(width: 155, height:155, alignment: .center)
                                    .offset(x:0,y:0)
                                    .clipped()
                                VStack{
                                    HStack{
                                        Text("BOOTLEG")
                                            .font(.system(size:12))
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .frame(alignment: .leading)
                                        Spacer()
                                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                    HStack{
                                        Text("專輯 • 米津玄師")
                                            .font(.system(size:12))
                                            .fontWeight(.bold)
                                            .foregroundColor(Color(red:125/256, green:125/256, blue:125/256))
                                            .frame(alignment: .leading)
                                        Spacer()
                                    }
                                }
                                
                            }.frame(width: 155.0, height: 250.0, alignment: .topLeading)
                        }
                    }
                }
            }
            .frame(alignment: .top)
            .padding()
            
            VStack{
                Spacer()
                VStack{}.frame(width: 390, height: 180)
                    .background(LinearGradient(gradient: Gradient(colors: [Color(uiColor: UIColor(red: 18/256, green: 18/256, blue: 18/256, alpha: 1.0)), Color(uiColor: UIColor(red: 18/256, green: 18/256, blue: 18/256, alpha: 0.9)),Color(uiColor: UIColor(red: 18/256, green: 18/256, blue: 18/256, alpha: 0.0))]), startPoint: .bottom, endPoint: .top))
            }
            
            VStack{
                Spacer()
                VStack{
                    HStack{
                        AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d00001e02a91a5b301baac1f46e6f30eb"), scale: 7.5).frame(width: 40, height:40, alignment: .center)
                            .offset(x:0,y:0)
                            .clipped()
                            .padding(5)
                            .cornerRadius(22.0)
                        VStack{
                            HStack{
                                Text("I Really Want to Stay at Your House")
                                    .foregroundColor(.white)
                                    .font(.system(size:13))
                                Spacer()
                            }
                            HStack{
                                Text("Rosa Walton, Hallie Coggins")
                                    .font(.system(size:13))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(red:170/256, green:170/256, blue:170/256))
                                Spacer()
                            }
                            
                        }.frame(alignment: .leading)
                        
                        HStack{
                            Image("computer").resizable().frame(width: 25, height:28).colorMultiply(Color(red:170/256, green:170/256, blue:170/256)).offset(y:3)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 7.0))
                            
                            Image("pause").resizable().frame(width: 25, height:25)
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10.0))
                    }
                    .frame(width: 370, height: 50)
                    .background(Color(red:24/256, green:25/256, blue:30/256))
                    .cornerRadius(10.0)
                    .offset(y:5)
                    
                    HStack{
                        Spacer().frame(width:30, height:2)
                            .background(.white)
                        Spacer().frame(width:330, height:2)
                            .background(Color(red:75/256, green:75/256, blue:75/256))
                    }
                    HStack{
                        VStack{
                            Image("house").resizable().frame(width: 20, height:20).foregroundColor(.white)
                            Text("首頁")
                                .foregroundColor(.white)
                                .font(.system(size:11))
                        }
                        .frame(width:70)
                        Spacer()
                        VStack{
                            Image("search").resizable()
                                .foregroundColor(.yellow)
                                .colorMultiply(Color(red:170/256, green:170/256, blue:170/256))
                                .frame(width: 20, height:20)
                            
                            Text("搜尋")
                                .foregroundColor(Color(red:170/256, green:170/256, blue:170/256))
                                .font(.system(size:11))
                        }
                        .frame(width:70)
                        Spacer()
                        VStack{
                            Image("albums").resizable()
                                .colorMultiply(Color(red:170/256, green:170/256, blue:170/256))
                                .frame(width: 20, height:20)
                            Text("你的音樂庫")
                                .foregroundColor(Color(red:170/256, green:170/256, blue:170/256))
                                .font(.system(size:11))
                        }
                        .frame(width:70)
                    }
                    .padding(EdgeInsets(top: 7, leading: 10, bottom: 0, trailing: 10))
                }
                .frame(width:370)
            }.frame(width:300)
        }.preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
