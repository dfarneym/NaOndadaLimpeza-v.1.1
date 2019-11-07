local base = {}
    base.moneys = {}
    base.qtdMoney = 12

        base.moneys[1]={}
        base.moneys[1].name = "garrafa"
        base.moneys[1].path = "ui/elements/garrafa.png"
        base.moneys[1].value = 100
        base.moneys[1].type = "money"

        base.moneys[2]={}
        base.moneys[2].name = "banana"
        base.moneys[2].path = "ui/elements/banana.png"
        base.moneys[2].value = 50
        base.moneys[2].type = "money"

        base.moneys[3]={}
        base.moneys[3].name = "coco"
        base.moneys[3].path = "ui/elements/coco.png"
        base.moneys[3].value = 50
        base.moneys[3].type = "money"

        base.moneys[4]={}
        base.moneys[4].name = "pneu"
        base.moneys[4].path = "ui/elements/pneu.png"
        base.moneys[4].value = 200
        base.moneys[4].type = "money"

        base.moneys[5]={}
        base.moneys[5].name = "sacola"
        base.moneys[5].path = "ui/elements/sacola.png"
        base.moneys[5].value = 150
        base.moneys[5].type = "money"

        base.moneys[6]={}
        base.moneys[6].name = "LataDeLixoCheia"
        base.moneys[6].path = "ui/elements/LataDeLixo.png"
        base.moneys[6].value = 1
        base.moneys[6].type = "money"

        base.moneys[7]={}
        base.moneys[7].name = "lxo1"
        base.moneys[7].path = "ui/elements/lxo1.png"
        base.moneys[7].value = 80
        base.moneys[7].type = "money"

        base.moneys[8]={}
        base.moneys[8].name = "lxo2"
        base.moneys[8].path = "ui/elements/lxo2.png"
        base.moneys[8].value = 80
        base.moneys[8].type = "money"

        base.moneys[9]={}
        base.moneys[9].name = "lxo3"
        base.moneys[9].path = "ui/elements/lxo3.png"
        base.moneys[9].value = 80
        base.moneys[9].type = "money"

        base.moneys[10]={}
        base.moneys[10].name = "lxo4"
        base.moneys[10].path = "ui/elements/lxo4.png"
        base.moneys[10].value = 80
        base.moneys[10].type = "money"

        base.moneys[11]={}
        base.moneys[11].name = "LataDeOleo"
        base.moneys[11].path = "ui/elements/LataDeOleo.png"
        base.moneys[11].value = 400
        base.moneys[11].type = "money"

        base.moneys[12]={}
        base.moneys[12].name = "manchaOleo"
        base.moneys[12].path = "ui/elements/manchaOleo.png"
        base.moneys[12].value = 300
        base.moneys[12].type = "money"

    base.bills = {}
    base.qtdBill = 3

        base.bills[1]={}
        base.bills[1].name = "LataDeLixo2"
        base.bills[1].path = "ui/elements/LataDeLixo2.png"
        base.bills[1].value = 100
        base.bills[1].type = "bill"    

        base.bills[2]={}
        base.bills[2].name = "cadeira"
        base.bills[2].path = "ui/elements/cadeira.png"
        base.bills[2].value = 1
        base.bills[2].type = "bill"

        base.bills[3]={}
        base.bills[3].name = "guardaSol"
        base.bills[3].path = "ui/elements/guardaSol.png"
        base.bills[3].value = 1000000
        base.bills[3].type = "bill"       

    base.levels = {}       
        base.levels[1] = {}
            base.levels[1].background = "ui/background/beach.png"
            base.levels[1].numBackgroundsNear = 2
            base.levels[1].backgroundNear = {}

                base.levels[1].backgroundNear[1] = {}
                base.levels[1].backgroundNear[1].path = "ui/background/fundo.png"
                base.levels[1].backgroundNear[1].y = 150
                
                base.levels[1].backgroundNear[2] = {}
                base.levels[1].backgroundNear[2].path = "ui/background/fundo.png"
                base.levels[1].backgroundNear[2].y = 150

                base.levels[1].backgroundNear[3] = {}
                base.levels[1].backgroundNear[3].path = "ui/background/fundo.png"
                base.levels[1].backgroundNear[3].y = 150


return base