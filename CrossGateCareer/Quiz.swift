//
//  Quiz.swift
//  CrossGateCareer
//
//  Created by 楊曜安 on 2023/5/17.
//

import Foundation

struct Option {
    let index: Int
    let text: String
    let careerTypes: [CareerType]
}

struct Question {
    let text: String
    let options: [Option]
}

var quizList = [
    Question(text: "最喜歡戰鬥類型是：", options: [
        Option(index:0, text: "近戰破壞", careerTypes: [.劍士, .戰斧鬥士, .騎士, .格鬥士, .士兵, .忍者]),
        Option(index:1, text: "魔法元素", careerTypes: [.魔術師, .傳教士, .巫師, .咒術師]),
        Option(index:2, text: "遠程射擊", careerTypes: [.弓箭手, .格鬥士, .忍者, .舞者, .盜賊, .醫生, .護士, .爆彈師 ]),
        Option(index:3, text: "寵物衝鋒", careerTypes: [.封印師, .馴獸師, .飼養師])
    ]),
    Question(text: "在遭遇魔物戰鬥時的風格是：", options: [
        Option(index:0, text: "單體攻擊和護衛的角色", careerTypes: [.劍士, .戰斧鬥士, .騎士, .士兵, .忍者]),
        Option(index:1, text: "支援和治療輔助隊友", careerTypes: [.傳教士, .巫師, .咒術師, .舞者]),
        Option(index:2, text: "範圍招式攻擊多個目標", careerTypes: [.弓箭手, .格鬥士, .魔術師, .盜賊, .爆彈師, .醫生, .護士, .封印師, .馴獸師, .飼養師]),
        Option(index:3, text: "逃離戰場節省時間", careerTypes: [.紡織工, .獵人, .樵夫, .礦工, .武器修理師, .防具修理師, .鑑定師, .偵探, .仙人, .武器製造師, .防具製造師, .寵裝製造師, .藥劑師, .廚師]),
    ]),
    Question(text: "最喜歡的遊戲元素是：", options: [
        Option(index:0, text: "練功對戰", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .格鬥士, .魔術師, .傳教士, .巫師, .咒術師, .忍者, .舞者, .爆彈師]),
        Option(index:1, text: "生產製造", careerTypes: [.紡織工, .獵人, .樵夫, .礦工, .武器修理師, .防具修理師, .鑑定師, .武器製造師, .防具製造師, .寵裝製造師, .藥劑師, .廚師]),
        Option(index:2, text: "任務尋寶", careerTypes: [.盜賊, .醫生, .護士, .偵探, .仙人]),
        Option(index:3, text: "寵物養成", careerTypes: [.封印師, .馴獸師, .飼養師]),
    ]),
    Question(text: "出現湖中女神要贈送武器給你挑戰魔王，你的選擇是：", options: [
        Option(index:0, text: "剛毅劍", careerTypes: [.劍士]),
        Option(index:1, text: "重擊斧", careerTypes: [.戰斧鬥士]),
        Option(index:2, text: "穿刺槍", careerTypes: [.騎士]),
        Option(index:3, text: "王者之杖", careerTypes: [.魔術師, .傳教士, .巫師, .咒術師]),
    ]),
    Question(text: "魔王即將氣絕要逃跑，你會使用什麼方式補刀：", options: [
        Option(index:0, text: "穿空矢", careerTypes: [.弓箭手]),
        Option(index:1, text: "刀刃亂舞", careerTypes: [.盜賊, .醫生, .馴獸師]),
        Option(index:2, text: "因果報應", careerTypes: [.舞者, .護士, .飼養師]),
        Option(index:3, text: "氣功彈", careerTypes: [.格鬥士, .爆彈師, .忍者])
    ]),
    Question(text: "睡夢中遇到的大賢者傳授招式，一驚醒想起來的神技名稱：", options: [
        Option(index:0, text: "血之盟約", careerTypes: [.魔術師]),
        Option(index:1, text: "死而復生", careerTypes: [.傳教士]),
        Option(index:2, text: "神聖之光", careerTypes: [.巫師]),
        Option(index:3, text: "元素祈禱", careerTypes: [.咒術師]),
    ]),
    Question(text: "採集途中被傳送到寶藏之島，路牌上寫著特產名稱：", options: [
        Option(index:0, text: "永久冰石", careerTypes: [.礦工]),
        Option(index:1, text: "阿巴尼斯哈密瓜", careerTypes: [.獵人]),
        Option(index:2, text: "魔法紅蘿蔔", careerTypes: [.樵夫]),
        Option(index:3, text: "開米士羊毛", careerTypes: [.紡織工]),
    ]),
    Question(text: "參加寵物奧運會最想拿下的稱號是：", options: [
        Option(index:0, text: "百丟百中", careerTypes: [.封印師]),
        Option(index:1, text: "日夜鞭策", careerTypes: [.馴獸師]),
        Option(index:2, text: "斯巴達教育", careerTypes: [.飼養師]),
        Option(index:3, text: "神之巧手", careerTypes: [.飼養師]),
    ]),
    Question(text: "成為法蘭國史上第一個億萬富翁，店裡最暢銷的商品：", options: [
        Option(index:0, text: "深藍9號", careerTypes: [.藥劑師]),
        Option(index:1, text: "魚翅湯", careerTypes: [.廚師]),
        Option(index:2, text: "碎紙彈", careerTypes: [.爆彈師]),
        Option(index:3, text: "熾焰晶石", careerTypes: [.寵裝製造師]),
    ]),
    Question(text: "戰敗後被魔王關進監獄裡服刑，審判四大酷刑你的選擇是：", options: [
        Option(index:0, text: "磨利10萬件 生鏽的武器", careerTypes: [.武器修理師]),
        Option(index:1, text: "縫補10萬件 破損的防具", careerTypes: [.防具修理師]),
        Option(index:2, text: "鑑定10萬件 未知的物品", careerTypes: [.鑑定師]),
        Option(index:3, text: "醫治10萬隻 受傷的魔族", careerTypes: [.醫生]),
    ]),
    Question(text: "失去戰鬥能力的你為了在法蘭國生存，願意臥薪嘗膽向哪位大師求教：", options: [
        Option(index:0, text: "料理鐵人", careerTypes: [.廚師]),
        Option(index:1, text: "煉金術士", careerTypes: [.藥劑師]),
        Option(index:2, text: "武器名師", careerTypes: [.武器製造師]),
        Option(index:3, text: "防具名師", careerTypes: [.防具製造師]),
    ]),
    Question(text: "接獲S級任務需要喬裝身份，你的名片上印著：", options: [
        Option(index:0, text: "國防布的士兵長", careerTypes: [.士兵]),
        Option(index:1, text: "木葉村的影", careerTypes: [.忍者]),
        Option(index:2, text: "沉睡的大偵探", careerTypes: [.偵探]),
        Option(index:3, text: "破音的歌仙", careerTypes: [.仙人]),
    ]),
    Question(text: "在競技場裡發現一個神秘的捲軸，打開的文字：", options: [
        Option(index:0, text: "鴻雁追月", careerTypes: [.劍士]),
        Option(index:1, text: "水月", careerTypes: [.忍者]),
        Option(index:2, text: "榮光之旗", careerTypes: [.士兵]),
        Option(index:3, text: "浸透勁", careerTypes: [.格鬥士]),
    ]),
    Question(text: "轉生被召喚士傳送到法蘭王國，體內湧入能量獲得能力：", options: [
        Option(index:0, text: "力量&體力", careerTypes: [.騎士, .士兵, .爆彈師, .飼養師]),
        Option(index:1, text: "力量&速度", careerTypes: [.劍士, .戰斧鬥士, .弓箭手, .格鬥士, .醫生]),
        Option(index:2, text: "體力&速度", careerTypes: [.忍者, .舞者, .盜賊, .護士, .封印師, .馴獸師, .偵探, .仙人]),
        Option(index:3, text: "沒有魔力 重新轉生", careerTypes: [.魔術師, .傳教士, .巫師, .咒術師, .紡織工, .獵人, .樵夫, .礦工, .武器修理師, .防具修理師, .鑑定師, .武器製造師, .防具製造師, .寵裝製造師, .藥劑師, .廚師]),
    ]),
    Question(text: "轉生被召喚士傳送到法蘭王國，體內湧入能量獲得能力：", options: [
        Option(index:0, text: "魔力&速度", careerTypes: [.魔術師, .紡織工, .獵人, .樵夫, .礦工, .藥劑師, .廚師]),
        Option(index:1, text: "魔力&強度", careerTypes: [.魔術師]),
        Option(index:2, text: "魔力&體力", careerTypes: [.傳教士, .巫師, .咒術師, .武器修理師, .防具修理師, .鑑定師, .武器製造師, .防具製造師, .寵裝製造師]),
        Option(index:3, text: "沒有力量 重新轉生", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .格鬥士, .士兵, .忍者, .舞者, .盜賊, .爆彈師, .醫生, .護士, .封印師, .馴獸師, .飼養師]),
    ]),
    Question(text: "練習專職技能多日專管稱號的阿蒙給你的新稱號：", options: [
        Option(index:0, text: "呢喃的歌聲", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .格鬥士, .魔術師, .傳教士, .巫師, .咒術師, .士兵, .忍者, .舞者, .盜賊, .爆彈師, .封印師, .馴獸師, .飼養師]),
        Option(index:1, text: "刻於新月之銘", careerTypes: [.醫生, .護士, .紡織工, .獵人, .樵夫, .礦工, .武器修理師, .防具修理師, .鑑定師, .偵探, .仙人, .武器製造師, .防具製造師, .寵裝製造師, .藥劑師, .廚師]),
        Option(index:2, text: "敬畏的寂靜", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .格鬥士, .魔術師, .傳教士, .巫師, .咒術師, .士兵, .忍者, .舞者, .盜賊, .爆彈師, .封印師, .馴獸師, .飼養師]),
        Option(index:3, text: "萬物創造者", careerTypes: [.醫生, .護士, .紡織工, .獵人, .樵夫, .礦工, .武器修理師, .防具修理師, .鑑定師, .偵探, .仙人, .武器製造師, .防具製造師, .寵裝製造師, .藥劑師, .廚師]),
    ]),
    Question(text: "調查光之路的石碑，踏上誓言之花任務，與守衛交談獲得的花色：", options: [
        Option(index:0, text: "誓言之花（紅）", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .格鬥士, .魔術師, .傳教士, .巫師, .咒術師]),
        Option(index:1, text: "誓言之花（藍）", careerTypes: [.士兵, .忍者, .舞者, .盜賊, .封印師, .馴獸師, .飼養師, .醫生, .護士, .爆彈師]),
        Option(index:2, text: "誓言之花（黃）", careerTypes: [.武器修理師, .防具修理師, .鑑定師, .偵探, .仙人, .藥劑師, .廚師, .礦工, .樵夫, .獵人, .紡織工]),
        Option(index:3, text: "誓言之花（綠）", careerTypes: [.武器製造師, .防具製造師, .寵裝製造師]),
    ]),
    Question(text: "理想中的職業升階方式：", options: [
        Option(index:0, text: "揪團練功 加速狂飆", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .魔術師, .士兵]),
        Option(index:1, text: "閉關練技 深造巔峰", careerTypes: [.格鬥士, .傳教士, .巫師, .咒術師, .忍者, .舞者, .盜賊, .爆彈師, .封印師, .馴獸師, .飼養師, .護士, .偵探, .仙人]),
        Option(index:2, text: "掛網採集 批貨生產", careerTypes: [.紡織工, .獵人, .樵夫, .礦工, .武器製造師, .防具製造師, .寵裝製造師, .藥劑師, .廚師]),
        Option(index:3, text: "敦親睦鄰 擺攤服務", careerTypes: [.武器修理師, .防具修理師, .鑑定師, .醫生]),
    ]),
    Question(text: "在寵物攤販的清單上，想要購買的寵物：", options: [
        Option(index:0, text: "豺狼座", careerTypes: [.士兵, .忍者, .護士, .武器製造師, .防具修理師, .鑑定師, .仙人, .偵探, .武器製造師, .防具製造師, .寵裝製造師]),
        Option(index:1, text: "真紅淑女", careerTypes: [.封印師, .馴獸師, .飼養師]),
        Option(index:2, text: "改造樹精", careerTypes: [.魔術師, .傳教士, .巫師, .咒術師, .舞者, .盜賊, .紡織工, .獵人, .樵夫, .礦工, .藥劑師, .廚師]),
        Option(index:3, text: "改造地獄妖犬", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .格鬥士, .爆彈師, .醫生]),
    ]),
    Question(text: "完成任務後獲得智慧型手機，打開發現的新功能：", options: [
        Option(index:0, text: "迷宮找樓梯", careerTypes: [.劍士, .戰斧鬥士, .騎士, .弓箭手, .格鬥士, .士兵,.忍者, .舞者, .盜賊, .爆彈師, .醫生, .護士, .偵探, .仙人]),
        Option(index:1, text: "魔物觀測者", careerTypes: [.封印師, .馴獸師, .飼養師, .鑑定師]),
        Option(index:2, text: "魔法精神論", careerTypes: [.魔術師, .傳教士, .巫師, .咒術師]),
        Option(index:3, text: "製造成本表", careerTypes: [.紡織工, .獵人, .樵夫, .礦工, .武器修理師, .防具修理師, .鑑定師, .武器製造師, .防具製造師, .寵裝製造師, .藥劑師, .廚師]),
    ])
]


