import QtQuick 2.0

import USB2Snes 1.0
import "qrc:/extrajs.js" as Helper // Some extra javascript function



Rectangle {
    width: 200
    height: 200
    Text {
        id: bossKilledText
        width: 200
        height: 200
    }

    USB2Snes {
         id : usb2snes
         objectName: "usb2snes" // Don't change this
         windowTitle: "Super Metroid random boss order" // The WindowTitle
         timer : 1000 // The interval timer value in ms. A frame is around 16 ms

         /* Main Code is actually here */
         property var bossKilled: {
            "bombtorizo" : false,
            "sporespawn" : false,
             "kraid" : false,
             "crocomire" : false,
             "phantoon" : false,
             "botwoon" : false,
             "draygon" : false,
             "goldentorizo" : false,
             "ridley" : false,
             "motherbrain" : false
         }
         property int numberOfBossKilled: 0

         onTimerTick: {

             /*BossMenu:
                 DW #$107E, #$D828, #$0004, #str_bombtorizo
                 DW #$107E, #$D828, #$0200, #str_spospo
                 DW #$107E, #$D828, #$0100, #str_kraid
                 DW #$107E, #$D82A, #$0100, #str_phantoon
                 DW #$107E, #$D82C, #$0002, #str_botwoon
                 DW #$107E, #$D82C, #$0001, #str_draygon
                 DW #$107E, #$D82A, #$0002, #str_crocomire
                 DW #$107E, #$D82A, #$0004, #str_gt
                 DW #$107E, #$D82A, #$0001, #str_ridley*/
           var mem828 = memory.readUnsignedWord(0x7ED828)
           var mem82A = memory.readUnsignedWord(0x7ED82A)
           var mem82C = memory.readUnsignedWord(0x7ED82C)
           var tickBossKilled = 0;
           if (mem828 & 0x0004 == 0x0004) {
               tickBossKilled++
               bossKilled["bombtorizo"] = true;
           }
           if (mem828 & 0x0200 == 0x0200) {
               tickBossKilled++
               bossKilled["sporespawn"] = true;
           }
           if (mem828 & 0x0100 == 0x01000) {
               tickBossKilled++
               bossKilled["kraid"] = true;
           }

           if (mem82A & 0x0100 == 0x0100) {
               tickBossKilled++
               bossKilled["phantoon"] = true;
           }
           if (mem82A & 0x0002 == 0x0002) {
               tickBossKilled++
               bossKilled["crocomire"] = true;
           }
           if (mem82A & 0x0004 == 0x0004) {
               tickBossKilled++
               bossKilled["goldentorizo"] = true;
           }
           if (mem82A & 0x0001 == 0x0001) {
               tickBossKilled++
               bossKilled["ridley"] = true;
           }

           if (mem82C & 0x0002 == 0x0002) {
               tickBossKilled++
               bossKilled["botwoon"] = true;
           }
           if (mem82C & 0x0001 == 0x0001) {
               tickBossKilled++
               bossKilled["draygon"] = true;
           }
           if (tickBossKilled > numberOfBossKilled) {

           }

           igTime.text = Helper.sprintf("%02d:%02d:%02d", hours, minutes, seconds);
         }
        }
}
