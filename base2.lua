local base = {}
    base.moneys = {}
    base.qtdMoney = 9 


        base.moneys[1]={}
        base.moneys[1].name = "pneu"
        base.moneys[1].path = "ui/elements/pneu.png"
        base.moneys[1].value = 200
        base.moneys[1].type = "money"

        base.moneys[2]={}
        base.moneys[2].name = "sacola"
        base.moneys[2].path = "ui/elements/sacola.png"
        base.moneys[2].value = 150
        base.moneys[2].type = "money"

        base.moneys[3]={}
        base.moneys[3].name = "LatasDeOleo4"
        base.moneys[3].path = "ui/elements/LatasDeOleo4.png"
        base.moneys[3].value = 1
        base.moneys[3].type = "money"

        base.moneys[4]={}
        base.moneys[4].name = "LataDeOleo3"
        base.moneys[4].path = "ui/elements/LataDeOleo3.png"
        base.moneys[4].value = 400
        base.moneys[4].type = "money"
      
        base.moneys[5]={}
        base.moneys[5].name = "petroleo"
        base.moneys[5].path = "ui/elements/petroleo.png"
        base.moneys[5].value = 600
        base.moneys[5].type = "money"       

        base.moneys[6]={}
        base.moneys[6].name = "LataDeOleo2"
        base.moneys[6].path = "ui/elements/LataDeOleo2.png"
        base.moneys[6].value = 400
        base.moneys[6].type = "money"

        base.moneys[7]={}
        base.moneys[7].name = "manchaOleo"
        base.moneys[7].path = "ui/elements/manchaOleo.png"
        base.moneys[7].value = 300
        base.moneys[7].type = "money"

        base.moneys[8]={}
        base.moneys[8].name = "garrafa"
        base.moneys[8].path = "ui/elements/garrafa.png"
        base.moneys[8].value = 200
        base.moneys[8].type = "money"

        base.moneys[9]={}
        base.moneys[9].name = "lxo4"
        base.moneys[9].path = "ui/elements/lxo4.png"
        base.moneys[9].value = 160
        base.moneys[9].type = "money"

    base.bills = {}
    base.qtdBill = 4

        base.bills[1]={}
        base.bills[1].name = "barco2"
        base.bills[1].path = "ui/elements/barco2.png"
        base.bills[1].value = 100
        base.bills[1].type = "bill"    

        base.bills[2]={}
        base.bills[2].name = "barco1"
        base.bills[2].path = "ui/elements/barco1.png"
        base.bills[2].value = 1
        base.bills[2].type = "bill"

        base.bills[3]={}
        base.bills[3].name = "barcoPirata"
        base.bills[3].path = "ui/elements/barcoPirata.png"
        base.bills[3].value = 1000000
        base.bills[3].type = "bill"  
        
        base.bills[4]={}
        base.bills[4].name = "ancora"
        base.bills[4].path = "ui/elements/ancora.png"
        base.bills[4].value = 200
        base.bills[4].type = "bill"

    base.levels = {}       
        base.levels[1] = {}
            base.levels[1].background = "ui/background/FundoMar.png"
            base.levels[1].numBackgroundsNear = 2
            base.levels[1].backgroundNear = {}

                base.levels[1].backgroundNear[1] = {}
                base.levels[1].backgroundNear[1].path = "ui/background/PeixinhoNaAgua.png"
                base.levels[1].backgroundNear[1].y = 150
                
                base.levels[1].backgroundNear[2] = {}
                base.levels[1].backgroundNear[2].path = "ui/background/PeixinhoNaAgua.png"
                base.levels[1].backgroundNear[2].y = 150

                base.levels[1].backgroundNear[3] = {}
                base.levels[1].backgroundNear[3].path = "ui/background/PeixinhoNaAgua.png"
                base.levels[1].backgroundNear[3].y = 150
        

        

return base