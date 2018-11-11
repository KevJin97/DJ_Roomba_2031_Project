; ECE2031 Example array-handling SCOMP code
; It displays, side by side, an angle between 0-360 degrees and 1000*cos(angle).
; It uses an array which is preloaded with 1000*cos(x) for x=0-359
        ORG     &H000   ; Begin program at x000

Start:	LOAD	INDEX	; Get the index into the array (initially 0), so we can display it
		OUT     SSEG1	; Display on the left four digits of the DE2 7-segment displays
		ADDI	DATA	; This is tricky. Instead of adding the contents of DATA, we are adding its base address (offsetting into the array)
		STORE	D_ADR	; Now, we have the desired address of DATA(INDEX) in the accumulator. Store it.
		ILOAD	D_ADR	; The ILOAD instruction does not load what is in D_ADR, as LOAD would do. It uses D_ADR as the ADDRESS of what to load.
		OUT		SSEG2 	; Display the array contents to the right of the array index
		CALL    WAIT	; Give the user a chance to admire it
		LOAD	INDEX	; Increment the index to move to the next array location
		ADDI	1
		STORE	INDEX	; Store the incremented index
        JUMP    Start 	; Loop forever

Wait:   OUT     TIMER
Wloop:  IN      TIMER
        SUB     TWOSEC
        JNEG    Wloop
        RETURN

TWOSEC: DW      20 
INDEX:	DW		0
D_ADR:	DW		0		; This is the calculated address used for indirect loads
                
DATA: 	DW      0  		; 1000 * cos(0 degrees)
		DW		17  	; 1000 * cos(1 degree)
		DW		35  	; 1000 * cos(2 degrees)
		DW		52		; and so on
		DW		70
		DW		87
		DW		105
		DW		122
		DW		139
		DW		156
		DW		174
		DW		191
		DW		208
		DW		225
		DW		242
		DW		259
		DW		276
		DW		292
		DW		309
		DW		326
		DW		342
		DW		358
		DW		375
		DW		391
		DW		407
		DW		423
		DW		438
		DW		454
		DW		469
		DW		485
		DW		500
		DW		515
		DW		530
		DW		545
		DW		559
		DW		574
		DW		588
		DW		602
		DW		616
		DW		629
		DW		643
		DW		656
		DW		669
		DW		682
		DW		695
		DW		707
		DW		719
		DW		731
		DW		743
		DW		755
		DW		766
		DW		777
		DW		788
		DW		799
		DW		809
		DW		819
		DW		829
		DW		839
		DW		848
		DW		857
		DW		866
		DW		875
		DW		883
		DW		891
		DW		899
		DW		906
		DW		914
		DW		921
		DW		927
		DW		934
		DW		940
		DW		946
		DW		951
		DW		956
		DW		961
		DW		966
		DW		970
		DW		974
		DW		978
		DW		982
		DW		985
		DW		988
		DW		990
		DW		993
		DW		995
		DW		996
		DW		998
		DW		999
		DW		999
		DW		1000
		DW		1000
		DW		1000
		DW		999
		DW		999
		DW		998
		DW		996
		DW		995
		DW		993
		DW		990
		DW		988
		DW		985
		DW		982
		DW		978
		DW		974
		DW		970
		DW		966
		DW		961
		DW		956
		DW		951
		DW		946
		DW		940
		DW		934
		DW		927
		DW		921
		DW		914
		DW		906
		DW		899
		DW		891
		DW		883
		DW		875
		DW		866
		DW		857
		DW		848
		DW		839
		DW		829
		DW		819
		DW		809
		DW		799
		DW		788
		DW		777
		DW		766
		DW		755
		DW		743
		DW		731
		DW		719
		DW		707
		DW		695
		DW		682
		DW		669
		DW		656
		DW		643
		DW		629
		DW		616
		DW		602
		DW		588
		DW		574
		DW		559
		DW		545
		DW		530
		DW		515
		DW		500
		DW		485
		DW		469
		DW		454
		DW		438
		DW		423
		DW		407
		DW		391
		DW		375
		DW		358
		DW		342
		DW		326
		DW		309
		DW		292
		DW		276
		DW		259
		DW		242
		DW		225
		DW		208
		DW		191
		DW		174
		DW		156
		DW		139
		DW		122
		DW		105
		DW		87
		DW		70
		DW		52
		DW		35
		DW		17
		DW		0
		DW		-17
		DW		-35
		DW		-52
		DW		-70
		DW		-87
		DW		-105
		DW		-122
		DW		-139
		DW		-156
		DW		-174
		DW		-191
		DW		-208
		DW		-225
		DW		-242
		DW		-259
		DW		-276
		DW		-292
		DW		-309
		DW		-326
		DW		-342
		DW		-358
		DW		-375
		DW		-391
		DW		-407
		DW		-423
		DW		-438
		DW		-454
		DW		-469
		DW		-485
		DW		-500
		DW		-515
		DW		-530
		DW		-545
		DW		-559
		DW		-574
		DW		-588
		DW		-602
		DW		-616
		DW		-629
		DW		-643
		DW		-656
		DW		-669
		DW		-682
		DW		-695
		DW		-707
		DW		-719
		DW		-731
		DW		-743
		DW		-755
		DW		-766
		DW		-777
		DW		-788
		DW		-799
		DW		-809
		DW		-819
		DW		-829
		DW		-839
		DW		-848
		DW		-857
		DW		-866
		DW		-875
		DW		-883
		DW		-891
		DW		-899
		DW		-906
		DW		-914
		DW		-921
		DW		-927
		DW		-934
		DW		-940
		DW		-946
		DW		-951
		DW		-956
		DW		-961
		DW		-966
		DW		-970
		DW		-974
		DW		-978
		DW		-982
		DW		-985
		DW		-988
		DW		-990
		DW		-993
		DW		-995
		DW		-996
		DW		-998
		DW		-999
		DW		-999
		DW		-1000
		DW		-1000
		DW		-1000
		DW		-999
		DW		-999
		DW		-998
		DW		-996
		DW		-995
		DW		-993
		DW		-990
		DW		-988
		DW		-985
		DW		-982
		DW		-978
		DW		-974
		DW		-970
		DW		-966
		DW		-961
		DW		-956
		DW		-951
		DW		-946
		DW		-940
		DW		-934
		DW		-927
		DW		-921
		DW		-914
		DW		-906
		DW		-899
		DW		-891
		DW		-883
		DW		-875
		DW		-866
		DW		-857
		DW		-848
		DW		-839
		DW		-829
		DW		-819
		DW		-809
		DW		-799
		DW		-788
		DW		-777
		DW		-766
		DW		-755
		DW		-743
		DW		-731
		DW		-719
		DW		-707
		DW		-695
		DW		-682
		DW		-669
		DW		-656
		DW		-643
		DW		-629
		DW		-616
		DW		-602
		DW		-588
		DW		-574
		DW		-559
		DW		-545
		DW		-530
		DW		-515
		DW		-500
		DW		-485
		DW		-469
		DW		-454
		DW		-438
		DW		-423
		DW		-407
		DW		-391
		DW		-375
		DW		-358
		DW		-342
		DW		-326
		DW		-309
		DW		-292
		DW		-276
		DW		-259
		DW		-242
		DW		-225
		DW		-208
		DW		-191
		DW		-174
		DW		-156
		DW		-139
		DW		-122
		DW		-105
		DW		-87
		DW		-70
		DW		-52
		DW		-35
		DW		-17

;***************************************************************
;* IO address space map
;***************************************************************
SWITCHES: EQU &H00  ; slide switches
LEDS:     EQU &H01  ; red LEDs
TIMER:    EQU &H02  ; timer, usually running at 10 Hz
XIO:      EQU &H03  ; pushbuttons and some misc. inputs
SSEG1:    EQU &H04  ; seven-segment display (4-digits only)
SSEG2:    EQU &H05  ; seven-segment display (4-digits only)
LCD:      EQU &H06  ; primitive 4-digit LCD display
