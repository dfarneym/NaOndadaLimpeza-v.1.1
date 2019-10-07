local base = {}
    base.moneys = {}
    base.qtdMoney = 5

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
        base.moneys[3].value = 1
        base.moneys[3].type = "money"

        base.moneys[4]={}
        base.moneys[4].name = "pneu"
        base.moneys[4].path = "ui/elements/pneu.png"
        base.moneys[4].value = 200
        base.moneys[4].type = "money"


        base.moneys[5]={}
        base.moneys[5].name = "sacola"
        base.moneys[5].path = "ui/elements/sacola.png"
        base.moneys[5].value = 50
        base.moneys[5].type = "money"



    base.bills = {}
    base.qtdBill = 4

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

        base.bills[4]={}
        base.bills[4].name = "LataDeLixo"
        base.bills[4].path = "ui/elements/LataDeLixo.png"
        base.bills[4].value = 1000000
        base.bills[4].type = "bill"

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