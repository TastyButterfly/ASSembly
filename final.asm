TITLE	PRACTICAL5	STRING INPUT AND OUTPUT

.MODEL	SMALL
.STACK	64
.DATA
    ;---------------------------------LOGO---------------------------------------
    
    MAINLOGO1 DB "===============================================", 10, 13, "$"  ; 10 IS LINE FEED, 13 IS CARRIAGE RETURN
    MAINLOGO2 DB "  _  __  ____   ___  _   _    _    _     ____  ", 10, 13, "$"
    MAINLOGO3 DB " | |/ / |  _ \ / _ \| \ | |  / \  | |   / ___| ", 10, 13, "$"
    MAINLOGO4 DB " | ' /  | | | | | | |  \| | / _ \ | |   \___ \ ", 10, 13, "$"
    MAINLOGO5 DB " | . \  | |_| | |_| | |\  |/ ___ \| |___ ___) |", 10, 13, "$"
    MAINLOGO6 DB " |_|\_\ |____/ \___/|_| \_/_/   \_\_____|____/ ", 10, 13, "$"
    MAINLOGO7 DB "===============================================", 10, 13, "$"

    LOGINLOGO1 DB "============================", 10, 13, "$"
    LOGINLOGO2 DB " _     ___   ____ ___ _   _ ", 10, 13, "$"
    LOGINLOGO3 DB "| |   / _ \ / ___|_ _| \ | |", 10, 13, "$" 
    LOGINLOGO4 DB "| |  | | | | |  _ | ||  \| |", 10, 13, "$"
    LOGINLOGO5 DB "| |__| |_| | |_| || || |\  |", 10, 13, "$"
    LOGINLOGO6 DB "|_____\___/ \____|___|_| \_|", 10, 13, "$"
    LOGINLOGO7 DB "============================", 10, 13, "$"

    REGLOGO1 DB "=============================================", 10, 13, "$" 
    REGLOGO2 DB " ____  _____ ____ ___ ____ _____ _____ ____  ", 10, 13, "$"
    REGLOGO3 DB "|  _ \| ____/ ___|_ _/ ___|_   _| ____|  _ \ ", 10, 13, "$"
    REGLOGO4 DB "| |_) |  _|| |  _ | |\___ \ | | |  _| | |_) |", 10, 13, "$"
    REGLOGO5 DB "|  _ <| |__| |_| || | ___) || | | |___|  _ < ", 10, 13, "$"
    REGLOGO6 DB "|_| \_\_____\____|___|____/ |_| |_____|_| \_|", 10, 13, "$"                                         
    REGLOGO7 DB "=============================================", 10, 13, "$"

    MENULOGO1 DB "==========================", 10, 13, "$"
    MENULOGO2 DB " __  __ _____ _   _ _   _ ", 10, 13, "$"
    MENULOGO3 DB "|  \/  | ____| \ | | | | |", 10, 13, "$"
    MENULOGO4 DB "| |\/| |  _| |  \| | | | |", 10, 13, "$"
    MENULOGO5 DB "| |  | | |___| |\  | |_| |", 10, 13, "$"
    MENULOGO6 DB "|_|  |_|_____|_| \_|\___/ ", 10, 13, "$"
    MENULOGO7 DB "==========================", 10, 13, "$"

    SUMMARYOGO1 DB "==============================================================================", 10, 13, "$"
    SUMMARYOGO2 DB "  ___  ____  ____  _____ ____    ____  _   _ __  __ __  __    _    ______   __", 10, 13, "$"
    SUMMARYOGO3 DB " / _ \|  _ \|  _ \| ____|  _ \  / ___|| | | |  \/  |  \/  |  / \  |  _ \ \ / /", 10, 13, "$"
    SUMMARYOGO4 DB "| | | | |_) | | | |  _| | |_) | \___ \| | | | |\/| | |\/| | / _ \ | |_) \ V / ", 10, 13, "$"
    SUMMARYOGO5 DB "| |_| |  _ <| |_| | |___|  _ <   ___) | |_| | |  | | |  | |/ ___ \|  _ < | |  ", 10, 13, "$"
    SUMMARYOGO6 DB " \___/|_| \_\____/|_____|_| \_\ |____/ \___/|_|  |_|_|  |_/_/   \_\_| \_\|_|  ", 10, 13, "$"
    SUMMARYOGO7 DB "==============================================================================", 10, 13, "$"
 
    RECEIPTLOGO1 DB "=======================================", 10, 13, "$"
    RECEIPTLOGO2 DB " ____  _____ ____ _____ ___ ____ _____ ", 10, 13, "$"
    RECEIPTLOGO3 DB "|  _ \| ____/ ___| ____|_ _|  _ \_   _|", 10, 13, "$"
    RECEIPTLOGO4 DB "| |_) |  _|| |   |  _|  | || |_) || |  ", 10, 13, "$"
    RECEIPTLOGO5 DB "|  _ <| |__| |___| |___ | ||  __/ | |  ", 10, 13, "$"
    RECEIPTLOGO6 DB "|_| \_\_____\____|_____|___|_|    |_|  ", 10, 13, "$"
    RECEIPTLOGO7 DB "=======================================", 10, 13, "$"

    
    PAYMENTLOGO1 DB "==========================================", 10, 13, "$"
    PAYMENTLOGO2 DB " ____   _ __   ____  __ _____ _   _ _____ ", 10, 13, "$" 
    PAYMENTLOGO3 DB "|  _ \ / \\ \ / /  \/  | ____| \ | |_   _|", 10, 13, "$"
    PAYMENTLOGO4 DB "| |_) / _ \\ V /| |\/| |  _| |  \| | | |  ", 10, 13, "$"
    PAYMENTLOGO5 DB "|  __/ ___ \| | | |  | | |___| |\  | | |  ", 10, 13, "$"
    PAYMENTLOGO6 DB "|_| /_/   \_\_| |_|  |_|_____|_| \_| |_|  ", 10, 13, "$"
    PAYMENTLOGO7 DB "==========================================", 10, 13, "$"

    ;---------------------------------SELECTION---------------------------------------

    SELECTION1      DB "[1] LOGIN", 10, 13, "$"
    SELECTION2      DB "[2] REGISTER", 10, 13, "$"
    SELECT_EXIT     DB "[Q] EXIT", 10, 13, "$"

    SELECT          DB "SELECT: $"
    TEMP DB ?
  
    ;---------------------------------REG/PSW---------------------------------------

    USERNAME        DB "Enter Username: $"
    PASSWORD        DB "Enter Password (8 Digit): $"

    ;---------------------------------MESSAGES----------------------------------------

    REG_SUCCESS_MESSAGE        DB "Registration Complete!", 10, 13, "$"
    LOG_SUCCESS_MESSAGE        DB "Welcome to K'Donals!", 10, 13, "$"
    EMPTY_NAME                 DB "Name cannot be empty", 10, 13, "$"
    LOG_UNSUCCESS_MESSAGE      DB "Invalid User. Please Register an account", 10, 13, "$"
    CONTINUE_MSG               DB "Press [Any Key] to Continue","$"
    INVALID_MSG                DB "Please Enter 1, 2 or Q", 10, 13, "$"
    EXIT_MSG                   DB "Thank you for using K'Donals!", 10, 13, "$"
    EXIT_CONFIRMATION_MSG      DB "Confirm To Exit? (Y/N)", 10, 13, "$"
    CANCEL_EXIT_MSG            DB "The process has been cancelled", 10, 13, "$"
    INVALID_EXIT_ENTERED_MSG   DB "Please Enter Y or N", 10, 13, "$"
    NO_ENTER_MSG               DB "The password is not allowed to contain the [Enter] or [Tab] keys", 10, 13, "$"
    REENTER_MSG                DB "Enter Again (Y/N) ", 10, 13, "$"

    ;---------------------------------REGISTER----------------------------------------

    NEW_NAME LABEL BYTE
    MAX_INPUT      DB 20
    ACT_INPUT      DB ?                   ; Will hold the actual input length
    REG_NAME       DB 20 DUP(?)           ; Buffer for the registered username

    REG_PSW        DB 8 DUP(?)            ; Buffer for the registered password

    ;---------------------------------LOGIN-------------------------------------------

    NAME_INPUT LABEL BYTE
    MAX            DB 20
    ACT            DB ?                     ; Will hold the actual input length during login
    VAL_NAME       DB 20 DUP(?)             ; Buffer for the login username

    VAL_PSW        DB 8 DUP(?)              ; Buffer for the login password

;---------------------------------BURGER-------------------------------------------
    
    ; Define the burger menu options
    burger_option1 DB "[1] Cheese Burger RM 5", 13, 10, '$'
    burger_option2 DB "[2] Chicken Burger RM 6", 13, 10, '$'
    burger_option3 DB "[3] Grilled Chicken Burger RM 7", 13, 10, '$'
    burger_option_exit DB "[Q] Exit Process", 13, 10, '$'
    burger_prompt DB "Choose (1-3, Q to exit): $", 13, 10, '$'

    ;---------------------------------SET/ A LA CARTE-------------------------------------------
    option1_alacarte DB "[1] A la carte", 13, 10, '$'
    option2_set DB "[2] Set (Price + RM 2)", 13, 10, '$'
    option3_exit DB "[Q] Exit Process", 13, 10, '$'
    prompt_alacarte_or_set DB "Choose (1-2, Q to exit): $", 13, 10, '$'

    ;---------------------------------BURGER DETAIL-------------------------------------------

    cheeseAC DB "Cheese Burger A la Carte",13,10,'$'
    cheeseSET DB "Cheese Burger Set",13,10,'$'
    chickenAC DB "Chicken Burger A la Carte",13,10,'$'
    chickenSET DB "Chicken Burger Set",13,10,'$'
    grilledAC DB "Grilled Chicken A la Carte",13,10,'$'
    grilledSET DB "Grilled Chicken Set",13,10,'$'
    drink1 DB "Cola",13,10,'$'
    drink2 DB "Sprite",13,10,'$'
    side1 DB "French Fries",13,10,'$'
    side2 DB "Corn",13,10,'$'


    ;---------------------------------ADD ON MENU-------------------------------------------
    
    ; Define the drink and side meal menu options
    drink_option1 DB "[1] Cola", 13, 10, '$'
    drink_option2 DB "[2] Sprite", 13, 10, '$'
    side_option1 DB "[1] French Fries", 13, 10, '$'
    side_option2 DB "[2] Corn", 13, 10, '$'
    prompt_drink DB "Choose your drink (1-2): $", 13, 10, '$'
    prompt_side DB "Choose your side meal (1-2): $", 13, 10, '$'

    ; Define the prompt for quantity selection
    prompt_quantity DB "Enter quantity (1-5): $", 13, 10, '$'

    ;---------------------------------USER ENTER-------------------------------------------

    ; Variables for the second burger order
    opt1 DB 0                       ; First burger choice                       
    price1 DB 0                     ; first burger price                               
    drink_choice1 DB 0              ; Drink choice
    side_choice1 DB 0               ; Side meal choice
    quantity1 DB ?                  ; Variable to store quantity

    ; Variables for the second burger order
    opt2 DB 0                       ; Second burger choice
    price2 DB 0                     ; Second burger price
    drink_choice2 DB 0              ; Second drink choice
    side_choice2 DB 0               ; Second side meal choice
    quantity2 DB 0                  ; Store the quantity for the second burger

    ; Define the prompt for next action
    prompt_next_action DB 13,10,"Would you like to order more?(Max one more burger) (Y/N): $"

    ; one more order can add only
    last_order_msg DB "MAX one more burger", 13, 10, '$'

    ;ordered
    ordered_msg DB "Order Successful: $"

    choice DB ?           ; Store user's choice

;----------------------------------ORDER SUMMARY-------------------------------------------

    order DB "Order Summary",10,13,'$'
    pricestr DB "Total Price: RM ",'$'
    quantitystr DB "Quantity: ",'$'
    subtotalstr DB "Subtotal: RM ",'$'
    taxstr DB "SST (6%): RM ",'$'
    confirmstr DB "Would you like to proceed to payment? (Y to pay): ",'$'
    sidestr DB "------",'$'
    subtotal DB 0      ; Placeholder for subtotal
    subtotalDigit DB 2 DUP(0) ; Placeholder for subtotal digit
    taxDigit DB 3 DUP(0)      ; Placeholder for tax digit
    totalDigit DB 4 DUP(0)    ; Placeholder for total digit
    totalRem DW 0             ; Placeholder for total remainder
    sst DW 0           ; Placeholder for SST
    total DW 0         ; Placeholder for total price
    orderBack DB "Order cancelled. All items removed. Press any key to go back to the main menu.",10,13,'$'
;----------------------------------PAYMENT AND RECEIPT-------------------------------------------
    tng DB "TNG eWallet",10,13,'$'
    card DB "Credit/Debit Card",10,13,'$'
    cash DB "Cash",10,13,'$'
    paymentstr DB "Please select your payment method:",10,13,'$'
    offer DB "Surprise! Enjoy RM2 discount for TNG eWallet payment!",10,13,'$'
    paymentSelect DB "Select your payment method (1-3): $"
    invalidPayment DB "Invalid payment method! Try again.",'$'  ; Store user's payment choice
    paymentChoice DB 0 ; Store user's payment choice
    receiptstr DB "Receipt",10,13,'$'
    Line DB "----------------------------------------",10,13,'$' 
    ten DB 10
    hundred DB 100
    hundredDW DW 100
    thousand DW 1000
    paymentMethodstr DB "Payment Method: ",'$'
    finishstr DB "Please bring this receipt to the counter. Press any key to continue.",10,13,'$'
    six DB 6 
;--------------------------------DATE TIME--------------------------------------
day DB 0
month DB 0
year DB 0
hour DB 0
minute DB 0
second DB 0
millenium EQU 2000
dayDigit1 DB 0
dayDigit2 DB 0
monthDigit1 DB 0
monthDigit2 DB 0
yearDigit1 DB 0
yearDigit2 DB 0
hourDigit1 DB 0
hourDigit2 DB 0
minuteDigit1 DB 0
minuteDigit2 DB 0
secondDigit1 DB 0
secondDigit2 DB 0
newline DB 0DH, 0AH, '$'
datestr DB "Date and Time Ordered: ",'$'
;---------------------------------------------------------------------------------

.CODE
MAIN PROC FAR

    MOV AX, @DATA
    MOV DS, AX

    ;---------------------------------MAIN LOGO------------------------------------

    MAIN_MENU: 

        CALL CLEAR_SCREEN

        MOV AH, 02H                               ; Set cursor position
        MOV BH, 00H                               ; Page number 0
        MOV DH, 00H                               ; Set row 
        MOV DL, 11H                               ; Set column 
        INT 10H 

        MOV AH, 09H
        LEA DX, MAINLOGO1                         ; Print Logo
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 01H               
        MOV DL, 11H               
        INT 10H 

        MOV AH, 09H
        LEA DX, MAINLOGO2
        INT 21H

        MOV AH, 02H                               ; design              
        MOV BH, 00H               
        MOV DH, 02H               
        MOV DL, 11H              
        INT 10H 

        MOV AH, 09H
        LEA DX, MAINLOGO3
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 03H               
        MOV DL, 11H              
        INT 10H 

        MOV AH, 09H
        LEA DX, MAINLOGO4
        INT 21H

        MOV AH, 02H                               ; design               
        MOV BH, 00H               
        MOV DH, 04H               
        MOV DL, 11H               
        INT 10H

        MOV AH, 09H
        LEA DX, MAINLOGO5
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H        
        MOV DH, 05H    
        MOV DL, 11H        
        INT 10H

        MOV AH, 09H
        LEA DX, MAINLOGO6
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H       
        MOV DH, 06H          
        MOV DL, 11H     
        INT 10H

        MOV AH, 09H
        LEA DX, MAINLOGO7
        INT 21H

        MOV AH, 02H                               ; design             
        MOV BH, 00H              
        MOV DH, 07H               
        MOV DL, 11H        
        INT 10H

        MOV AH, 09H                               ; MENU LIST
        LEA DX, SELECTION1
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H          
        MOV DH, 08H    
        MOV DL, 11H          
        INT 10H

        MOV AH, 09H
        LEA DX, SELECTION2
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H    
        MOV DH, 09H       
        MOV DL, 11H      
        INT 10H

        MOV AH, 09H
        LEA DX, SELECT_EXIT
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 0BH     
        MOV DL, 11H    
        INT 10H

        MOV AH ,09H
        LEA DX, SELECT
        INT 21H

        MOV AH ,01H                              ; ACCEPT CHAR
        INT 21H

        MOV TEMP, AL                             ; MOVE USER INPUT TO TEMP

        CMP TEMP, '1'                            ; COMPARE AND IF ELSE
        JE LOGIN

        CMP TEMP, '2'
        JE REGISTER

        CMP TEMP, 'Q'
        JE EXIT_CONFIRMATION

        CMP TEMP, 'q'
        JE EXIT_CONFIRMATION

        JMP INVALID_SELECTION

    
    ;---------------------------------INVALID SELECTION--------------------------------------------

    INVALID_SELECTION:
        
        MOV AH, 02H                               ; New line 
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 0DH 
        MOV DL, 1DH     
        INT 10H

        MOV AH, 09H
        LEA DX, INVALID_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H         
        MOV DH, 0FH             
        MOV DL, 1BH       
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                               ; Accept char                            
        INT 21H
 
        CALL MAIN_MENU


    LOGIN:
        CALL LOGIN_PAGE                           ; call login function

    REGISTER:
        CALL REGISTER_PAGE                        ; design


    ;---------------------------------EXIT CONFIRMATION--------------------------------------------
    
    EXIT_CONFIRMATION:

        MOV AH, 02H                               ; design
        MOV BH, 00H             
        MOV DH, 10H              
        MOV DL, 11H            
        INT 10H

        MOV AH ,09H
        LEA DX, EXIT_CONFIRMATION_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 12H     
        MOV DL, 11H    
        INT 10H

        MOV AH ,09H
        LEA DX, SELECT
        INT 21H

        MOV AH ,01H                              ; ACCEPT CHAR
        INT 21H

        MOV TEMP, AL                             ; MOVE USER INPUT TO TEMP

        CMP TEMP, 'Y'                            ; COMPARE AND IF ELSE
        JE EXIT

        CMP TEMP, 'y'                           
        JE EXIT

        CMP TEMP, 'N'                           
        JE CANCEL_EXIT 

        CMP TEMP, 'n'                           
        JE CANCEL_EXIT 

        JMP INVALID_EXIT_ENTERED

    ;---------------------------------INVALID EXIT ENTERED--------------------------------------------

    INVALID_EXIT_ENTERED:
        
        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 14H              
        MOV DL, 1EH             
        INT 10H

        MOV AH, 09H                             
        LEA DX, INVALID_EXIT_ENTERED_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H         
        MOV DH, 14H             
        MOV DL, 1BH       
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH ,01H                              ; ACCEPT CHAR
        INT 21H

        CALL CLEAR_SCREEN

        JMP EXIT_CONFIRMATION  
    
    ;---------------------------------CANCEL EXIT--------------------------------------------

    CANCEL_EXIT:

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 14H              
        MOV DL, 18H             
        INT 10H

        MOV AH, 09H                             
        LEA DX, CANCEL_EXIT_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 16H              
        MOV DL, 1AH             
        INT 10H

        MOV AH, 09H                             
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                               ; Accept Char
        INT 21H

        JMP MAIN_MENU

    ;---------------------------------EXIT--------------------------------------------

    EXIT:

        MOV AH, 02H                               ; design
        MOV BH, 00H             
        MOV DH, 14H              
        MOV DL, 18H            
        INT 10H

        MOV AH, 09H
        LEA DX, EXIT_MSG
        INT 21H

        MOV AX, 4C00H                             ; Terminate program
        INT 21H

    MAIN ENDP

    ;---------------------------------REGISTRATION LOGO------------------------------------

    REGISTER_PAGE PROC                            ; REGISTER PAGE
        CALL CLEAR_SCREEN

        MOV AH, 02H                               ; design
        MOV BH, 00H             
        MOV DH, 00H            
        MOV DL, 11H              
        INT 10H 

        MOV AH, 09H
        LEA DX, REGLOGO1                          ; Logo
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H       
        MOV DH, 01H        
        MOV DL, 11H           
        INT 10H 

        MOV AH, 09H
        LEA DX, REGLOGO2
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 02H              
        MOV DL, 11H              
        INT 10H 

        MOV AH, 09H
        LEA DX, REGLOGO3
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H        
        MOV DH, 03H           
        MOV DL, 11H            
        INT 10H 

        MOV AH, 09H
        LEA DX, REGLOGO4
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 04H           
        MOV DL, 11H           
        INT 10H 

        MOV AH, 09H
        LEA DX, REGLOGO5
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 05H               
        MOV DL, 11H             
        INT 10H 

        MOV AH, 09H
        LEA DX, REGLOGO6
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 06H           
        MOV DL, 11H             
        INT 10H  

        MOV AH, 09H
        LEA DX, REGLOGO7
        INT 21H

    ;---------------------------------REGISTRATION------------------------------------
    
        MOV AH, 02H                               ; design
        MOV BH, 00H             
        MOV DH, 07H         
        MOV DL, 11H            
        INT 10H

        MOV AH, 09H                               ; Prompt for username
        LEA DX, USERNAME
        INT 21H

        MOV AH, 0AH                               ; Accept username input
        LEA DX, NEW_NAME
        INT 21H

        .386                                      ; I WANT USE ADVANCED 386 cpu INSTRUCTION (MOVZX)    
        MOVZX BX, ACT_INPUT                       ; Get the actual input length (Move with Zero-Extend)
        MOV REG_NAME[BX], '$'                     ; store actual as index, place $ into my last string character to terminate the string

        CMP NEW_NAME[1], 0                        ; Check if username is empty (NEW_NAME[1] == 0)
        JE REG_NAME_EMPTY                         ; If empty, jump to REG_NAME_EMPTY

        MOV AH, 02H                               ; New line
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 08H              
        MOV DL, 11H             
        INT 10H

        MOV AH, 09H                               ; Prompt for password
        LEA DX, PASSWORD
        INT 21H

        LEA SI, REG_PSW                           ; Load REG_PSW to SI
        MOV CX, 8                                 ; Accept password input, mask with '*'

    L1:
        MOV AH, 07H                               ; Get character without displaying
        INT 21H

        CMP AL, 08H                               ; Check if Backspace was pressed (08h)
        JE  BACKSPACE_HANDLER                     ; Jump to backspace handling if AL == 08h

        CMP AL, 0DH                               ; Check if Enter was pressed (0Dh)
        JE REGISTER_VALIDATION                    

        CMP AL, 09H                               ; Check if Tab was pressed (09h)
        JE REGISTER_VALIDATION

        MOV [SI], AL                              ; Store the character at SI
                                      
        MOV AH, 02H
        MOV DL, '*'                               ; Display '*' to hide the password character
        INT 21H

        INC SI                                    ; Move to the next character in the buffer
    LOOP L1                                       ; Loop until CX reaches 0

        MOV AH, 02H                               ; New line 
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 0AH           
        MOV DL, 1DH           
        INT 10H

        MOV AH, 09H                               ; Display registration success message
        LEA DX, REG_SUCCESS_MESSAGE
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 0CH              
        MOV DL, 1CH             
        INT 10H

        MOV AH, 09H                             
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                               ; Accept Char
        INT 21H

        JMP MAIN_MENU
        
    RET                                           ; Return

    ;---------------------------------NAME EMPTY-------------------------------------------

    REG_NAME_EMPTY:
        
        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 0BH               
        MOV DL, 1CH           
        INT 10H
        
        MOV AH, 09H                        
        LEA DX, EMPTY_NAME
        INT 21H

        MOV AH, 02H                               ; design              
        MOV BH, 00H             
        MOV DH, 0DH               
        MOV DL, 1AH              
        INT 10H

        MOV AH, 09H                         
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H
        INT 21H

        JMP REGISTER_PAGE
    
    ;---------------------------------IF BACKSPACE ENTERED-------------------------------------------


    BACKSPACE_HANDLER:

        DEC SI                                    ; Move back in the buffer (decrement SI)
        MOV AH, 02H
        MOV DL, 08H                               ; Send backspace to move the cursor left
        INT 21H
        MOV DL, ' '                               ;  Erase the last '*' on the screen by printing a space
        INT 21H
        MOV DL, 08H                               ; Move the cursor left again to the position before the * was deleted.
        INT 21H
        INC CX                                    ; Adjust loop counter to allow new character input

        JMP L1                                    ; Go back to the input loop

    ;---------------------------------REGISTER PAGE LOGIN_VALIDATION-------------------------------------------

    REGISTER_VALIDATION:

        MOV AH, 02H                               ; design
        MOV BH, 00H          
        MOV DH, 0BH               
        MOV DL, 08H               
        INT 10H

        MOV AH, 09H
        LEA DX, NO_ENTER_MSG 
        INT 21H
        
        MOV AH, 02H                               ; design
        MOV BH, 00H            
        MOV DH, 0DH           
        MOV DL, 1AH       
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                     
        INT 21H

        JMP REGISTER_PAGE

    REGISTER_PAGE ENDP                           ; End function

    ;---------------------------------LOGIN MENU-------------------------------------------

    LOGIN_PAGE PROC

        CALL CLEAR_SCREEN

        MOV AH, 02H                               ; design
        MOV BH, 00H           
        MOV DH, 00H          
        MOV DL, 18H           
        INT 10H

        MOV AH, 09H
        LEA DX, LOGINLOGO1
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 01H              
        MOV DL, 18H             
        INT 10H

        MOV AH, 09H
        LEA DX, LOGINLOGO2
        INT 21H

        MOV AH, 02H                               ; design              
        MOV BH, 00H            
        MOV DH, 02H               
        MOV DL, 18H              
        INT 10H

        MOV AH, 09H
        LEA DX, LOGINLOGO3
        INT 21H

        MOV AH, 02H                               ; design            
        MOV BH, 00H               
        MOV DH, 03H            
        MOV DL, 18H              
        INT 10H

        MOV AH, 09H
        LEA DX, LOGINLOGO4
        INT 21H

        MOV AH, 02H                               ; design             
        MOV BH, 00H               
        MOV DH, 04H              
        MOV DL, 18H              
        INT 10H

        MOV AH, 09H
        LEA DX, LOGINLOGO5
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H            
        MOV DH, 05H         
        MOV DL, 18H            
        INT 10H

        MOV AH, 09H
        LEA DX, LOGINLOGO6
        INT 21H

        MOV AH, 02H                               ; design            
        MOV BH, 00H             
        MOV DH, 06H           
        MOV DL, 18H         
        INT 10H

        MOV AH, 09H
        LEA DX, LOGINLOGO7
        INT 21H

    ;---------------------------------LOGIN-------------------------------------------

        MOV AH, 02H                               ; design
        MOV BH, 00H        
        MOV DH, 07H           
        MOV DL, 18H     
        INT 10H

        MOV AH, 09H                               ; Prompt for username
        LEA DX, USERNAME
        INT 21H

        MOV AH, 0AH                               ; Accept login username input
        LEA DX, NAME_INPUT
        INT 21H

        .386                                      ; I WANT USE ADVANCED 386 cpu INSTRUCTION (MOVZX)
        MOVZX BX, ACT                             ; Get the actual input length (Move with Zero-Extend) 
        MOV VAL_NAME[BX], '$'                     ; store actual as index, place $ into my last string character to terminate the string

        CMP NAME_INPUT[1], 0                      ; Check if username is empty
        JE LOGIN_NAME_EMPTY                       ; If empty, jump to LOGIN_NAME_EMPTY

        MOV AH, 02H                               ; New line
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H            
        MOV DH, 08H        
        MOV DL, 18H            
        INT 10H

        MOV AH, 09H                               ; Prompt for password
        LEA DX, PASSWORD
        INT 21H

        LEA SI, VAL_PSW
        MOV CX, 8

    L2:
        MOV AH, 07H                               ; Get character without displaying
        INT 21H

        CMP AL, 08H                               ; Check if Backspace was pressed (08h)
        JE  BACKSPACE_HANDLER                     ; Jump to backspace handling if AL == 08h
 
        CMP AL, 0DH                               ; Check if Enter was pressed (0Dh)
        JE LOGIN_VALIDATION

        CMP AL, 09H                               ; Check if Tab was pressed (09h)
        JE LOGIN_VALIDATION

        MOV [SI], AL                              ; Store the character at SI
        
        MOV AH, 02H
        MOV DL, '*'                               ; Display '*' to hide the password character
        INT 21H
        
        INC SI                                    ; Move to the next character in the buffer

    LOOP L2                                       ; Loop until CX reaches 0

        MOV AH, 02H                               ; New line 
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H

    ;---------------------------------USERNAME COMPARISON-----------------------------

        LEA SI, REG_NAME                         ; SI points to registered username
        LEA DI, VAL_NAME                         ; DI points to login username

    COMPARE_LOOP_USERNAME:
        
        MOV AL, [SI]
        MOV BL, [DI]
        CMP AL, BL
        JNE MISMATCH                             ; If characters don't match, jump to mismatch
        CMP AL, '$'                              ; End of string reached
        JE  COMPARE_LOOP_PASSWORD
        INC SI
        INC DI

    LOOP COMPARE_LOOP_USERNAME

    ;---------------------------------PASSWORD COMPARISON-----------------------------

    COMPARE_LOOP_PASSWORD:

        LEA SI, REG_PSW                        ; SI points to registered password
        LEA DI, VAL_PSW                        ; DI points to login password
        MOV CX, 8                              ; Password length is fixed at 8

        L3:
            MOV AL, [SI]
            MOV BL, [DI]
            CMP AL, BL
            JNE MISMATCH                       ; If characters don't match, jump to mismatch
            INC SI
            INC DI
        LOOP L3

    ;---------------------------------SUCCESS-----------------------------------------

    MATCH_NAME_PSW:
        MOV AH, 02H                               ; New line
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H         
        MOV DH, 0AH              
        MOV DL, 1DH              
        INT 10H

        MOV AH, 09H
        LEA DX, LOG_SUCCESS_MESSAGE
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H             
        MOV DH, 0CH             
        MOV DL, 1BH              
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                     
        INT 21H

        JMP ORDER_MENU

    ;---------------------------------MISMATCH----------------------------------------

    MISMATCH:
        MOV AH, 02H                               ; New line
        MOV DL, 0DH
        INT 21H
        MOV DL, 0AH
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 0AH              
        MOV DL, 16H             
        INT 10H

        MOV AH, 09H
        LEA DX, LOG_UNSUCCESS_MESSAGE
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H         
        MOV DH, 0CH             
        MOV DL, 1BH       
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                               ; Accept char                            
        INT 21H

    ;---------------------------------AFTER MISMATCH SELECTION----------------------------------------

    AFTER_MISMATCH_SELECTION:

        MOV AH, 02H                               ; design
        MOV BH, 00H           
        MOV DH, 0EH            
        MOV DL, 18H             
        INT 10H

        MOV AH, 09H
        LEA DX, REENTER_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H           
        MOV DH, 10H            
        MOV DL, 18H             
        INT 10H
        
        MOV AH ,09H
        LEA DX, SELECT
        INT 21H

        MOV AH ,01H                              ; ACCEPT CHAR
        INT 21H

        MOV TEMP, AL                             ; MOVE USER INPUT TO TEMP

        CMP TEMP, 'y'                            ; COMPARE AND IF ELSE
        JE LOGIN_PAGE

        CMP TEMP, 'Y'                           
        JE LOGIN_PAGE

        CMP TEMP, 'n'                           
        JE MAIN_MENU

        CMP TEMP, 'Y'                           
        JE MAIN_MENU

        JMP INVALID_CONTINUE_SELECTION

    ;---------------------------------INVALID EXIT ENTERED--------------------------------------------

    INVALID_CONTINUE_SELECTION:
        
        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 12H              
        MOV DL, 1EH             
        INT 10H

        MOV AH, 09H                             
        LEA DX, INVALID_EXIT_ENTERED_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H         
        MOV DH, 14H             
        MOV DL, 1BH       
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH ,01H                              ; ACCEPT CHAR
        INT 21H

        CALL CLEAR_SCREEN

        JMP AFTER_MISMATCH_SELECTION  


    ;---------------------------------NAME EMPTY-------------------------------------------

    LOGIN_NAME_EMPTY:

        MOV AH, 02H                               ; design
        MOV BH, 00H             
        MOV DH, 0AH              
        MOV DL, 1CH            
        INT 10H
        
        MOV AH, 09H                        
        LEA DX, EMPTY_NAME
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H            
        MOV DH, 0CH          
        MOV DL, 1AH             
        INT 10H

        MOV AH, 09H                        
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H
        INT 21H

        JMP LOGIN_PAGE

    ;---------------------------------LOGIN PAGE LOGIN_VALIDATION-------------------------------------------

    LOGIN_VALIDATION:

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 0BH               
        MOV DL, 08H              
        INT 10H

        MOV AH, 09H
        LEA DX, NO_ENTER_MSG 
        INT 21H
        
        MOV AH, 02H                               ; design              
        MOV BH, 00H          
        MOV DH, 0DH           
        MOV DL, 18H           
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                     
        INT 21H

        JMP LOGIN_PAGE

    LOGIN_PAGE ENDP                               ; End function

    ;---------------------------------CLEAR SCREEN----------------------------------------

    CLEAR_SCREEN PROC
        MOV AX, 0600H                           ; Scroll up entire screen
        MOV BH, 70H                             ; Attribute byte for black text on white background
        MOV CX, 00H                             ; Start at the top-left
        MOV DX, 184FH                           ; End at the bottom-right
        INT 10H                                 ; Call BIOS interrupt to clear the screen

        RET                                     ; Return

    CLEAR_SCREEN ENDP                           ; End function

    ;---------------------------------ORDER EXIT CONFIRMATION--------------------------------------------
    
    ORDER_EXIT_CONFIRMATION:
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        MOV AH, 02H                               ; design
        MOV BH, 00H             
        MOV DH, 10H              
        MOV DL, 11H            
        INT 10H

        MOV AH ,09H
        LEA DX, EXIT_CONFIRMATION_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H              
        MOV DH, 12H     
        MOV DL, 11H    
        INT 10H

        MOV AH ,09H
        LEA DX, SELECT
        INT 21H

        MOV AH ,01H                              ; ACCEPT CHAR
        INT 21H

        MOV TEMP, AL                             ; MOVE USER INPUT TO TEMP

        CMP TEMP, 'Y'                            ; COMPARE AND IF ELSE
        JE EXIT

        CMP TEMP, 'y'                           
        JE EXIT

        CMP TEMP, 'N'                           
        JE ORDER_CANCEL_EXIT 

        CMP TEMP, 'n'                           
        JE ORDER_CANCEL_EXIT 

        JMP ORDER_INVALID_EXIT_ENTERED

    ;---------------------------------ORDER CANCEL EXIT--------------------------------------------

    ORDER_CANCEL_EXIT:

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 14H              
        MOV DL, 18H             
        INT 10H

        MOV AH, 09H                             
        LEA DX, CANCEL_EXIT_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 16H              
        MOV DL, 1AH             
        INT 10H

        MOV AH, 09H                             
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH, 01H                               ; Accept Char
        INT 21H

        JMP ORDER_MENU

    ;---------------------------------ORDER INVALID EXIT ENTERED--------------------------------------------

    ORDER_INVALID_EXIT_ENTERED:
        
        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 14H              
        MOV DL, 1EH             
        INT 10H

        MOV AH, 09H                             
        LEA DX, INVALID_EXIT_ENTERED_MSG
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H         
        MOV DH, 14H             
        MOV DL, 1BH       
        INT 10H

        MOV AH, 09H
        LEA DX, CONTINUE_MSG
        INT 21H

        MOV AH ,01H                              ; ACCEPT CHAR
        INT 21H

        CALL CLEAR_SCREEN

        JMP ORDER_EXIT_CONFIRMATION

    ;---------------------------------ORDER MENU----------------------------------------

    ORDER_MENU:
        CALL CLEAR_SCREEN      ; Clear the screen
        CALL DisplayLogo      ; Display the menulogo at the top (centered)
        CALL SelectBurger     ; Show the menu and ask for user input (centered)
        MOV opt1, 0           ; Set the default value for opt1
        MOV opt2,0            ; Set the default value for opt2
        ; Handle valid inputs
        CMP choice, '1'
        JE JumpToCheese
        CMP choice, '2'
        JE JumpToChicken
        CMP choice, '3'
        JE JumpToGrilled
        CMP choice, 'Q'       ; Exit if choice is Q
        JE JumpToExitPart1
        CMP choice, 'q'       ; Exit if choice is Q
        JE JumpToExitPart1

        JMP ORDER_MENU         ; In case of any issue, go back to menu

    JumpToCheese:
        JMP CONTINUE_ORDER_CHEESE_PART1

    JumpToChicken:
        JMP CONTINUE_ORDER_CHICKEN_PART1

    JumpToGrilled:
        JMP CONTINUE_ORDER_GRILLED_PART1

    ; Break the jump for exit process
    JumpToExitPart1:
        JMP DISPLAY_EXIT_AND_EXIT_PART1

    DISPLAY_EXIT_AND_EXIT_PART1:
        ; Break large jumps into smaller ones, for the exit process
        JMP DISPLAY_EXIT_AND_EXIT_PART2

    DISPLAY_EXIT_AND_EXIT_PART2 PROC
        MOV AH, 02h
        MOV DL, choice
        INT 21h
        JMP DISPLAY_EXIT_AND_EXIT_PART3
    RET
    DISPLAY_EXIT_AND_EXIT_PART2 ENDP

    DISPLAY_EXIT_AND_EXIT_PART3:
        JMP ORDER_EXIT_CONFIRMATION

    ;-----------------------------------
    CONTINUE_ORDER_CHEESE_PART1 PROC
        ; When the user selects Cheese Burger, show second menu
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        JMP CONTINUE_ORDER_CHEESE_PART2
    RET
    CONTINUE_ORDER_CHEESE_PART1 ENDP

    CONTINUE_ORDER_CHEESE_PART2 PROC
        CALL DisplaySecondMenu  ; Show the A la carte or Set options
        CALL GetSecondChoice    ; Get user choice for A la carte or Set

        ; Handle A la carte or Set choices for Cheese Burger
        CMP choice, '1'         ; If A la carte
        JE SET_ALACARTE_CHEESE
        CMP choice, '2'         ; If Set
        JE SET_ORDER_CHEESE
        CMP choice, 'Q'         ; Exit process, jump back to ORDER_MENU
        JE ORDER_MENU
        CMP choice, 'q'         ; Exit process, jump back to ORDER_MENU
        JE ORDER_MENU

        JMP CONTINUE_ORDER_CHEESE_PART1 ; Repeat if invalid input
    RET
    CONTINUE_ORDER_CHEESE_PART2 ENDP

    SET_ALACARTE_CHEESE PROC

        MOV opt1,1        ; Copy item to opt1
        MOV price1, 5        ; Set price for a la carte
        ; Set empty val for drink and side meal
        MOV drink_choice1,0       ; Set drink_choice1 to empty
        MOV side_choice1,0        ; Set side_choice1 to empty
        CALL GetQuantity       ; Prompt the user for quantity

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 12H              
        MOV DL, 10H             
        INT 10H

        MOV AH, 09H                             
        LEA DX, ordered_msg
        INT 21H

        MOV AH, 09H                             
        LEA DX, cheeseAC
        INT 21H

        CALL NextActionPrompt  ; Prompt user for next action (order more or payment)
    RET
    SET_ALACARTE_CHEESE ENDP


    SET_ORDER_CHEESE PROC
        MOV opt1,4       ; Copy set item to opt1
        MOV price1, 7        ; Set price for set
        CALL CLEAR_SCREEN       ; Clear the screen
        CALL DisplayLogo       ; Display the logo again

        ; Display drink and side meal options
        CALL DisplayThirdMenu  ; Prompt the user for drink and side meal

        ; Now prompt for quantity after drink and side selection
        CALL GetQuantity       ; Prompt the user for quantity

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 12H              
        MOV DL, 10H             
        INT 10H

        MOV AH, 09H                             
        LEA DX, ordered_msg
        INT 21H

        MOV AH, 09H                             
        LEA DX, cheeseSET
        INT 21H

        ; After completing the order, ask if the user wants to order more or proceed to payment
        CALL NextActionPrompt
    RET
    SET_ORDER_CHEESE ENDP


    ;-----------------------------------
    CONTINUE_ORDER_CHICKEN_PART1 PROC
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        JMP CONTINUE_ORDER_CHICKEN_PART2
    RET
    CONTINUE_ORDER_CHICKEN_PART1 ENDP

    CONTINUE_ORDER_CHICKEN_PART2 PROC
        CALL DisplaySecondMenu
        CALL GetSecondChoice

        CMP choice, '1'
        JE SET_ALACARTE_CHICKEN
        CMP choice, '2'
        JE SET_ORDER_CHICKEN
        CMP choice, 'Q'
        JE ORDER_MENU        ; Jump back to order menu if user chooses exit
        CMP choice, 'q'
        JE ORDER_MENU        ; Jump back to order menu if user chooses exit

        JMP CONTINUE_ORDER_CHICKEN_PART1
    RET
    CONTINUE_ORDER_CHICKEN_PART2 ENDP

    SET_ALACARTE_CHICKEN PROC
        MOV opt1, 2
        MOV price1, 6
        ; Set empty val for drink and side meal as no selection for a la carte
        MOV drink_choice1,0
        MOV side_choice1,0
        CALL GetQuantity       ; Prompt the user for quantity

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 12H              
        MOV DL, 10H             
        INT 10H

        MOV AH, 09H                             
        LEA DX, ordered_msg
        INT 21H

        MOV AH, 09H                             
        LEA DX, chickenAC
        INT 21H

        CALL NextActionPrompt  ; Prompt user for next action (order more or payment)
    RET
    SET_ALACARTE_CHICKEN ENDP

    SET_ORDER_CHICKEN PROC
        MOV opt1, 5
        MOV price1, 8
        CALL CLEAR_SCREEN      ; Clear the screen
        CALL DisplayLogo       ; Display the logo again
        CALL DisplayThirdMenu  ; Ask for drink and side
        CALL GetQuantity       ; Prompt the user for quantity

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 12H              
        MOV DL, 10H             
        INT 10H

        MOV AH, 09H                             
        LEA DX, ordered_msg
        INT 21H

        MOV AH, 09H                             
        LEA DX, chickenSET
        INT 21H

        CALL NextActionPrompt  ; Prompt user for next action (order more or payment)
    RET
    SET_ORDER_CHICKEN ENDP

    ;-----------------------------------
    CONTINUE_ORDER_GRILLED_PART1 PROC
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        JMP CONTINUE_ORDER_GRILLED_PART2
    RET
    CONTINUE_ORDER_GRILLED_PART1 ENDP

    CONTINUE_ORDER_GRILLED_PART2 PROC
        CALL DisplaySecondMenu
        CALL GetSecondChoice

        CMP choice, '1'
        JE SET_ALACARTE_GRILLED
        CMP choice, '2'
        JE SET_ORDER_GRILLED
        CMP choice, 'Q'
        JMP ORDER_MENU        ; Jump back to order menu if user chooses exit
        CMP choice, 'q'
        JMP ORDER_MENU        ; Jump back to order menu if user chooses exit

        JMP CONTINUE_ORDER_GRILLED_PART1
    RET
    CONTINUE_ORDER_GRILLED_PART2 ENDP

    SET_ALACARTE_GRILLED PROC
        MOV opt1,3
        MOV price1, 7
        ; Set empty val for drink and side meal as no selection for a la carte
        MOV drink_choice1,0
        MOV side_choice1,0
        CALL GetQuantity       ; Prompt the user for quantity

        MOV AH, 02H                               ; design
        MOV BH, 00H               
        MOV DH, 12H              
        MOV DL, 10H             
        INT 10H

        MOV AH, 09H                             
        LEA DX, ordered_msg
        INT 21H

        MOV AH, 09H                             
        LEA DX, grilledAC
        INT 21H

        CALL NextActionPrompt  ; Prompt user for next action (order more or payment)
    RET
    SET_ALACARTE_GRILLED ENDP

    SET_ORDER_GRILLED PROC
        MOV opt1, 6
        MOV price1, 9
        CALL CLEAR_SCREEN       ; Clear the screen
        CALL DisplayLogo       ; Display the logo again
        CALL DisplayThirdMenu  ; Ask for drink and side
        CALL GetQuantity       ; Prompt the user for quantity

        MOV AH, 09H                             
        LEA DX, ordered_msg
        INT 21H

        MOV AH, 09H                             
        LEA DX, grilledSET
        INT 21H

        CALL NextActionPrompt  ; Prompt user for next action (order more or payment)
    RET
    SET_ORDER_GRILLED ENDP

    SECONDORDERCALLER PROC
        CALL CONTINUE_ORDER_SECOND_BURGER
    SECONDORDERCALLER ENDP
    ;--------------------------------------
    ; Prompt for Next Action (Order more or payment)
    ;--------------------------------------
    NextActionPrompt PROC

        MOV AH, 02H                               ; design              
        MOV BH, 00H          
        MOV DH, 13H           
        MOV DL, 1CH           
        INT 10H

        MOV AH, 09h
        LEA DX, prompt_next_action
        INT 21h

        CALL GetNextActionInput       ; Ask the user if they want to continue ordering or proceed to payment

        CMP choice, 'Y'         ; If user chooses to continue ordering
        JE SECONDORDERCALLER

        CMP choice, 'y'         ; If user chooses to continue ordering
        JE SECONDORDERCALLER

        CMP choice, 'N'         ; If user chooses to proceed to payment
        JE PrintOrderSummary         ;<---- change to ur processpayment here

        CMP choice, 'n'         ; If user chooses to proceed to payment
        JE PrintOrderSummary        ;<---- change to ur processpayment here

        JMP NextActionPrompt    ; Invalid input, ask again
    RET
    NextActionPrompt ENDP

    GetNextActionInput PROC
        MOV AH, 00h
        INT 16h
        CMP AL, 'Y'
        JE ValidNextAction
        CMP AL, 'y'
        JE ValidNextAction
        CMP AL, 'N'
        JE ValidNextAction
        CMP AL, 'n'
        JE ValidNextAction
        JMP GetNextActionInput   ; If invalid input, prompt again

    ValidNextAction:
        MOV choice, AL
        RET
    GetNextActionInput ENDP

    ;--------------------------------------
    ; Display Menulogo Function
    ;--------------------------------------
    DisplayLogo PROC
        ; Display each line of the logo
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 02h
        MOV DL, 1Ah
        INT 10h
        MOV AH, 09h
        LEA DX, menulogo1
        INT 21h

        MOV AH, 02h
        MOV DH, 03h
        MOV DL, 1Ah
        INT 10h
        MOV AH, 09h
        LEA DX, menulogo2
        INT 21h

        MOV AH, 02h
        MOV DH, 04h
        MOV DL, 1Ah
        INT 10h
        MOV AH, 09h
        LEA DX, menulogo3
        INT 21h

        MOV AH, 02h
        MOV DH, 05h
        MOV DL, 1Ah
        INT 10h
        MOV AH, 09h
        LEA DX, menulogo4
        INT 21h

        MOV AH, 02h
        MOV DH, 06h
        MOV DL, 1Ah
        INT 10h
        MOV AH, 09h
        LEA DX, menulogo5
        INT 21h

        MOV AH, 02h
        MOV DH, 07h
        MOV DL, 1Ah
        INT 10h
        MOV AH, 09h
        LEA DX, menulogo6
        INT 21h

        MOV AH, 02h
        MOV DH, 08h
        MOV DL, 1Ah
        INT 10h
        MOV AH, 09h
        LEA DX, menulogo7
        INT 21h

        RET
    DisplayLogo ENDP

    ;--------------------------------------
    ; Print String Function
    ;--------------------------------------
    PrintString PROC
        MOV AH, 09h
        INT 21h
        RET
    PrintString ENDP

    ;--------------------------------------
    ; Get User Input Function
    ;--------------------------------------
    GetUserInput PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1'
        JE ValidInput
        CMP AL, '2'
        JE ValidInput
        CMP AL, '3'
        JE ValidInput
        CMP AL, 'Q'
        JE ValidInput
        CMP AL, 'q'
        JE ValidInput
        JMP GetUserInput
    ValidInput:
        MOV choice, AL
        RET
    GetUserInput ENDP

    ;--------------------------------------
    ; Select Burger Menu Function
    ;--------------------------------------
    SelectBurger PROC
        ; Display the burger options
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ah
        MOV DL, 1Ah
        INT 10h
        LEA DX, burger_option1
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Bh
        MOV DL, 1Ah
        INT 10h
        LEA DX, burger_option2
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ch
        MOV DL, 1Ah
        INT 10h
        LEA DX, burger_option3
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Dh
        MOV DL, 1Ah
        INT 10h
        LEA DX, burger_option_exit
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Eh
        MOV DL, 1Ah
        INT 10h
        LEA DX, burger_prompt
        CALL PrintString

        ; Get user input and validate
        CALL GetUserInput
        RET
    SelectBurger ENDP

    ;--------------------------------------
    ; Display Second Menu (A la carte / Set) Function
    ;--------------------------------------
    DisplaySecondMenu PROC
        ; Display A la carte and Set options
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ah           ; Adjust to position the second menu correctly below the logo
        MOV DL, 1Ah
        INT 10h
        LEA DX, option1_alacarte
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Bh
        MOV DL, 1Ah
        INT 10h
        LEA DX, option2_set
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ch
        MOV DL, 1Ah
        INT 10h
        LEA DX, option3_exit
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Dh
        MOV DL, 1Ah
        INT 10h
        LEA DX, prompt_alacarte_or_set
        CALL PrintString
        RET
    DisplaySecondMenu ENDP

    ;--------------------------------------
    ; Get Second Choice (A la carte / Set) Function
    ;--------------------------------------
    GetSecondChoice PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1'
        JE ValidSecondInput
        CMP AL, '2'
        JE ValidSecondInput
        CMP AL, 'Q'
        JE ValidSecondInput
        CMP AL, 'q'
        JE ValidSecondInput
        JMP GetSecondChoice
    ValidSecondInput:
        MOV choice, AL
        RET
    GetSecondChoice ENDP

    ;--------------------------------------
    ; Display Third Menu (Drink / Side Meal) Function
    ;--------------------------------------
    DisplayThirdMenu PROC
        ; Display drink options
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ah           ; Adjust position
        MOV DL, 1Ah
        INT 10h
        LEA DX, drink_option1
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Bh
        MOV DL, 1Ah
        INT 10h
        LEA DX, drink_option2
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ch
        MOV DL, 1Ah
        INT 10h
        LEA DX, prompt_drink
        CALL PrintString

        CALL GetThirdDrink    ; Get drink choice

        ; Display side meal options
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Dh
        MOV DL, 1Ah
        INT 10h
        LEA DX, side_option1
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Eh
        MOV DL, 1Ah
        INT 10h
        LEA DX, side_option2
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Fh
        MOV DL, 1Ah
        INT 10h
        LEA DX, prompt_side
        CALL PrintString

        CALL GetThirdSide   ; Get side choice

        RET
    DisplayThirdMenu ENDP

    DisplayThirdMenu2 PROC
      MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ah           ; Adjust position
        MOV DL, 1Ah
        INT 10h
        LEA DX, drink_option1
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Bh
        MOV DL, 1Ah
        INT 10h
        LEA DX, drink_option2
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Ch
        MOV DL, 1Ah
        INT 10h
        LEA DX, prompt_drink
        CALL PrintString

        CALL GetThirdDrink2    ; Get drink choice

        ; Display side meal options
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Dh
        MOV DL, 1Ah
        INT 10h
        LEA DX, side_option1
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Eh
        MOV DL, 1Ah
        INT 10h
        LEA DX, side_option2
        CALL PrintString

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 0Fh
        MOV DL, 1Ah
        INT 10h
        LEA DX, prompt_side
        CALL PrintString

        CALL GetThirdSide2   ; Get side choice

        RET
    DisplayThirdMenu2 ENDP


    ;--------------------------------------
    ; Get Third Choice (Drink / Side Meal) Function
    ;--------------------------------------
    GetThirdDrink PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1' ;jump to valid if 1 or 2
        JE ValidDrink
        CMP AL, '2'
        JE ValidDrink
        MOV AH,09h
        JMP GetThirdDrink ;repeat function
    ValidDrink:
        MOV AH, 02h
        MOV DL, AL
        INT 21h
        SUB AL, '0'
        MOV drink_choice1, AL
        RET
    GetThirdDrink ENDP

    GetThirdSide PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1'
        JE ValidSide
        CMP AL, '2'
        JE ValidSide
        MOV AH,09h
        JMP GetThirdSide
    ValidSide:
        MOV AH, 02h
        MOV DL, AL
        INT 21h
        SUB AL, '0'
        MOV side_choice1, AL
        RET
    GetThirdSide ENDP

    GetThirdDrink2 PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1' ;jump to valid if 1 or 2
        JE ValidDrink2
        CMP AL, '2'
        JE ValidDrink2
        JMP GetThirdDrink2 ;repeat function
    ValidDrink2:
        MOV AH, 02h
        MOV DL, AL
        INT 21h
        SUB AL, '0'
        MOV drink_choice2, AL
        RET
    GetThirdDrink2 ENDP

    GetThirdSide2 PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1'
        JE ValidSide2
        CMP AL, '2'
        JE ValidSide2
        MOV AH,09h
        JMP GetThirdSide2
    ValidSide2:
        MOV AH, 02h
        MOV DL, AL
        INT 21h
        SUB AL, '0'
        MOV side_choice2, AL
        RET
    GetThirdSide2 ENDP

    ;--------------------------------------
    ; Get Quantity (1-5) Function
    ;--------------------------------------
    GetQuantity PROC
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 10h           ; Position for quantity prompt
        MOV DL, 1Ah
        INT 10h
        LEA DX, prompt_quantity
        CALL PrintString

        CALL GetUserQuantity   ; Get user input for quantity

        RET
    GetQuantity ENDP

    ;--------------------------------------
    ; Get User Quantity Input Function
    ;--------------------------------------
    GetUserQuantity PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1'
        JE ValidQuantity
        CMP AL, '2'
        JE ValidQuantity
        CMP AL, '3'
        JE ValidQuantity
        CMP AL, '4'
        JE ValidQuantity
        CMP AL, '5'
        JE ValidQuantity
        JMP GetUserQuantity   ; If invalid, prompt again

    ValidQuantity:
        MOV AH, 02h
        MOV DL, AL
        INT 21h
        MOV quantity1, AL      ; Store the valid quantity
        RET
    GetUserQuantity ENDP

    ;-----------------------------------
    ; NextActionPromptSecondOrder: Proceed to payment <chenlun do ah>
    ;-----------------------------------
    NextActionPromptSecondOrder PROC
        JMP PrintOrderSummary
    RET
    NextActionPromptSecondOrder ENDP

    EXITCALLER PROC
        CALL ORDER_EXIT_CONFIRMATION
    EXITCALLER ENDP

    ;-----------------------------------
    ; CONTINUE_ORDER_SECOND_BURGER: Handles the flow of the second burger order
    ;-----------------------------------
    CONTINUE_ORDER_SECOND_BURGER PROC
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        CALL SelectBurger    ; Show burger menu for the second order
        CALL GetUserInput    ; Get user input (1, 2, 3 for burgers, 8 to exit)
        
        ; Handle valid inputs
        CMP choice, '1'
        JE JumpToCheeseSecond
        CMP choice, '2'
        JE JumpToChickenSecond
        CMP choice, '3'
        JE JumpToGrilledSecond
        CMP choice, 'Q'
        JE EXITCALLER
        CMP choice, 'q'
        JE EXITCALLER
        
        JMP CONTINUE_ORDER_SECOND_BURGER    ; If invalid, repeat
    RET
    CONTINUE_ORDER_SECOND_BURGER ENDP


    ;-----------------------------------
    ; JumpToCheeseSecond, JumpToChickenSecond, JumpToGrilledSecond
    ; Redirect to second burger processing with A la carte or Set selection
    ;-----------------------------------
    JumpToCheeseSecond:
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        CALL ProcessCheeseSecond
        CALL NextActionPromptSecondOrder

    JumpToChickenSecond:
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        CALL ProcessChickenSecond
        CALL NextActionPromptSecondOrder

    JumpToGrilledSecond:
        CALL CLEAR_SCREEN
        CALL DisplayLogo
        CALL ProcessGrilledSecond
        CALL NextActionPromptSecondOrder

    ;-----------------------------------
    ; ProcessCheeseSecond: Handles the second Cheese Burger order
    ;-----------------------------------
    ProcessCheeseSecond PROC
        CALL DisplaySecondMenu  ; Show A la carte or Set options
        CALL GetSecondChoice    ; Get user choice for A la carte or Set

        ; Handle A la carte or Set choices for Cheese Burger
        CMP choice, '1'
        JE SetAlacarteCheeseSecond
        CMP choice, '2'
        JE SetOrderCheeseSecond
        JMP ProcessCheeseSecond ; Repeat if invalid input
    RET
    ProcessCheeseSecond ENDP

    SetAlacarteCheeseSecond PROC
        MOV opt2, 1        ; Copy string to opt2 for Cheese Burger A la carte
        MOV price2, 5         ; Set price for the second Cheese Burger A la carte
        MOV drink_choice2, 0   ; Set drink_choice2 to empty
        MOV side_choice2, 0    ; Set side_choice2 to empty
        CALL GetQuantityForSecondOrder
        CALL NextActionPromptSecondOrder
    RET
    SetAlacarteCheeseSecond ENDP

    SetOrderCheeseSecond PROC
        MOV opt2, 4         ; Copy string to opt2 for Cheese Burger Set
        MOV price2, 7         ; Set price for the second Cheese Burger Set
        CALL CLEAR_SCREEN
        CALL DisplayLogo        ; Display the logo again

        ; Display drink and side meal options
        CALL DisplayThirdMenu2  ; Ask for drink and side
        CALL GetQuantityForSecondOrder
        CALL NextActionPromptSecondOrder
    RET
    SetOrderCheeseSecond ENDP

    ;-----------------------------------
    ; ProcessChickenSecond: Handles the second Chicken Burger order
    ;-----------------------------------
    ProcessChickenSecond PROC
        CALL DisplaySecondMenu  ; Show A la carte or Set options
        CALL GetSecondChoice    ; Get user choice for A la carte or Set

        ; Handle A la carte or Set choices for Chicken Burger
        CMP choice, '1'
        JE SetAlacarteChickenSecond
        CMP choice, '2'
        JE SetOrderChickenSecond
        JMP ProcessChickenSecond ; Repeat if invalid input
    RET
    ProcessChickenSecond ENDP

    SetAlacarteChickenSecond PROC
        MOV opt2, 2        ; Copy string to opt2 for Chicken Burger A la carte
        MOV price2, 6         ; Set price for the second Chicken Burger A la carte
        MOV drink_choice2, 0   ; Set drink_choice2 to empty
        MOV side_choice2, 0    ; Set side_choice2 to empty
        CALL GetQuantityForSecondOrder
        CALL NextActionPromptSecondOrder
    RET
    SetAlacarteChickenSecond ENDP

    SetOrderChickenSecond PROC
        MOV opt2,5       ; Copy string to opt2 for Chicken Burger Set
        MOV price2, 8         ; Set price for the second Chicken Burger Set
        CALL CLEAR_SCREEN
        CALL DisplayLogo        ; Display the logo again

        ; Display drink and side meal options
        CALL DisplayThirdMenu2  ; Ask for drink and side
        CALL GetQuantityForSecondOrder
        CALL NextActionPromptSecondOrder
    RET
    SetOrderChickenSecond ENDP

    ;-----------------------------------
    ; ProcessGrilledSecond: Handles the second Grilled Chicken Burger order
    ;-----------------------------------
    ProcessGrilledSecond PROC
        CALL DisplaySecondMenu  ; Show A la carte or Set options
        CALL GetSecondChoice    ; Get user choice for A la carte or Set

        ; Handle A la carte or Set choices for Grilled Chicken Burger
        CMP choice, '1'
        JE SetAlacarteGrilledSecond
        CMP choice, '2'
        JE SetOrderGrilledSecond
        JMP ProcessGrilledSecond ; Repeat if invalid input
    RET
    ProcessGrilledSecond ENDP

    SetAlacarteGrilledSecond PROC
        MOV opt2,3         ; Copy string to opt2 for Grilled Chicken Burger A la carte
        MOV price2, 7        ; Set price for the second Grilled Chicken Burger A la carte
        MOV drink_choice2, 0   ; Set drink_choice2 to empty
        MOV side_choice2, 0    ; Set side_choice2 to empty
        CALL GetQuantityForSecondOrder
        CALL NextActionPromptSecondOrder
    RET
    SetAlacarteGrilledSecond ENDP

    SetOrderGrilledSecond PROC
        MOV opt2,6        ; Copy string to opt2 for Grilled Chicken Burger Set
        MOV price2, 9         ; Set price for the second Grilled Chicken Burger Set
        CALL CLEAR_SCREEN
        CALL DisplayLogo        ; Display the logo again

        ; Display drink and side meal options
        CALL DisplayThirdMenu2  ; Ask for drink and side
        CALL GetQuantityForSecondOrder
        CALL NextActionPromptSecondOrder
    RET
    SetOrderGrilledSecond ENDP

    ;-----------------------------------
    ; GetQuantityForSecondOrder: Get quantity for second burger order
    ;-----------------------------------
    GetQuantityForSecondOrder PROC
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 10h           ; Position for quantity prompt
        MOV DL, 1Ah
        INT 10h
        LEA DX, prompt_quantity
        CALL PrintString

        CALL GetUserQuantityForSecondOrder   ; Get user input for quantity
        RET
    GetQuantityForSecondOrder ENDP

    ;-----------------------------------
    ; GetUserQuantityForSecondOrder: Validates and stores quantity for second burger
    ;-----------------------------------
    GetUserQuantityForSecondOrder PROC
        MOV AH, 00h
        INT 16h
        CMP AL, '1'
        JE ValidQuantitySecond
        CMP AL, '2'
        JE ValidQuantitySecond
        CMP AL, '3'
        JE ValidQuantitySecond
        CMP AL, '4'
        JE ValidQuantitySecond
        CMP AL, '5'
        JE ValidQuantitySecond
        JMP GetUserQuantityForSecondOrder   ; If invalid, prompt again

    ValidQuantitySecond:
        MOV AH, 02h
        MOV DL, AL
        INT 21h
        MOV quantity2, AL      ; Store the valid quantity in quantity2
        RET
    GetUserQuantityForSecondOrder ENDP

    ;-----------------------------------
    DisplayOrder PROC
        MOV AH,09H
        CMP opt1, 1
        JE cheese_alacarteJMP
        CMP opt1, 2
        JE chicken_alacarteJMP
        CMP opt1, 3
        JE grilled_alacarteJMP
        CMP opt1, 4
        JE cheese_setJMP
        CMP opt1, 5
        JE chicken_setJMP
        CMP opt1, 6
        JE grilled_setJMP
        JMP endOrder
        cheese_alacarteJMP:
        LEA DX, cheeseAC
        INT 21h
        JMP endOrder
        chicken_alacarteJMP:
        LEA DX, chickenAC
        INT 21h
        JMP endOrder
        grilled_alacarteJMP:
        LEA DX, grilledAC
        INT 21h
        JMP endOrder
        cheese_setJMP:
        LEA DX, cheeseSET
        INT 21h
        JMP endOrder
        chicken_setJMP:
        LEA DX, chickenSET
        INT 21h
        JMP endOrder
        grilled_setJMP:
        LEA DX, grilledSET
        INT 21h
        JMP endOrder
    DisplayOrder ENDP

    DisplayOrder2 PROC
        MOV AH,09H
        CMP opt2, 1
        JE cheese_alacarte2JMP
        CMP opt2, 2
        JE chicken_alacarte2JMP
        CMP opt2, 3
        JE grilled_alacarte2JMP
        CMP opt2, 4
        JE cheese_set2JMP
        CMP opt2, 5
        JE chicken_set2JMP
        CMP opt2, 6
        JE grilled_set2JMP
        JMP endOrder2
        cheese_alacarte2JMP:
        LEA DX, cheeseAC
        INT 21h
        JMP endOrder2
        chicken_alacarte2JMP:
        LEA DX, chickenAC
        INT 21h
        JMP endOrder2
        grilled_alacarte2JMP:
        LEA DX, grilledAC
        INT 21h
        JMP endOrder2
        cheese_set2JMP:
        LEA DX, cheeseSET
        INT 21h
        JMP endOrder2
        chicken_set2JMP:
        LEA DX, chickenSET
        INT 21h
        JMP endOrder2
        grilled_set2JMP:
        LEA DX, grilledSET
        INT 21h
        JMP endOrder2
    DisplayOrder2 ENDP

    DisplaySide1 PROC
        MOV AH,09H
        CMP drink_choice1,1
        JE coke
        CMP drink_choice1,2
        JE sprite
        JMP skipside1
        coke:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink1
        INT 21h
        JMP endDrink1
        sprite:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink2
        INT 21h
        endDrink1:
        CMP side_choice1, 1
        JE fries
        CMP side_choice1, 2
        JE corn
        JMP skipside1
        fries:
        LEA DX, sidestr
        INT 21H
        LEA DX, side1
        INT 21h
        JMP skipside1
        corn:
        LEA DX, sidestr
        INT 21H
        LEA DX, side2
        INT 21h
        JMP skipside1
    DisplaySide1 ENDP
 
    DisplaySide2 PROC
        MOV AH,09H
        CMP drink_choice2,1
        JE coke2
        CMP drink_choice2,2
        JE sprite2
        JMP skipside2
        coke2:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink1
        INT 21h
        JMP endDrink2
        sprite2:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink2
        INT 21h
        endDrink2:
        CMP side_choice2, 1
        JE fries2
        CMP side_choice2, 2
        JE corn2
        JMP skipside2
        fries2:
        LEA DX, sidestr
        INT 21H
        LEA DX, side1
        INT 21h
        JMP skipside2
        corn2:
        LEA DX, sidestr
        INT 21H
        LEA DX, side2
        INT 21h
        JMP skipside2
    DisplaySide2 ENDP


    RDisplayOrder PROC
        MOV AH,09H
        CMP opt1, 1
        JE Rcheese_alacarteJMP
        CMP opt1, 2
        JE Rchicken_alacarteJMP
        CMP opt1, 3
        JE Rgrilled_alacarteJMP
        CMP opt1, 4
        JE Rcheese_setJMP
        CMP opt1, 5
        JE Rchicken_setJMP
        CMP opt1, 6
        JE Rgrilled_setJMP
        JMP RendOrder
        Rcheese_alacarteJMP:
        LEA DX, cheeseAC
        INT 21h
        JMP RendOrder
        Rchicken_alacarteJMP:
        LEA DX, chickenAC
        INT 21h
        JMP endOrder
        Rgrilled_alacarteJMP:
        LEA DX, grilledAC
        INT 21h
        JMP RendOrder
        Rcheese_setJMP:
        LEA DX, cheeseSET
        INT 21h
        JMP RendOrder
        Rchicken_setJMP:
        LEA DX, chickenSET
        INT 21h
        JMP RendOrder
        Rgrilled_setJMP:
        LEA DX, grilledSET
        INT 21h
        JMP RendOrder
    RDisplayOrder ENDP

    RDisplayOrder2 PROC
        MOV AH,09H
        CMP opt2, 1
        JE Rcheese_alacarte2JMP
        CMP opt2, 2
        JE Rchicken_alacarte2JMP
        CMP opt2, 3
        JE Rgrilled_alacarte2JMP
        CMP opt2, 4
        JE Rcheese_set2JMP
        CMP opt2, 5
        JE Rchicken_set2JMP
        CMP opt2, 6
        JE Rgrilled_set2JMP
        JMP RendOrder2
        Rcheese_alacarte2JMP:
        LEA DX, cheeseAC
        INT 21h
        JMP RendOrder2
        Rchicken_alacarte2JMP:
        LEA DX, chickenAC
        INT 21h
        JMP RendOrder2
        Rgrilled_alacarte2JMP:
        LEA DX, grilledAC
        INT 21h
        JMP RendOrder2
        Rcheese_set2JMP:
        LEA DX, cheeseSET
        INT 21h
        JMP RendOrder2
        Rchicken_set2JMP:
        LEA DX, chickenSET
        INT 21h
        JMP RendOrder2
        Rgrilled_set2JMP:
        LEA DX, grilledSET
        INT 21h
        JMP RendOrder2
    RDisplayOrder2 ENDP

    RDisplaySide1 PROC
        MOV AH,09H
        CMP drink_choice1,1
        JE Rcoke
        CMP drink_choice1,2
        JE Rsprite
        JMP Rskipside1
        Rcoke:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink1
        INT 21h
        JMP RendDrink1
        Rsprite:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink2
        INT 21h
        RendDrink1:
        CMP side_choice1, 1
        JE Rfries
        CMP side_choice1, 2
        JE Rcorn
        JMP Rskipside1
        Rfries:
        LEA DX, sidestr
        INT 21H
        LEA DX, side1
        INT 21h
        JMP Rskipside1
        Rcorn:
        LEA DX, sidestr
        INT 21H
        LEA DX, side2
        INT 21h
        JMP Rskipside1
    RDisplaySide1 ENDP
 
    RDisplaySide2 PROC
        MOV AH,09H
        CMP drink_choice2,1
        JE Rcoke2
        CMP drink_choice2,2
        JE Rsprite2
        JMP Rskipside2
        Rcoke2:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink1
        INT 21h
        JMP RendDrink2
        Rsprite2:
        LEA DX, sidestr
        INT 21H
        LEA DX, drink2
        INT 21h
        RendDrink2:
        CMP side_choice2, 1
        JE Rfries2
        CMP side_choice2, 2
        JE Rcorn2
        JMP Rskipside2
        Rfries2:
        LEA DX, sidestr
        INT 21H
        LEA DX, side1
        INT 21h
        JMP Rskipside2
        Rcorn2:
        LEA DX, sidestr
        INT 21H
        LEA DX, side2
        INT 21h
        JMP Rskipside2
    RDisplaySide2 ENDP
    ;--------------------------------------
    PrintOrderSummary PROC
        CALL CLEAR_SCREEN
        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 00H              
        MOV DL, 01H                    
        INT 10H

        MOV subtotal, 0
        
        MOV AH, 09h
        LEA DX, SUMMARYOGO1
        INT 21h

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 01H              
        MOV DL, 01H                    
        INT 10H

        MOV AH, 09h
        LEA DX, SUMMARYOGO2
        INT 21h

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 02H              
        MOV DL, 01H                    
        INT 10H

        MOV AH, 09h
        LEA DX, SUMMARYOGO3
        INT 21h

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 03H              
        MOV DL, 01H                    
        INT 10H

        MOV AH, 09h
        LEA DX, SUMMARYOGO4
        INT 21h

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 04H              
        MOV DL, 01H                    
        INT 10H

        MOV AH, 09h
        LEA DX, SUMMARYOGO5
        INT 21h

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 05H              
        MOV DL, 01H                    
        INT 10H

        MOV AH, 09h
        LEA DX, SUMMARYOGO6
        INT 21h

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 06H              
        MOV DL, 01H                    
        INT 10H

        MOV AH, 09h
        LEA DX, SUMMARYOGO7
        INT 21h

        CALL DisplayOrder
        endOrder:
        CMP drink_choice1, 0
        JE skipside1
        CALL DisplaySide1
        skipside1:

        MOV AH,02h
        MOV DL, 0AH
        INT 21h

        MOV DL, 0DH
        INT 21h

        MOV AH, 09h
        LEA DX, quantitystr
        INT 21h

        MOV AH, 02h
        MOV DL, quantity1
        INT 21h

        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AL, price1
        MOV BL, quantity1
        SUB BL, '0'
        MUL BL
        ADD subtotal, AL
        CMP choice, 'n'
        JE seconditemskip
        CMP choice, 'N'
        JE seconditemskip
        CALL DisplayOrder2
        endOrder2:
        CMP drink_choice2, 0
        JE skipside2
        CALL DisplaySide2
        skipside2:
        MOV AH,02h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AH, 09h
        LEA DX, quantitystr
        INT 21h
        MOV AH, 02h
        MOV DL, quantity2
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        XOR AH,AH
        MOV AL, price2
        MOV BL, quantity2
        SUB BL, '0'
        MUL BL
        ADD subtotal, AL
        seconditemskip:
        MOV AH, 02H
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AH, 09h
        LEA DX, subtotalstr
        INT 21h
        MOV AL, subtotal
        XOR AH,AH
        MOV BL, ten
        DIV BL
        MOV subtotalDigit[1], AL
        MOV subtotalDigit[0], AH
        MOV AH, 02h
        CMP subtotalDigit[1], 0
        JE skipFirstDigit
        MOV DL, subtotalDigit[1]
        ADD DL, '0'
        INT 21h
        skipFirstDigit:
        MOV DL, subtotalDigit[0]
        ADD DL, '0'
        INT 21h
        MOV DL, '.'
        INT 21h
        MOV DL, '0'
        INT 21h
        MOV DL, '0'
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AH, 09h
        LEA DX, confirmstr
        INT 21h
        MOV AH, 01h
        INT 21h
        CMP AL, 'Y'
        JE payment
        CMP AL, 'y'
        JE payment
        MOV AH, 02h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AH, 09h
        LEA DX, orderBack
        INT 21H
        MOV AH,01h
        INT 21h
        JMP ORDER_MENU
        RET
    PrintOrderSummary ENDP

     PAYMENT PROC
        CALL CLEAR_SCREEN
        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 00H 
        MOV DL, 13H     
        INT 10H

        MOV AH, 09H
        LEA DX, PAYMENTLOGO1
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 01H 
        MOV DL, 13H     
        INT 10H

        MOV AH, 09H
        LEA DX, PAYMENTLOGO2
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 02H 
        MOV DL, 13H     
        INT 10H

        MOV AH, 09H
        LEA DX, PAYMENTLOGO3
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 03H 
        MOV DL, 13H     
        INT 10H

        MOV AH, 09H
        LEA DX, PAYMENTLOGO4
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 04H 
        MOV DL, 13H     
        INT 10H

        MOV AH, 09H
        LEA DX, PAYMENTLOGO5
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 05H 
        MOV DL, 13H     
        INT 10H

        MOV AH, 09H
        LEA DX, PAYMENTLOGO6
        INT 21H

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 06H 
        MOV DL, 13H     
        INT 10H

        MOV AH, 09H
        LEA DX, PAYMENTLOGO7
        INT 21H   

        MOV AH, 02H                               ; design
        MOV BH, 00H
        MOV DH, 08H 
        MOV DL, 00H     
        INT 10H 

        MOV AH, 09h
        LEA DX, paymentstr
        INT 21h
        MOV AH, 02h
        MOV DL, '['
        INT 21h
        MOV AH, 02h
        MOV DL, '1'
        INT 21h
        MOV DL, ']'
        INT 21h
        MOV AH, 09h
        LEA DX, tng
        INT 21h
        MOV AH, 02h
        MOV DL, '['
        INT 21h
        MOV AH, 02h
        MOV DL, '2'
        INT 21h
        MOV DL, ']'
        INT 21h
        MOV AH, 09h
        LEA DX, card
        INT 21h
        MOV AH, 02h
        MOV DL, '['
        INT 21h
        MOV AH, 02h
        MOV DL, '3'
        INT 21h
        MOV DL, ']'
        INT 21h
        MOV AH, 09h
        LEA DX, cash
        INT 21h
        LEA DX, paymentSelect
        INT 21h
        MOV AH, 01h
        INT 21h
        MOV paymentChoice, AL
        CMP paymentChoice, '1'
        JE receipt
        CMP paymentChoice, '2'
        JE receipt
        CMP paymentChoice, '3'
        JE receipt
        MOV AH, 09h
        LEA DX, invalidPayment
        JMP PAYMENT
        RET
    PAYMENT ENDP
    
    RECEIPT PROC
        CALL CLEAR_SCREEN
        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 00h
        MOV DL, 14h
        INT 10h

        MOV AH, 09h
        LEA DX, RECEIPTLOGO1
        INT 21h

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 01h
        MOV DL, 14h
        INT 10h

        MOV AH, 09h
        LEA DX, RECEIPTLOGO2
        INT 21h

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 02h
        MOV DL, 14h
        INT 10h

        MOV AH, 09h
        LEA DX, RECEIPTLOGO3
        INT 21h

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 03h
        MOV DL, 14h
        INT 10h

        MOV AH, 09h
        LEA DX, RECEIPTLOGO4
        INT 21h

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 04h
        MOV DL, 14h
        INT 10h

        MOV AH, 09h
        LEA DX, RECEIPTLOGO5
        INT 21h

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 05h
        MOV DL, 14h
        INT 10h

        MOV AH, 09h
        LEA DX, RECEIPTLOGO6
        INT 21h

        MOV AH, 02h
        MOV BH, 00h
        MOV DH, 06h
        MOV DL, 14h
        INT 10h

        MOV AH, 09h
        LEA DX, RECEIPTLOGO7
        INT 21h

        CALL RDisplayOrder
        RendOrder:
        CMP drink_choice1, 0
        JE Rskipside1
        CALL RDisplaySide1
        Rskipside1:
        MOV AH, 09h
        LEA DX, quantitystr
        INT 21h
        MOV AH, 02h
        MOV DL, quantity1
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        CMP choice, 'n'
        JE Rseconditemskip
        CMP choice, 'N'
        JE Rseconditemskip
        CALL RDisplayOrder2
        Rendorder2:
        CMP drink_choice2, 0
        JE Rskipside2
        CALL RDisplaySide2
        Rskipside2:
        MOV AH, 09h
        LEA DX, quantitystr
        INT 21h
        MOV AH, 02h
        MOV DL, quantity2
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        Rseconditemskip:
        MOV AH, 02H
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AH, 09h
        LEA DX, paymentMethodstr
        INT 21h
        CMP paymentChoice, '1'
        JE tngJMP
        CMP paymentChoice, '2'
        JE cardJMP
        CMP paymentChoice, '3'
        JE cashJMP
        JMP totalCalc
        tngJMP:
        LEA DX, tng
        INT 21h
        LEA DX, offer
        INT 21h
        MOV AL, subtotal
        SUB AL, 02H
        MOV subtotal, AL
        JMP totalCalc
        cardJMP:
        LEA DX, card
        INT 21h
        JMP totalCalc
        cashJMP:
        LEA DX, cash
        INT 21h
        totalCalc:
        MOV AH, 09h
        LEA DX, subtotalstr
        INT 21h
        MOV AL, subtotal
        XOR AH,AH
        MOV BL, ten
        DIV BL
        MOV subtotalDigit[1], AL
        MOV subtotalDigit[0], AH
        MOV AH, 02h
        CMP subtotalDigit[1], 0
        JE RskipFirstDigit
        MOV DL, subtotalDigit[1]
        ADD DL, '0'
        INT 21h
        RskipFirstDigit:
        MOV DL, subtotalDigit[0]
        ADD DL, '0'
        INT 21h
        MOV DL, '.'
        INT 21h
        MOV DL, '0'
        INT 21h
        MOV DL, '0'
        INT 21h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AH, 09h
        LEA DX, taxstr
        INT 21h
        MOV AL, subtotal
        XOR AH, AH
        MOV BL, 06H
        MUL BL
        MOV sst, AX
        MOV AX, sst
        XOR DX, DX                ; Clear DX for division
        MOV BX, hundredDW
        DIV BX
        MOV taxDigit[0], AL
        MOV AL, DL
        MOV BL, ten
        DIV BL
        MOV taxDigit[1], AL
        MOV taxDigit[2], AH
        MOV AH, 02H
        MOV DL, taxDigit[0]
        ADD DL, 30H
        INT 21H
        MOV DL, '.'
        INT 21H
        MOV DL, taxDigit[1]
        ADD DL, 30H
        INT 21H
        MOV DL, taxDigit[2]
        ADD DL, 30H
        INT 21H
       MOV AL, subtotal
        XOR AH, AH
        MOV BL, 100
        MUL BL
        MOV total, AX
        MOV AX, sst
        ADD total, AX
        MOV AX, total
        XOR DX, DX
        MOV BX, thousand
        DIV BX
        MOV totalDigit[0], AL
        MOV totalRem, DX
        MOV AX, totalRem
        XOR DX, DX
        MOV BX, hundredDW
        DIV BX
        MOV totalDigit[1], AL
        MOV totalRem, DX
        MOV AX, totalRem
        XOR DX, DX
        MOV BL, ten
        DIV BL
        MOV totalDigit[2], AL
        MOV totalDigit[3], AH
        MOV AH, 02h
        MOV DL, 0AH
        INT 21h
        MOV DL, 0DH
        INT 21h
        MOV AH, 09H
        LEA DX, pricestr
        INT 21H
        MOV AH, 02H
        CMP totalDigit[0], 0
        JE skipFirstDigit2
        MOV DL, totalDigit[0]
        ADD DL, 30H
        INT 21H
        skipFirstDigit2:
        MOV DL, totalDigit[1]
        ADD DL, 30H
        INT 21H
        MOV DL, '.'
        INT 21H
        MOV DL, totalDigit[2]
        ADD DL, 30H
        INT 21H
        MOV DL, totalDigit[3]
        ADD DL, 30H
        INT 21H
        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H
        MOV AH, 2AH
        INT 21H
        ; AL = day, DH = month, CX = year
        MOV day, DL
        MOV month, DH
        SUB CX, millenium
        MOV year, CL
        ; Get the current time
        MOV AH, 2CH
        INT 21H
        ; CH = hour, CL = minute, DH = second
        ; Store the time values
        MOV hour, CH
        MOV minute, CL
        MOV second, DH
        MOV AL, day
        CALL ConvertToDigits
        MOV dayDigit1, AL
        MOV dayDigit2, AH
        MOV AL, month
        CALL ConvertToDigits
        MOV monthDigit1, AL
        MOV monthDigit2, AH
        MOV AL, year
        CALL ConvertToDigits
        MOV yearDigit1, AL
        MOV yearDigit2, AH
        MOV AL, hour
        CALL ConvertToDigits
        MOV hourDigit1, AL
        MOV hourDigit2, AH
        MOV AL, minute
        CALL ConvertToDigits
        MOV minuteDigit1, AL
        MOV minuteDigit2, AH
        MOV AL, second
        CALL ConvertToDigits
        MOV secondDigit1, AL
        MOV secondDigit2, AH
        MOV AH, 09h
        LEA DX, datestr
        INT 21H
        MOV AH, 02H
        MOV DL, dayDigit1
        INT 21H
        MOV DL, dayDigit2
        INT 21H
        MOV DL, '/'
        INT 21H
        MOV DL, monthDigit1
        INT 21H
        MOV DL, monthDigit2
        INT 21H
        MOV DL, '/'
        INT 21H
        MOV DL, yearDigit1
        INT 21H
        MOV DL, yearDigit2
        INT 21H
        MOV DL, ' '
        INT 21H
        MOV DL, hourDigit1
        INT 21H
        MOV DL, hourDigit2
        INT 21H
        MOV DL, ':'
        INT 21H
        MOV DL, minuteDigit1
        INT 21H
        MOV DL, minuteDigit2
        INT 21H
        MOV DL, ':'
        INT 21H
        MOV DL, secondDigit1
        INT 21H
        MOV DL, secondDigit2
        INT 21H
        MOV AH, 09H
        LEA DX, newline
        INT 21H
        MOV AH, 09H
        LEA DX, finishstr
        INT 21H
        MOV AH, 01H
        INT 21H
        JMP ORDER_EXIT_CONFIRMATION
        RET
    RECEIPT ENDP
    ConvertToDigits PROC
    XOR AH, AH
    MOV BL, 10
    DIV BL
    ADD AL, 30H
    ADD AH, 30H
    RET
    ConvertToDigits ENDP

END MAIN