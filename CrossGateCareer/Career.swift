//
//  Career.swift
//  CrossGateCareer
//
//  Created by 楊曜安 on 2023/5/17.
//

import Foundation

enum CareerType: String {
    case 劍士, 戰斧鬥士, 騎士, 弓箭手, 格鬥士 // 戰鬥系
    case 魔術師, 傳教士, 巫師, 咒術師  // 法術系
    case 士兵, 忍者,舞者, 盜賊,爆彈師  // 準戰鬥系
    case 醫生, 護士 // 準戰鬥服務系
    case 封印師, 馴獸師, 飼養師 // 寵物系
    case 紡織工, 獵人, 樵夫, 礦工 // 採集系
    case 武器修理師, 防具修理師, 鑑定師, 偵探, 仙人 // 服務系
    case 武器製造師, 防具製造師, 寵裝製造師, 藥劑師, 廚師 // 製造系
}


struct CareerInfo {
    let career: CareerType
    let introduction: String
}

struct CareerScore {
    let careerType: CareerType
    var Score = 0
}

var scoreList = [
    // 戰鬥系
    CareerScore(careerType: .劍士),
    CareerScore(careerType: .戰斧鬥士),
    CareerScore(careerType: .騎士),
    CareerScore(careerType: .弓箭手),
    CareerScore(careerType: .格鬥士),
    // 法術系
    CareerScore(careerType: .魔術師),
    CareerScore(careerType: .傳教士),
    CareerScore(careerType: .巫師),
    CareerScore(careerType: .咒術師),
    // 準戰鬥系
    CareerScore(careerType: .士兵),
    CareerScore(careerType: .忍者),
    CareerScore(careerType: .舞者),
    CareerScore(careerType: .盜賊),
    CareerScore(careerType: .爆彈師),
    // 準戰鬥服務系
    CareerScore(careerType: .醫生),
    CareerScore(careerType: .護士),
    // 寵物系
    CareerScore(careerType: .封印師),
    CareerScore(careerType: .馴獸師),
    CareerScore(careerType: .飼養師),
    // 採集系
    CareerScore(careerType: .紡織工),
    CareerScore(careerType: .獵人),
    CareerScore(careerType: .樵夫),
    CareerScore(careerType: .礦工),
    // 服務系
    CareerScore(careerType: .武器修理師),
    CareerScore(careerType: .防具修理師),
    CareerScore(careerType: .鑑定師),
    CareerScore(careerType: .偵探),
    CareerScore(careerType: .仙人),
    // 製造系
    CareerScore(careerType: .武器製造師),
    CareerScore(careerType: .防具製造師),
    CareerScore(careerType: .寵裝製造師),
    CareerScore(careerType: .藥劑師),
    CareerScore(careerType: .廚師)
]

let careerList: [CareerType : CareerInfo] = [
    .劍士 : CareerInfo(career: .劍士, introduction: "近身戰鬥系職業之中注重平衡度的職業，多樣化的配裝可以產生各式不同的效果。"),
    .戰斧鬥士 : CareerInfo(career: .戰斧鬥士, introduction: "近身戰鬥系職業之中注重傷害力的職業，極高的必殺修正可以簡單給予對手大量傷害。"),
    .騎士 : CareerInfo(career: .騎士, introduction: "近身戰鬥系職業之中注重修正值的職業，高修正的特性讓持久戰顯得輕鬆許多。"),
    .弓箭手 : CareerInfo(career: .弓箭手, introduction: "受歡迎的群技職業，專職技能亂射發動可以輕鬆掃光低等魔物。"),
    .格鬥士 : CareerInfo(career: .格鬥士, introduction: "可近可遠的熱門戰鬥系，有力的氣功彈加上多數戰技耗魔減半廣受大眾歡迎。"),
    .魔術師 : CareerInfo(career: .魔術師, introduction: "擅長強而有力的屬性攻擊魔法，其中超強全體魔法在練功的輸出非常可觀。"),
    .傳教士 : CareerInfo(career: .傳教士, introduction: "可以在短時間內為隊友們大量補血的熱門職業。"),
    .巫師 : CareerInfo(career: .巫師, introduction: "擅長久戰，司掌解咒與持續恢復的技術性職業。"),
    .咒術師 : CareerInfo(career: .咒術師, introduction: "使用狀態魔法與減傷祈禱輔助戰鬥的咒術職業。"),
    .士兵 : CareerInfo(career: .士兵, introduction: "全能型卻每樣都不專精的職業，部分任務由士兵帶隊限定。"),
    .忍者 : CareerInfo(career: .忍者, introduction: "能在攻擊中隨機發動暗殺技能，無視敵人血量一擊擊倒。"),
    .舞者 : CareerInfo(career: .舞者, introduction: "利用炫麗的舞技，能在戰鬥中迷惑敵人並提高隊友能力。"),
    .盜賊 : CareerInfo(career: .盜賊, introduction: "使用密傳的偷竊秘技，能在戰鬥中隨機偷取敵人身上的寶物。"),
    .爆彈師 : CareerInfo(career: .爆彈師, introduction: "能使用炸彈轉化制做出各式各樣的爆彈，火力強大，但財力也得非常強大才行。"),
    .醫生 : CareerInfo(career: .醫生, introduction: "專門為玩家治療傷勢的職業，戰鬥能力方面也相當出色。"),
    .護士 : CareerInfo(career: .護士, introduction: "可以快速幫玩家補血的職業，迴力鏢有相當大的傷害。"),
    .封印師 : CareerInfo(career: .封印師, introduction: "專門抓寵的職業，可以抓到高級的寵物。"),
    .馴獸師 : CareerInfo(career: .馴獸師, introduction: "就算是等級很高的寵物也可以輕鬆馴服乖乖聽話的職業。"),
    .飼養師 : CareerInfo(career: .飼養師, introduction: "能夠快速讓寵物提升等級的職業，高等級的因果報應也讓飼養師的攻擊力不遜色於其他輔助型職業。"),
    .紡織工 : CareerInfo(career: .紡織工, introduction: "採集系當中專門開採裝備中最重要的布料，可以有效的節省布料經費。"),
    .獵人 : CareerInfo(career: .獵人, introduction: "採集系當中專門開採料理所需的重要材料，經常在各處狩獵各種材料。"),
    .樵夫 : CareerInfo(career: .樵夫, introduction: "採集系當中專門開採裝備及藥劑的重要材料，經常在各處採取各種花草樹木。"),
    .礦工 : CareerInfo(career: .礦工, introduction: "採集系當中專門開採裝備所需的重要材料，經常在洞窟內採取各種礦藏。"),
    .武器修理師 : CareerInfo(career: .武器修理師, introduction: "專門修理各式武器的師傅。由於武器損壞得非常快，因此武器修理師很搶手，但是要有一坐好幾個小時不動的本領才行。"),
    .防具修理師 : CareerInfo(career: .防具修理師, introduction: "專門修理各式防具的師傅。由於防具損壞得非常快，因此防具修理師很搶手，但是要有一坐好幾個小時不動的本領才行。"),
    .鑑定師 : CareerInfo(career: .鑑定師, introduction: "可將未知而無法使用道具，鑑定成為已知並且可以使用的道具。"),
    .偵探 : CareerInfo(career: .偵探, introduction: "巧妙的利用變裝技巧，偽裝成各種角色，發現其他玩家的秘密。"),
    .仙人 : CareerInfo(career: .仙人, introduction: "利用神奇的變身技能化身成各種的魔物，是個令人猜不透且神秘的職業。"),
    .武器製造師 : CareerInfo(career: .武器製造師, introduction: "製造劍、斧、槍、弓、杖、小刀、投擲武器（迴力鏢/投具）的職業。"),
    .防具製造師 : CareerInfo(career: .防具製造師, introduction: "製造頭盔、鎧甲、靴、袍、帽、衣、鞋、盾的職業。"),
    .寵裝製造師 : CareerInfo(career: .寵裝製造師, introduction: "製造寵物專用裝備、晶石的職業。"),
    .藥劑師 : CareerInfo(career: .藥劑師, introduction: "能使用多種香草製成藥劑的職業，提供練功及任務中不可或缺的補給道具。"),
    .廚師 : CareerInfo(career: .廚師, introduction: "能使用多種食材作出料理的職業，提供練功及任務中不可或缺的魔力補充道具。"),
]

