import QtQuick 2.0
import QtGraphicalEffects 1.0
import USB2Snes 1.0
import "qrc:/extrajs.js" as Helper // Some extra javascript function
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4



Rectangle {
    width: 290
    height: 400
    id : window
    color : "black"
    property int globalSpacing : 3
    property int globalVSpacing: 4


    FontLoader {
        id: iogFont
        source: "lunchds.ttf"
    }

    property var idToObject: {
        1 : swordOfLife,
        2 : psychoSword,
        3 : criticalSword,
        4 : luckyBlade,
        5 : zantetsuSword,
        6 : spiritSword,
        7 : recoverySword,
        8 : soulBlade,

        9 : ironArmor,
        0xA : iceArmor,
        0xB : bubbleArmor,
        0xC : magicArmor,
        0xD : mysticArmor,
        0xE : lightArmor,
        0xF : elementalMail,
        0x10 : soulArmor,
        0x18 : magicPhoenix,

        0x0F : goatFood,
        0x1A : harpSting,
        0x1B : pass,
        0x1C : dreamRod,
        0x1D : leoBrush,
        0x1E : greenLeaves,
        0x1F : moleRibbon,
        0x20 : bigPearl,
        0x21 : mermaidTear,
        0x22 : mushroomShoes,
        0x23 : mobileKey,
        0x24 : thunderRing,
        0x25 : deliciousSeeds,
        0x26 : catNip,
        0x27 : doorKey,
        0x28 : platinumCard,
        0x29 : vipCard,

        0x32 : redHotMirror,
        0x33 : redHotBall,
        0x34 : redHotStick,
        0x35 : powerBracelet,
        0x36 : shieldBracelet,
        0x37 : superBracelet,

        0x3A : brownStone,
        0x3B : greenStone,
        0x3C : blueStone,
        0x3D : silverStone,
        0x3E : purpleStone,
        0x3F : blackStone,
        0x40 : magicBell
    }


    function setMinimalMode()
    {
        hideEverything();
        counterRow.parent = window;
        miniCol.children = [];
        luckyBlade.parent = miniItemRow;
        zantetsuSword.parent = miniItemRow;
        spiritSword.parent = miniItemRow;
        soulBlade.parent = miniItemRow;
        bubbleArmor.parent = miniItemRow;
        soulArmor.parent = miniItemRow;
        showContainer(miniItemRow);

        redHotBall.parent = phoenixRow;
        redHotMirror.parent = phoenixRow;
        redHotStick.parent = phoenixRow;
        magicPhoenix.parent = phoenixRow;
        grandMa1.parent = phoenixRow;
        grandMa2.parent = phoenixRow;
        mountainKing.parent = phoenixRow;
        showContainer(phoenixRow);

        dreamRod.parent = miniStuffRow;
        leoBrush.parent = miniStuffRow;
        greenLeaves.parent = miniStuffRow;
        mushroomShoes.parent = miniStuffRow;
        platinumCard.parent = miniStuffRow;
        vipCard.parent = miniStuffRow;
        showContainer(miniStuffRow)

        villageChief.parent = npcRow;
        greenGuardian.parent = npcRow;
        mermaidQueen.parent = npcRow;
        nome.parent = npcRow;
        marie.parent = npcRow;
        kingMagridd.parent = npcRow;
        showContainer(npcRow);

        miniItemRow.parent = miniCol;
        phoenixRow.parent = miniCol;
        //stoneRow.parent = miniCol;
        miniStuffRow.parent = miniCol;
        npcRow.parent = miniCol;
        counterRow.parent = miniCol;
        showContainer(stoneGrid);
        blackStone.visible = true;
    }

    function setIntermediateMode() {
        hideEverything();
        counterRow.parent = window;
        miniCol.children = [];
        luckyBlade.parent = miniItemRow;
        zantetsuSword.parent = miniItemRow;
        spiritSword.parent = miniItemRow;
        soulBlade.parent = miniItemRow;
        bubbleArmor.parent = miniItemRow;
        soulArmor.parent = miniItemRow;
        showContainer(miniItemRow);

        redHotBall.parent = phoenixRow;
        redHotMirror.parent = phoenixRow;
        redHotStick.parent = phoenixRow;
        magicPhoenix.parent = phoenixRow;
        grandMa1.parent = phoenixRow;
        grandMa2.parent = phoenixRow;
        mountainKing.parent = phoenixRow;
        showContainer(phoenixRow);

        dreamRod.parent = miniStuffRow;
        leoBrush.parent = miniStuffRow;
        greenLeaves.parent = miniStuffRow;
        mushroomShoes.parent = miniStuffRow;
        platinumCard.parent = miniStuffRow;
        vipCard.parent = miniStuffRow;
        showContainer(miniStuffRow)

        pass.parent = miscItemGrid;
        goatFood.parent = miscItemGrid;
        deliciousSeeds.parent = miscItemGrid;
        moleRibbon.parent = miscItemGrid;
        bigPearl.parent = miscItemGrid;
        doorKey.parent = miscItemGrid;
        catNip.parent = miscItemGrid;
        harpSting.parent = miscItemGrid;
        mobileKey.parent = miscItemGrid;
        mehBracelet.parent = miscItemGrid;
        superBracelet.parent = miscItemGrid;
        magicBell.parent = miscItemGrid;
        showContainer(miscItemGrid);
        showContainer(mehBracelet);

        villageChief.parent = npcRow;
        greenGuardian.parent = npcRow;
        mermaidQueen.parent = npcRow;
        nome.parent = npcRow;
        marie.parent = npcRow;
        kingMagridd.parent = npcRow;
        showContainer(npcRow);

        miniItemRow.parent = miniCol;
        phoenixRow.parent = miniCol;
        miniStuffRow.parent = miniCol;
        miscItemGrid.parent = miniCol;
        npcRow.parent = miniCol;
        showContainer(stoneGrid);
        blackStone.visible = true;
        counterRow.parent = miniCol;
    }
    function hideEverything () {
        for (var p in idToObject)
        {
            idToObject[p].visible = false;
        }
    }

    function showContainer(container) {
        for (var child in container.children) {
            container.children[child].visible = true;
        }
    }

    function setFullMode() {
        hideEverything();
        braceletRow.visible = true;
        swordOfLife.parent = swordRow;
        psychoSword.parent = swordRow;
        criticalSword.parent = swordRow;
        luckyBlade.parent = swordRow;
        zantetsuSword.parent = swordRow;
        spiritSword.parent = swordRow;
        recoverySword.parent = swordRow;
        soulBlade.parent = swordRow;
        for (var child in swordRow.children) {
            swordRow.children[child].visible = true;
        }

        redHotBall.parent = phoenixRow;
        redHotMirror.parent = phoenixRow;
        redHotStick.parent = phoenixRow;
        magicPhoenix.parent = phoenixRow;
        grandMa1.parent = phoenixRow;
        grandMa2.parent = phoenixRow;
        mountainKing.parent = phoenixRow;

        ironArmor.parent = armorRow;
        iceArmor.parent = armorRow;
        bubbleArmor.parent = armorRow;
        magicArmor.parent = armorRow;
        mysticArmor.parent = armorRow;
        lightArmor.parent = armorRow;
        elementalMail.parent = armorRow;
        soulArmor.parent = armorRow;
        for (child in armorRow.children) {
            armorRow.children[child].visible = true;
        }

        dreamRod.parent = fullStuffRow;
        leoBrush.parent = fullStuffRow;
        greenLeaves.parent = fullStuffRow;
        mushroomShoes.parent = fullStuffRow;
        platinumCard.parent = fullStuffRow;
        vipCard.parent = fullStuffRow;

        villageChief.parent = npcRow;
        greenGuardian.parent = npcRow;
        mermaidQueen.parent = npcRow;
        nome.parent = npcRow;
        marie.parent = npcRow;
        kingMagridd.parent = npcRow;

        swordRow.parent = fullCol;
        armorRow.parent = fullCol;
        braceletRow.parent = fullCol;
        fullStuffRow.parent = fullCol;
        phoenixRow.parent = fullCol;
        counterRow.parent = fullCol;
        npcRow.parent = fullCol;
    }

    USB2Snes {
        id : usb2snes
        objectName: "usb2snes" // Don't change this
        windowTitle: "Soul Blazer Tracker" // The WindowTitle
        timer : 1000 // The interval timer value in ms. A frame is around 16 ms

        onInit: {
            //setMinimalMode();
            setIntermediateMode();
        }

        /* Main Code is actually here */

        onTimerTick: {
            var inventoryData = memory.readRange(0x7E1B1E, 64)
            var inventory = new Uint8Array(inventoryData)
            var items = {}
            var cpt = 0
            for (cpt = 0; cpt < 64; cpt += 1)
            {
                if (inventory[cpt] > 128)
                    inventory[cpt] -= 128
                items[inventory[cpt]] = 1
            }
            for (var p in idToObject)
            {
                idToObject[p].owned = false;
            }

            stoneCounter.count = 0
            emblemCounter.count = 0
            for (var k in items)
            {
                if (idToObject.hasOwnProperty(k))
                    idToObject[k].owned = true
                if (k <= 0x3F && k >= 0x3A)
                    stoneCounter.count++
                if (k <= 0x31 && k >= 0x2A)
                    emblemCounter.count++
            }
            var NPCData = memory.readRange(0x7E1ADF, 64)
            var NPC = new Uint8Array(NPCData)
            villageChief.owned = false;
            greenGuardian.owned = false;
            mermaidQueen.owned = false;
            nome.owned = false;
            mountainKing.owned = false;
            grandMa1.owned = false;
            grandMa2.owned = false;
            marie.owned = false;
            kingMagridd.owned = false;
            if (NPC[0] & 2)
                villageChief.owned = true;
            if (NPC[9] & 1)
                greenGuardian.owned = true;
            if (NPC[21] & 64)
                mermaidQueen.owned = true;
            if (NPC[25] & 64)
                nome.owned = true;
            if (NPC[31] & 8)
                mountainKing.owned = true;
            if (NPC[27] & 64)
                grandMa1.owned = true;
            if (NPC[27] & 2)
                grandMa2.owned = true;
            if (NPC[36] & 128)
                marie.owned = true;
            if (NPC[49] & 32)
                kingMagridd.owned = true;

            // 1B6B 1B6E -> 15 00 42 00 before turning P item
            // 1B6B 1B6E -> 44 00 44 00
        }

        }
    }
    Row {
        id: miniItemRow
        height: 45
        spacing: globalSpacing
    }
    Row {
        id: miniStuffRow
        height: 45
        spacing: globalSpacing
    }
    Row {
        id: fullStuffRow
        height: 45
        spacing: globalSpacing
    }
    Grid {
        id : miscItemGrid
        columns: 6
        spacing: globalSpacing

    }

    Column {
        id: miniCol
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.left: parent.left
        anchors.leftMargin: 2
        spacing: globalVSpacing
    }
    Column {
        id: fullCol
        anchors.top: parent.top
        anchors.topMargin: 2
        anchors.left: parent.left
        anchors.leftMargin: 2
        spacing: 4
    }
    TrackerImage {
        id: grandMa1
        Layout.alignment: Qt.AlignHCenter
        height: 35
        width: 20
        source: "Images/grandma.png"
    }
    TrackerImage {
        id: grandMa2
        Layout.alignment: Qt.AlignHCenter
        height: 35
        width: 20
        source: "Images/grandma.png"
    }
    TrackerImage {
        id: mountainKing
        height: 45
        width: 45
        source: "Images/Mountain King.png"
    }
    Row {
        id: npcRow
        spacing: globalSpacing
    }

    TrackerImage {
        id: villageChief
        height: 45
        width : 45
        source: "Images/Village Chief.png"
    }
    TrackerImage {
        id: greenGuardian
        height: 45
        width : 45
        source: "Images/GGuardian.png"
    }
    TrackerImage {
        id: mermaidQueen
        height: 45
        width : 45
        source: "Images/Mermaid Queen.png"
    }
    TrackerImage {
        id: nome
        height: 45
        width : 45
        source: "Images/Nome.png"
    }
    TrackerImage {
        id: marie
        height: 45
        width : 45
        source: "Images/Marie.png"
    }
    TrackerImage {
        id: kingMagridd
        height: 45
        width : 45
        source: "Images/King Magridd.png"
    }



    Row {
        id: swordRow
        width: 380
        height: 58
        spacing: globalSpacing
    }

    TrackerImage {
        id: swordOfLife
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Weapon_Sword_of_Life.png"
    }
    TrackerImage {
        id: psychoSword
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Weapon_Psycho_Sword.png"
    }
    TrackerImage {
        id: criticalSword
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Weapon_Critical_Sword.png"
    }
    TrackerImage {
        id: luckyBlade
        width: 45
        height: 45
        source: "Images/SB_Weapon_Lucky_Blade.png"
    }
    TrackerImage {
        id: zantetsuSword
        width: 45
        height: 45
        source: "Images/SB_Weapon_Zantetsu_Sword.png"
    }
    TrackerImage {
        id: spiritSword
        width: 45
        height: 45
        source: "Images/SB_Weapon_Spirit_Sword.png"
    }
    TrackerImage {
        id: recoverySword
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Weapon_Recovery_Sword.png"
    }
    TrackerImage {
        id: soulBlade
        width: 45
        height: 45
        source: "Images/SB_Weapon_The_Soul_Blade.png"
    }


    Row {
        id: armorRow
        width: 371
        height: 55
        spacing: globalSpacing

    }
    TrackerImage {
        id: ironArmor
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Armor_Iron_Armor.png"
    }
    TrackerImage {
        id: iceArmor
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Armor_Ice_Armor.png"
    }
    TrackerImage {
        id: bubbleArmor
        width: 45
        height: 45
        source: "Images/SB_Armor_Bubble_Armor.png"
    }
    TrackerImage {
        id: magicArmor
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Armor_Magic_Armor.png"
    }
    TrackerImage {
        id: mysticArmor
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Armor_Mystic_Armor.png"
    }
    TrackerImage {
        id: lightArmor
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Armor_Light_Armor.png"
    }
    TrackerImage {
        id: elementalMail
        width: 45
        height: 45
        visible: false
        source: "Images/SB_Armor_Elemental_Mail.png"
    }
    TrackerImage {
        id: soulArmor
        width: 45
        height: 45
        source: "Images/SB_Armor_Soul_Armor.png"
    }

    TrackerImage {
        id: magicPhoenix
        width: 45
        height: 45
        source: "Images/SB_Magic_Phoenix.png"
    }
    Row {
        id: itemRow
        width: 310
        height: 45
        spacing: globalSpacing
    }
    TrackerImage {
        id: dreamRod
        width: 45
        height: 45
        source: "Images/SB_Items_Dream_Rod.png"
    }
    TrackerImage {
        id: greenLeaves
        width: 45
        height: 45
        source: "Images/SB_Items_Leaves.png"
    }
    TrackerImage {
        id: leoBrush
        width: 45
        height: 45
        source: "Images/SB_Items_Leos_Brush.png"
    }
    TrackerImage {
        id: mushroomShoes
        width: 45
        height: 45
        source: "Images/SB_Items_Mushroom_Shoes.png"
    }
    TrackerImage {
        id: platinumCard
        width: 45
        height: 45
        source: "Images/SB_Items_Platinum_Card.png"
    }
    TrackerImage {
        id: vipCard
        width: 45
        height: 45
        source: "Images/SB_Items_VIP_Card.png"
    }
    TrackerImage {
        id: doorKey
        width: 45
        height: 45
        source: "Images/SB_Items_Door_Key.png"
    }
    TrackerImage {
        id: mobileKey
        width: 45
        height: 45
        source: "Images/SB_Items_Mobile_Key.png"
    }
    TrackerImage {
        id: goatFood
        width: 45
        height: 45
        source: "Images/SB_Items_Goats_Food.png"
    }
    TrackerImage {
        id: harpSting
        width: 45
        height: 45
        source: "Images/SB_Items_Harp_String.png"
    }
    TrackerImage {
        id: pass
        width: 45
        height: 45
        source: "Images/SB_Items_Pass.png"
    }
    TrackerImage {
        id: mermaidTear
        width: 45
        height: 45
        source: "Images/SB_Items_Mermaids_Tear.png"
    }
    TrackerImage {
        id: moleRibbon
        width: 45
        height: 45
        source: "Images/SB_Items_Moles_Ribbon.png"
    }
    TrackerImage {
        id: bigPearl
        width: 45
        height: 45
        source: "Images/SB_Items_Big_Pearl.png"
    }
    TrackerImage {
        id: thunderRing
        width: 45
        height: 45
        source: "Images/SB_Items_Thunder_Ring.png"
    }
    TrackerImage {
        id: deliciousSeeds
        width: 45
        height: 45
        source: "Images/SB_Items_Delicious_Seeds.png"
    }
    TrackerImage {
        id: catNip
        width: 45
        height: 45
        source: "Images/SB_Items_Actinidiea_Leaves.png"
    }
    TrackerImage {
        id : magicBell
        width: 45
        height: 45
        source: "Images/SB_Items_Magic_Bell.png"

    }

    Row {
        id: phoenixRow
        width: 252
        height: 45
        spacing: globalSpacing
    }
    TrackerImage {
        id: redHotMirror
        width: 45
        height: 45
        source: "Images/SB_Items_Red-Hot_Mirror.png"
    }
    TrackerImage {
        id: redHotStick
        width: 45
        height: 45
        source: "Images/SB_Items_Red-Hot_Stick.png"
    }
    TrackerImage {
        id: redHotBall
        width: 45
        height: 45
        source: "Images/SB_Items_Red-Hot_Ball.png"
    }

    Row {
        id: mehBracelet
        height: 45
        width : 45
        spacing: 1
        TrackerImage {
            id: powerBracelet
            width: 22
            height: 22
            source: "Images/SB_Items_Power_Bracelet.png"
        }
        TrackerImage {
            id: shieldBracelet
            width: 22
            height: 22
            anchors.bottom: parent.bottom
            source: "Images/SB_Items_Shield_Bracelet.png"
        }
    }
    TrackerImage {
        id: superBracelet
        width: 45
        height: 45
        source: "Images/SB_Items_Super_Bracelet.png"
    }

    Row {
        id: counterRow
        y: 95
        width: 285
        height: 56
        anchors.left: parent.left
        anchors.leftMargin: 0
        spacing: width - (stoneCountRow.width + emblemCounter.width)
        Row {
            id: stoneCountRow
            Grid {
                id: stoneGrid
                columns: 3
                height: 45
                spacing: globalSpacing

                TrackerImage {
                    id: brownStone
                    width: 20
                    height: 20
                    source: "Images/SB_Items_Brown_Stone.png"
                }

                TrackerImage {
                    id: greenStone
                    width: 20
                    height: 20
                    source: "Images/SB_Items_Green_Stone.png"
                }
                TrackerImage {
                    id: blueStone
                    width: 20
                    height: 20
                    source: "Images/SB_Items_Blue_Stone.png"
                }
                TrackerImage {
                    id: silverStone
                    width: 20
                    height: 20
                    source: "Images/SB_Items_Silver_Stone.png"
                }
                TrackerImage {
                    id: purpleStone
                    width: 20
                    height: 20
                    owned: false
                    source: "Images/SB_Items_Purple_Stone.png"
                }
                Item {
                    id : pikoItem
                    width : 20
                    height: 20
                    TrackerImage {
                        id: blackStone
                        width: 20
                        height: 20
                        owned: false
                        source: "Images/SB_Items_Black_Stone.png"
                        onOwnedChanged: {
                            console.debug("Piko")
                            if (owned)
                                blackStoneEffect.visible = true;
                            else
                                blackStoneEffect.visible = false;
                        }
                    }
                    BrightnessContrast {
                        anchors.fill: blackStone
                        id : blackStoneEffect
                        brightness: -0.5
                        source : blackStone
                        visible: false
                    }
                }
            }
            ItemCounter {
                id: stoneCounter
                width: 100
                height: 45
                color: "#00ff00"
                fontFamily: iogFont.name
                countMax: 6
                count: 0
            }
        }
        ItemCounter {
            id: emblemCounter
            width: 120
            height: 45
            color: "#00ff00"
            //anchors.right: parent.right
            //anchors.rightMargin: 0
            fontFamily: iogFont.name
            countMax: 8
            source: "Images/SB_Items_Emblem_A.png"
        }


    }

    RowLayout {
        id : modeButtonRow
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        ExclusiveGroup { id: modeButtonGroup }
        RadioButton {
            id: miniRadioButton
            text: qsTr("Mini Mode")
            exclusiveGroup: modeButtonGroup
            style : RadioButtonStyle {
                    label : Text {
                            text : "Mini Mode"
                            color: "white"
                    }
            }
            onCheckedChanged: {
                if (checked == true)
                    setMinimalMode();
            }
        }

        RadioButton {
            id: interRadioButton
            text: qsTr("Intermediate Mod")
            checked: true
            exclusiveGroup: modeButtonGroup
            style : RadioButtonStyle {
                    label : Text {
                            text : "Intermediate Mode"
                            color: "white"
                    }
            }
            onCheckedChanged: {
                if (checked == true)
                    setIntermediateMode();
            }
        }
    }


}

/*##^## Designer {
    D{i:13;invisible:true}D{i:14;invisible:true}D{i:31;invisible:true}D{i:42;invisible:true}
D{i:89;anchors_x:0}
}
 ##^##*/
