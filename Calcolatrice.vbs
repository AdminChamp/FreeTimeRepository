Do
    calcolo=inputbox ("Inserisci un calcolo (STOP per terminare)")
    msgbox eval(calcolo)
Loop until trim(ucase(calcolo))= "STOP"
