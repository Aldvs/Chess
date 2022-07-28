import UIKit

class ChessFigure {
    
    enum ChessType {
        case king, queen, bishop, knight, rook, pawn
    }
    
    enum ChessColor {
        case white, black
    }
    
    let type: ChessType
    let color: ChessColor
    var coordinates: (String, Int)? = nil
    var figureIcon: Character
    
    init(type: ChessType, color: ChessColor, figureIcon: Character) {
        self.type = type
        self.color = color
        self.figureIcon = figureIcon
    }
    
    init(type: ChessType,
         color: ChessColor,
         figureIcon: Character,
         coordinates: (String, Int)) {
        
        self.type = type
        self.color = color
        self.figureIcon = figureIcon
        setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    
    func setCoordinates(char c: String, num n: Int) {
        coordinates = (c, n)
    }
    
    func killFigure() {
        coordinates = nil
    }
}

