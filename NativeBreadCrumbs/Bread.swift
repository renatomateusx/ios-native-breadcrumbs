//
//  Bread.swift
//  NativeBreadCrumbs
//
//  Created by Renato Mateus on 26/05/21.
//


import UIKit

class Bread: UIView {
  
  //MARK: Lifecycle
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .clear
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    self.backgroundColor = .clear
  }
  
  //MARK: Helpers
  override func draw(_ rect: CGRect){
    
    self.contentMode = .redraw
    
    let widthOf = (rect.size.width - 13) / 3.0
    let heightOf = 44.0
    let margin = CGFloat(4.0)
    let offSet = CGFloat(heightOf / 3)
    
    let xX = CGFloat((widthOf * 1) - (widthOf / 2))
    let yY = CGFloat((heightOf / 2))
    
    let size = CGSize(width: CGFloat(widthOf), height: CGFloat(heightOf))
    
    let centerOne = CGPoint(x: xX, y: yY)
    self.drawRectOne(center: centerOne, size: size, margin: margin, index: 0, offSet: offSet, color: .green, label: "1 - Informar")
    
    let centerTwo = CGPoint(x: CGFloat((widthOf * 2) - (widthOf / 2)), y: CGFloat((heightOf / 2)))
    self.drawRectDois(center: centerTwo, size: size, margin: margin, index: 1, offSet: offSet, color: .green, label: "2 - Confirmar")
    
    let centerThree = CGPoint(x: CGFloat((widthOf * 3) - (widthOf / 2)), y: CGFloat((heightOf / 2)))
    self.drawRectThree(center: centerThree, size: size, margin: margin, index: 2, offSet: offSet, color: .green, label: "3 - Finalizar")
    
    let centerFour = CGPoint(x: CGFloat((widthOf * 4) - (widthOf / 2)), y: CGFloat((heightOf / 2)))
    self.drawRectFour(center: centerFour, size: size, margin: margin, index: 2, offSet: offSet, color: .green, label: "4 - Voltar")
    
  }
  
  public func drawRectOne(center:CGPoint, size: CGSize, margin:CGFloat, index:Int, offSet:CGFloat, color:UIColor, label: String){
    let rect = self.getRectangle(center: center, size: size, margin: margin, index: index)
    guard let context = UIGraphicsGetCurrentContext() else {return}
  
    
    context.beginPath()
    context.setLineWidth(0)
    context.move(to: CGPoint(x: rect.origin.x, y:rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width + offSet, y: rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width - offSet, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x, y: rect.origin.y))
    
    
    context.closePath()
    context.setFillColor(color.cgColor)
    context.fillPath()
    
    let labelInformar = self.buildLabel(text: label)
    self.addSubview(labelInformar)
    labelInformar.frame = CGRect(x: rect.origin.x, y: rect.origin.y - offSet, width: size.width, height: size.height)
    labelInformar.center = center
  }
  
  public func drawRectDois(center:CGPoint, size: CGSize, margin:CGFloat, index:Int, offSet:CGFloat, color:UIColor, label: String){
    let rect = self.getRectangle(center: center, size: size, margin: margin, index: index)
    guard let context = UIGraphicsGetCurrentContext() else {return}
  
    
    context.beginPath()
    context.setLineWidth(0)
    context.move(to: CGPoint(x: rect.origin.x + offSet, y:rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width + offSet, y: rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width - offSet, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x - offSet, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x + offSet, y: rect.origin.y))
    
    
    context.closePath()
    context.setFillColor(color.cgColor)
    context.fillPath()
    
    let labelConfirmar = self.buildLabel(text: label)
    self.addSubview(labelConfirmar)
    labelConfirmar.frame = CGRect(x: rect.origin.x, y: rect.origin.y - offSet, width: size.width, height: size.height)
    labelConfirmar.center = center
  }
  
  public func drawRectThree(center:CGPoint, size: CGSize, margin:CGFloat, index:Int, offSet:CGFloat, color:UIColor, label: String){
    let rect = self.getRectangle(center: center, size: size, margin: margin, index: index)
    guard let context = UIGraphicsGetCurrentContext() else {return}
  
    
    context.beginPath()
    context.setLineWidth(0)
    context.move(to: CGPoint(x: rect.origin.x + offSet, y:rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width + offSet, y: rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width - offSet, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x - offSet, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x + offSet, y: rect.origin.y))
    
    
    context.closePath()
    context.setFillColor(color.cgColor)
    context.fillPath()
    
    
    let labelFinalizar = self.buildLabel(text: label)
    self.addSubview(labelFinalizar)
    labelFinalizar.frame = CGRect(x: rect.origin.x, y: rect.origin.y - offSet, width: size.width, height: size.height)
    labelFinalizar.center = center
  }
  
  public func drawRectFour(center:CGPoint, size: CGSize, margin:CGFloat, index:Int, offSet:CGFloat, color:UIColor, label: String){
    let rect = self.getRectangle(center: center, size: size, margin: margin, index: index)
    guard let context = UIGraphicsGetCurrentContext() else {return}
  
    
    context.beginPath()
    context.setLineWidth(0)
    context.move(to: CGPoint(x: rect.origin.x + offSet, y:rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width + offSet, y: rect.origin.y))
    context.addLine(to: CGPoint(x: rect.origin.x + rect.size.width - offSet, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x - offSet, y: rect.origin.y + rect.size.height))
    context.addLine(to: CGPoint(x: rect.origin.x + offSet, y: rect.origin.y))
    
    
    context.closePath()
    context.setFillColor(color.cgColor)
    context.fillPath()
    
    
    let labelFinalizar = self.buildLabel(text: label)
    self.addSubview(labelFinalizar)
    labelFinalizar.frame = CGRect(x: rect.origin.x, y: rect.origin.y - offSet, width: size.width, height: size.height)
    labelFinalizar.center = center
  }
  
  func getRectangle(center:CGPoint, size: CGSize, margin:CGFloat, index: Int) -> CGRect{
    
    let marginLeft = (index == 0 ? (margin) : (index == 1 ? (0.5 * margin) : (0.5 * margin)))
    let marginRight = (index == 0 ? (1.5 * margin) : (index == 1 ? margin : (1.5 * margin)))
    
    return CGRect(x: center.x - (0.5 * size.width) + marginLeft, y: center.y - (0.5 * size.height) + margin, width: size.width - marginRight, height: size.height - (2 * margin))
  }
  
  func buildLabel(text:String) ->UILabel {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 12)
    label.textColor = .black
    label.textAlignment = .center
    label.text = text
    return label
  }

}
