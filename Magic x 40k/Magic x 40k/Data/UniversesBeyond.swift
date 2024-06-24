//
//  UniversesBeyond.swift
//  Magic x 40k
//
//  Created by Jonathan Copeland on 18/06/2023.
//

import Foundation

// MARK: - UniversesBeyond
struct UniversesBeyond: Codable {
    let meta: Meta
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let baseSetSize: Int
    let cards: [Card]
    let cardsphereSetID: Int
    let code: Code
    let isFoilOnly, isOnlineOnly: Bool
    let keyruneCode: Code
    let languages: [LanguageElement]
    let name, releaseDate: String
    let sealedProduct: [SealedProduct]
    let tcgplayerGroupID: Int
    let tokenSetCode: SetCode
    let tokens: [Token]
    let totalSetSize: Int
    let translations: Translations
    let type: String

    enum CodingKeys: String, CodingKey {
        case baseSetSize, cards
        case cardsphereSetID = "cardsphereSetId"
        case code, isFoilOnly, isOnlineOnly, keyruneCode, languages, name, releaseDate, sealedProduct
        case tcgplayerGroupID = "tcgplayerGroupId"
        case tokenSetCode, tokens, totalSetSize, translations, type
    }
}

// MARK: - Card
struct Card: Codable, Identifiable, Equatable {
    let id = UUID()
    let artist: String
    let availability: [Availability]
    let borderColor: BorderColor
    let colorIdentity, colors: [Color]
    let convertedManaCost: Int
    let edhrecRank: Int?
    let finishes: [Finish]
    let foreignData: [ForeignDatum]
    let frameEffects: [FrameEffect]?
    let frameVersion: String
    let hasFoil, hasNonFoil: Bool
    let identifiers: CardIdentifiers
    let isStarter: Bool?
    let keywords: [String]?
    let language: LanguageElement
    let layout: CardLayout
    let leadershipSkills: LeadershipSkills?
    let legalities: Legalities
    let manaCost: String?
    let manaValue: Int
    let name, number: String
    let power: String?
    let printings: [String]
    let promoTypes: [PromoType]?
    let purchaseUrls: CardPurchaseUrls
    let rarity: Rarity
    let rulings: [Ruling]
    let securityStamp: SecurityStamp
    let setCode: Code
    let subtypes: [String]
    let supertypes: [Supertype]
    let text: String
    let toughness: String?
    let type: String
    let types: [CardType]
    let uuid: String
    let variations: [String]?
    let flavorText, originalText, originalType: String?
    let isAlternative: Bool?
    let asciiName: String?
    let edhrecSaltiness: Double?
    let isPromo, isReprint: Bool?
    
    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
}

enum Availability: String, Codable {
    case paper = "paper"
}

enum BorderColor: String, Codable {
    case black = "black"
}

enum Color: String, Codable {
    case b = "B"
    case g = "G"
    case r = "R"
    case u = "U"
    case w = "W"
}

enum Finish: String, Codable {
    case etched = "etched"
    case foil = "foil"
    case nonfoil = "nonfoil"
}

// MARK: - ForeignDatum
struct ForeignDatum: Codable {
    let flavorText: String?
    let language: ForeignDatumLanguage
    let multiverseID: Int
    let name, text, type: String

    enum CodingKeys: String, CodingKey {
        case flavorText, language
        case multiverseID = "multiverseId"
        case name, text, type
    }
}

enum ForeignDatumLanguage: String, Codable {
    case chineseSimplified = "Chinese Simplified"
    case french = "French"
    case german = "German"
    case italian = "Italian"
    case japanese = "Japanese"
    case portugueseBrazil = "Portuguese (Brazil)"
    case spanish = "Spanish"
}

enum FrameEffect: String, Codable {
    case inverted = "inverted"
    case legendary = "legendary"
    case miracle = "miracle"
}

// MARK: - CardIdentifiers
struct CardIdentifiers: Codable {
    let cardKingdomFoilID, cardsphereID, mcmID: String?
    let mtgjsonV4ID, scryfallID, scryfallIllustrationID, scryfallOracleID: String
    let tcgplayerProductID, cardKingdomID, multiverseID, tcgplayerEtchedProductID: String?
    let cardKingdomEtchedID: String?

    enum CodingKeys: String, CodingKey {
        case cardKingdomFoilID = "cardKingdomFoilId"
        case cardsphereID = "cardsphereId"
        case mcmID = "mcmId"
        case mtgjsonV4ID = "mtgjsonV4Id"
        case scryfallID = "scryfallId"
        case scryfallIllustrationID = "scryfallIllustrationId"
        case scryfallOracleID = "scryfallOracleId"
        case tcgplayerProductID = "tcgplayerProductId"
        case cardKingdomID = "cardKingdomId"
        case multiverseID = "multiverseId"
        case tcgplayerEtchedProductID = "tcgplayerEtchedProductId"
        case cardKingdomEtchedID = "cardKingdomEtchedId"
    }
}

enum LanguageElement: String, Codable {
    case english = "English"
}

enum CardLayout: String, Codable {
    case normal = "normal"
    case saga = "saga"
}

// MARK: - LeadershipSkills
struct LeadershipSkills: Codable {
    let brawl, commander, oathbreaker: Bool
}

// MARK: - Legalities
struct Legalities: Codable {
    let commander, duel, legacy, oathbreaker: Alchemy
    let vintage: Paupercommander
    let paupercommander: Paupercommander?
    let modern, penny, predh, explorer: Alchemy?
    let gladiator, historic, historicbrawl, pioneer: Alchemy?
    let premodern, pauper, alchemy, brawl: Alchemy?
    let future, standard: Alchemy?
}

enum Alchemy: String, Codable {
    case banned = "Banned"
    case legal = "Legal"
}

enum Paupercommander: String, Codable {
    case legal = "Legal"
    case restricted = "Restricted"
}

enum PromoType: String, Codable {
    case release = "release"
    case surgefoil = "surgefoil"
    case thick = "thick"
}

// MARK: - CardPurchaseUrls
struct CardPurchaseUrls: Codable {
    let cardKingdomFoil, tcgplayer, cardKingdom, tcgplayerEtched: String?
    let cardKingdomEtched: String?
}

enum Rarity: String, Codable {
    case common = "common"
    case mythic = "mythic"
    case rare = "rare"
    case uncommon = "uncommon"
}

// MARK: - Ruling
struct Ruling: Codable {
    let date, text: String
}

enum SecurityStamp: String, Codable {
    case triangle = "triangle"
}

enum Code: String, Codable {
    case the40K = "40K"
}

enum Supertype: String, Codable {
    case basic = "Basic"
    case legendary = "Legendary"
}

enum CardType: String, Codable {
    case artifact = "Artifact"
    case creature = "Creature"
    case enchantment = "Enchantment"
    case instant = "Instant"
    case land = "Land"
    case sorcery = "Sorcery"
}

// MARK: - SealedProduct
struct SealedProduct: Codable {
    let category: Category
    let identifiers: SealedProductIdentifiers
    let name: String
    let purchaseUrls: SealedProductPurchaseUrls
    let releaseDate: String
    let subtype: Subtype
    let uuid: String
}

enum Category: String, Codable {
    case commanderDeck = "commander_deck"
}

// MARK: - SealedProductIdentifiers
struct SealedProductIdentifiers: Codable {
    let tcgplayerProductID: String

    enum CodingKeys: String, CodingKey {
        case tcgplayerProductID = "tcgplayerProductId"
    }
}

// MARK: - SealedProductPurchaseUrls
struct SealedProductPurchaseUrls: Codable {
    let tcgplayer: String
}

enum Subtype: String, Codable {
    case collector = "collector"
    case empty = ""
}

enum SetCode: String, Codable {
    case t40K = "T40K"
}

// MARK: - Token
struct Token: Codable {
    let artist: String
    let availability: [Availability]
    let borderColor: BorderColor
    let colorIdentity, colors: [Color]
    let finishes: [Finish]
    let frameVersion: String
    let hasFoil, hasNonFoil: Bool
    let identifiers: TokenIdentifiers
    let keywords: [String]?
    let language: LanguageElement
    let layout: TokenLayout
    let name, number: String
    let power: String?
    let relatedCards: RelatedCards?
    let reverseRelated: [String]
    let securityStamp: SecurityStamp
    let setCode: SetCode
    let subtypes: [String]
    let supertypes: [Supertype]
    let text, toughness: String?
    let type: String
    let types: [TokenType]
    let uuid: String
    let promoTypes: [PromoType]?
    let isReprint: Bool?
    let frameEffects: [FrameEffect]?
}

// MARK: - TokenIdentifiers
struct TokenIdentifiers: Codable {
    let mtgjsonV4ID, scryfallID, scryfallIllustrationID, scryfallOracleID: String

    enum CodingKeys: String, CodingKey {
        case mtgjsonV4ID = "mtgjsonV4Id"
        case scryfallID = "scryfallId"
        case scryfallIllustrationID = "scryfallIllustrationId"
        case scryfallOracleID = "scryfallOracleId"
    }
}

enum TokenLayout: String, Codable {
    case token = "token"
}

// MARK: - RelatedCards
struct RelatedCards: Codable {
    let reverseRelated: [String]
}

enum TokenType: String, Codable {
    case artifact = "Artifact"
    case creature = "Creature"
    case token = "Token"
}

// MARK: - Translations
struct Translations: Codable {
}

// MARK: - Meta
struct Meta: Codable {
    let date, version: String
}
