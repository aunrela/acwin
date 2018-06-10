#SingleInstance force
#NoEnv
#KeyHistory 0
#Include Thumbnail.ahk

SetWorkingDir %A_ScriptDir%
OnExit, GuiClose


WinGet,source1,Id,aunrela-
WinGet,source2,Id,aunrelaa-
WinGet,source3,Id,aunrelaaa-
WinGet,source4,Id,aunrelaaaa-
WinGet,source5,Id,aunrelaaaaa-
WinGet,source6,Id,aunrelaaaaaa-
WinGet,source7,Id,aunrelaaaaaaa-
WinGet,source8,Id,aunrelaaaaaaaa-

WinGet, ExStyle, ExStyle, ahk_id %source1%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source1%
}
WinGet, ExStyle, ExStyle, ahk_id %source2%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source2%
}
WinGet, ExStyle, ExStyle, ahk_id %source3%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source3%
}
WinGet, ExStyle, ExStyle, ahk_id %source4%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source4%
}
WinGet, ExStyle, ExStyle, ahk_id %source5%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source5%
}
WinGet, ExStyle, ExStyle, ahk_id %source6%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source6%
}
WinGet, ExStyle, ExStyle, ahk_id %source7%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source7%
}
WinGet, ExStyle, ExStyle, ahk_id %source8%
if (ExStyle = 0)  {
	WinSet, ExStyle, ^0x80,  ahk_id %source8%
}

loop, 7 {
	if(!source1){
		source1:=source2
		source2:=null
	}
	if(!source2){
		source2:=source3
		source3:=null
	}
	if(!source3){
		source3:=source4
		source4:=null
	}
	if(!source4){
		source4:=source5
		source5:=null
	}
	if(!source5){
		source5:=source6
		source6:=null
	}
	if(!source6){
		source6:=source7
		source7:=null
	}
	if(!source7){
		source7:=source8
		source8:=null
	}
}
Gui,-Caption 
;Gui, Add, Picture, x960 y540 w300 h-1, border.png
Gui,Show,w1920 h1080


;Gui, Color, EEAA99
Gui,+LastFound
;WinSet, TransColor, EEAA99
WinGet,target,Id,A


Gui, 2: Show, w1920 h1080, Child 


Gui, 2:+Owner
Gui, 2:Color, EEAA99
Gui 2:+LastFound
WinSet, TransColor, EEAA99
Gui, 2:-Caption 
WinGet,target2,Id,A
Gui, 2: Hide
;Gui, 2:Add, Picture, w960 h-1 x3 y14,border.png
Gui, 2: Add, Button, x3 y20,layout1
Gui, 2: Add, Button, ,layout2
Gui, 2: Add, Button, ,layout3
Gui, 2: Add, Button, ,layout4
Gui, 2: Add, Button, ,layout5
Gui, 2: Add, Button, ,layout6
Gui, 2: Add, Button, ,layout7
Gui, 2: Add, Button, x55 y20,main1
Gui, 2: Add, Button, ,main2
Gui, 2: Add, Button, ,main3
Gui, 2: Add, Button, ,main4
Gui, 2: Add, Button, ,main5
Gui, 2: Add, Button, ,main6
Gui, 2: Add, Button, ,main7
Gui, 2: Add, Button, ,main8

OnMessage( 0x100, "key" )
OnMessage( 0x101, "key" )
OnMessage( 0x102, "key" )
;OnMessage( 0x103, "key" )
;OnMessage( 0x104, "key" )
;OnMessage( 0x105, "key" )
;OnMessage( 0x106, "key" )
;OnMessage( 0x107, "key" )
;OnMessage( 0x108, "key" )
OnMessage( 0x200, "mou" )
OnMessage( 0x201, "mou" )
OnMessage( 0x202, "mou" )
OnMessage( 0x203, "mou" )
OnMessage( 0x204, "mou" )
OnMessage( 0x205, "mou" )
OnMessage( 0x206, "mou" )
OnMessage( 0x207, "mou" )
OnMessage( 0x208, "mou" )
OnMessage( 0x209, "mou" )
;OnMessage( 0x20A, "mouw" )
;OnMessage( 0x20E, "mouw" )



createthumbs(){
	global
	Thumbnail_Destroy(thumb1)
	Thumbnail_Destroy(thumb2)
	Thumbnail_Destroy(thumb3)
	Thumbnail_Destroy(thumb4)
	Thumbnail_Destroy(thumb5)
	Thumbnail_Destroy(thumb6)
	Thumbnail_Destroy(thumb7)
	Thumbnail_Destroy(thumb8)
	thumb1 := Thumbnail_Create(target, source1)
	thumb2 := Thumbnail_Create(target, source2)
	thumb3 := Thumbnail_Create(target, source3)
	thumb4 := Thumbnail_Create(target, source4)
	thumb5 := Thumbnail_Create(target, source5)
	thumb6 := Thumbnail_Create(target, source6)
	thumb7 := Thumbnail_Create(target, source7)
	thumb8 := Thumbnail_Create(target, source8)
}
createthumbs()
show(1)
if(!source5)show(6)
return



show(layout){
	global

	if (layout=1){
		1xDest := 0
		1yDest := 0
		2xDest := 960
		2yDest := 0
		3xDest := 0
		3yDest := 540
		4xDest := 960
		4yDest := 540
		5xDest := 1440
		5yDest := 540
		6xDest := 960
		6yDest := 810
		7xDest := 1440
		7yDest := 810

		div1 = 2
		div2 = 2
		div3 = 2
		div4 = 4
		div5 = 4
		div6 = 4
		div7 = 4
	} else if (layout=2){
		1xDest := 0
		1yDest := 0
		2xDest := 1440
		2yDest := 0
		3xDest := 1440
		3yDest := 270
		4xDest := 1440
		4yDest := 540
		5xDest := 1440
		5yDest := 810
		6xDest := 0
		6yDest := 810
		7xDest := 480
		7yDest := 810
		8xDest := 960
		8yDest := 810
		;Gui, Add, Button, x960 y810,test
		div1 = 1.3333
		div2 = 4
		div3 = 4
		div4 = 4
		div5 = 4
		div6 = 4
		div7 = 4
		div8 = 4
	} else if (layout=3){
		1xDest := 0
		1yDest := 0
		2xDest := 960
		2yDest := 0
		3xDest := 0
		3yDest := 540
		4xDest := 960
		4yDest := 540
		5xDest := 1440
		5yDest := 540
		6xDest := 960
		6yDest := 810
		7xDest := 960
		7yDest := 540

		div1 = 2
		div2 = 2
		div3 = 2
		div4 = 0
		div5 = 0
		div6 = 0
		div7 = 2
	}else if (layout=4){
		1xDest := 0
		1yDest := 0
		2xDest := 960
		2yDest := 0
		3xDest := 0
		3yDest := 540
		4xDest := 0
		4yDest := 0
		5xDest := 960
		5yDest := 0
		6xDest := 0
		6yDest := 540
		7xDest := 960
		7yDest := 540

		div1 = 0
		div2 = 0
		div3 = 0
		div4 = 2
		div5 = 2
		div6 = 2
		div7 = 2
	}else if (layout=5){
		1xDest := 0
		1yDest := 0
		2xDest := 960
		2yDest := 0
		3xDest := 0
		3yDest := 540
		4xDest := 0
		4yDest := 0
		5xDest := 960
		5yDest := 0
		6xDest := 0
		6yDest := 540
		7xDest := 960
		7yDest := 540

		div1 = 0
		div2 = 0
		div3 = 0
		div4 = 2
		div5 = 2
		div6 = 2
		div7 = 2
	} else if (layout=6){
		1xDest := 0
		1yDest := 0
		2xDest := 960
		2yDest := 0
		3xDest := 0
		3yDest := 540
		4xDest := 960
		4yDest := 540
		5xDest := 1440
		5yDest := 540
		6xDest := 960
		6yDest := 810
		7xDest := 960
		7yDest := 540

		div1 = 2
		div2 = 2
		div3 = 2
		div4 = 2
		div5 = 0
		div6 = 0
		div7 = 0
	}

	xSource := 0
	ySource := 0
	opacity := 255
	includeNC := false

	Thumbnail_GetSourceSize(thumb1, wSource, hSource)
	1wDest := wSource/div1
	1hDest := hSource/div1
	Thumbnail_SetIncludeNC(thumb1,includeNC)
	Thumbnail_SetRegion(thumb1, 1xDest, 1yDest, 1wDest, 1hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb1)
	 
	Thumbnail_GetSourceSize(thumb2, wSource, hSource)
	2wDest := wSource/div2
	2hDest := hSource/div2
	Thumbnail_SetIncludeNC(thumb2,includeNC)
	Thumbnail_SetRegion(thumb2, 2xDest, 2yDest, 2wDest, 2hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb2)

	Thumbnail_GetSourceSize(thumb3, wSource, hSource)
	3wDest := wSource/div3
	3hDest := hSource/div3
	Thumbnail_SetIncludeNC(thumb3,includeNC)
	Thumbnail_SetRegion(thumb3, 3xDest, 3yDest, 3wDest, 3hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb3)


	Thumbnail_GetSourceSize(thumb4, wSource, hSource)
	4wDest := wSource/div4
	4hDest := hSource/div4
	Thumbnail_SetIncludeNC(thumb4,includeNC)
	Thumbnail_SetRegion(thumb4, 4xDest, 4yDest, 4wDest, 4hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb4)

	Thumbnail_GetSourceSize(thumb5, wSource, hSource)
	5wDest := wSource/div5
	5hDest := hSource/div5
	Thumbnail_SetIncludeNC(thumb5,includeNC)
	Thumbnail_SetRegion(thumb5, 5xDest, 5yDest, 5wDest, 5hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb5)

	Thumbnail_GetSourceSize(thumb6, wSource, hSource)
	6wDest := wSource/div6
	6hDest := hSource/div6
	Thumbnail_SetIncludeNC(thumb6,includeNC)
	Thumbnail_SetRegion(thumb6, 6xDest, 6yDest, 6wDest, 6hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb6)

	Thumbnail_GetSourceSize(thumb7, wSource, hSource)
	7wDest := wSource/div7
	7hDest := hSource/div7
	Thumbnail_SetIncludeNC(thumb7,includeNC)
	Thumbnail_SetRegion(thumb7, 7xDest, 7yDest, 7wDest, 7hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb7)

	Thumbnail_GetSourceSize(thumb8, wSource, hSource)
	8wDest := wSource/div8
	8hDest := hSource/div8
	Thumbnail_SetIncludeNC(thumb8,includeNC)
	Thumbnail_SetRegion(thumb8, 8xDest, 8yDest, 8wDest, 8hDest, xSource, ySource, wSource, hSource)
	Thumbnail_Show(thumb8)
}

^Esc::
if(aal){
	Gui, 2: Hide
	aal=0
}
else
{
	Gui, 2: Show
	aal=1
}
return
^F1::aal=0
^F2::aal=1
!#7::Reload
!#1::show(1)
!#2::show(2)
!#3::show(3)
!#4::show(4)
!#5::show(5)
!#6::KillFocus()
#Space::
   WinActivate,acwin
   ;SendCntrl()
Return
#IfWinActive, acwin
#Right::WinMove,acwin,,1920,0
#Left::WinMove,acwin,,0,0
;#IfWinActive, acwin
Return



GuiContextMenu:
	if (A_GuiX>1xDest && A_GuiY>1yDest && A_GuiX<1xDest+1wDest && A_GuiY<1yDest+1hDest){
		keysend := source1
		WinActivate,ahk_id %source1%
	}
	if (A_GuiX>2xDest && A_GuiY>2yDest && A_GuiX<2xDest+2wDest && A_GuiY<2yDest+2hDest){
		keysend := source2
		WinActivate,ahk_id %source2%
	}
	if (A_GuiX>3xDest && A_GuiY>3yDest && A_GuiX<3xDest+3wDest && A_GuiY<3yDest+3hDest){
		keysend := source3
		WinActivate,ahk_id %source3%
	}
	if (A_GuiX>4xDest && A_GuiY>4yDest && A_GuiX<4xDest+4wDest && A_GuiY<4yDest+4hDest){
		keysend := source4
		WinActivate,ahk_id %source4%
	}
	if (A_GuiX>5xDest && A_GuiY>5yDest && A_GuiX<5xDest+5wDest && A_GuiY<5yDest+5hDest){
		keysend := source5
		WinActivate,ahk_id %source5%
	}
	if (A_GuiX>6xDest && A_GuiY>6yDest && A_GuiX<6xDest+6wDest && A_GuiY<6yDest+6hDest){
		keysend := source6
		WinActivate,ahk_id %source6%
	}
	if (A_GuiX>7xDest && A_GuiY>7yDest && A_GuiX<7xDest+7wDest && A_GuiY<7yDest+7hDest){
		keysend := source7
		WinActivate,ahk_id %source7%
	}
	if (A_GuiX>8xDest && A_GuiY>8yDest && A_GuiX<8xDest+8wDest && A_GuiY<8yDest+8hDest){
		keysend := source8
		WinActivate,ahk_id %source8%
	}
	return
	
GuiClose:
	Thumbnail_Destroy(thumb1)
	Thumbnail_Destroy(thumb2)
	Thumbnail_Destroy(thumb3)
	Thumbnail_Destroy(thumb4)
	Thumbnail_Destroy(thumb5)
	Thumbnail_Destroy(thumb6)
	Thumbnail_Destroy(thumb7)
	Thumbnail_Destroy(thumb8)
	WinGet, ExStyle, ExStyle,ahk_id %source1%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source1%
	}
	WinGet, ExStyle, ExStyle,ahk_id %source2%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source2%
	}
	WinGet, ExStyle, ExStyle,ahk_id %source3%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source3%
	}
	WinGet, ExStyle, ExStyle,ahk_id %source4%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source4%
	}
	WinGet, ExStyle, ExStyle,ahk_id %source5%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source5%
	}
	WinGet, ExStyle, ExStyle,ahk_id %source6%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source6%
	}
	WinGet, ExStyle, ExStyle,ahk_id %source7%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source7%
	}
	WinGet, ExStyle, ExStyle,ahk_id %source8%
	if (ExStyle & 0x80)  {
		WinSet, ExStyle, ^0x80,  ahk_id %source8%
	}
	ExitApp
	return

key(wParam, lParam, msg){
	global keysend
	if (wParam!=0x11&&wParam!=0x12&&wParam!=0x5b){
		SendMessage, msg, %wParam%, %lParam%, , ahk_id %keysend%
	}
}

mou(wParam, lParam, msg){
	global
	keysendold := keysend
	xpos :=(lParam&0xffff)
	ypos :=(lParam>>16)
	
	if (xpos>1xDest && ypos>1yDest && xpos<1xDest+1wDest && ypos<1yDest+1hDest) {
		xpos2:=(xpos-1xDest)*div1
		ypos2:=(ypos-1yDest)*div1
		xpos2:=xpos2<<32>>32
		ypos2:=ypos2<<32>>32
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source1
	} else if (xpos>2xDest && ypos>2yDest && xpos<2xDest+2wDest && ypos<2yDest+2hDest) {
		xpos2:=(xpos-2xDest)*div2
		ypos2:=(ypos-2yDest)*div2
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source2
	} else if (xpos>3xDest && ypos>3yDest && xpos<3xDest+3wDest && ypos<3yDest+3hDest) {
		xpos2:=(xpos-3xDest)*div3
		ypos2:=(ypos-3yDest)*div3
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source3
	} else if (xpos>4xDest && ypos>4yDest && xpos<4xDest+4wDest && ypos<4yDest+4hDest) {
		xpos2:=(xpos-4xDest)*div4
		ypos2:=(ypos-4yDest)*div4
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source4
	} else if (xpos>5xDest && ypos>5yDest && xpos<5xDest+5wDest && ypos<5yDest+5hDest) {
		xpos2:=(xpos-5xDest)*div5
		ypos2:=(ypos-5yDest)*div5
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source5
	} else if (xpos>6xDest && ypos>6yDest && xpos<6xDest+6wDest && ypos<6yDest+6hDest) {
		xpos2:=(xpos-6xDest)*div6
		ypos2:=(ypos-6yDest)*div6
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source6
	} else if (xpos>7xDest && ypos>7yDest && xpos<7xDest+7wDest && ypos<7yDest+7hDest) {
		xpos2:=(xpos-7xDest)*div7
		ypos2:=(ypos-7yDest)*div7
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source7
	} else if (xpos>8xDest && ypos>8yDest && xpos<8xDest+8wDest && ypos<8yDest+8hDest) {
		xpos2:=(xpos-8xDest)*div8
		ypos2:=(ypos-8yDest)*div8
		loc:=(ypos2 * 0x10000) + xpos2
		keysend := source8
	} else {
		keysend := null 
	}
	
	if (keysendold=keysend){
	
	}else{
	KillFocus()

	}
	
	;SendMessage, 0x0200, %wParam%, %loc%, , ahk_id %keysend%
	SendMessage, msg, %wParam%, %loc%, , ahk_id %keysend%
}

mouw(wParam, lParam, msg){
	global 

	xpos :=(lParam&0xffff)
	ypos :=(lParam>>16)
	
	if (xpos>1xDest && ypos>1yDest && xpos<1xDest+1wDest && ypos<1yDest+1hDest){
		xpos2:=(xpos-1xDest)*div1
		ypos2:=(ypos-1yDest)*div1
		loc:=(ypos2 * 0x10000) + xpos2
	}
	if (xpos>2xDest && ypos>2yDest && xpos<2xDest+2wDest && ypos<2yDest+2hDest){
		xpos2:=(xpos-2xDest)*div2
		ypos2:=(ypos-2yDest)*div2
		loc:=(ypos2 * 0x10000) + xpos2
	}
	if (xpos>3xDest && ypos>3yDest && xpos<3xDest+3wDest && ypos<3yDest+3hDest){
		xpos2:=(xpos-3xDest)*div3
		ypos2:=(ypos-3yDest)*div3
		loc:=(ypos2 * 0x10000) + xpos2
	}
	if (xpos>4xDest && ypos>4yDest && xpos<4xDest+4wDest && ypos<4yDest+4hDest){
		xpos2:=(xpos-4xDest)*div4
		ypos2:=(ypos-4yDest)*div4
		loc:=(ypos2 * 0x10000) + xpos2
	}
	if (xpos>5xDest && ypos>5yDest && xpos<5xDest+5wDest && ypos<5yDest+5hDest){
		xpos2:=(xpos-5xDest)*div5
		ypos2:=(ypos-5yDest)*div5
		loc:=(ypos2 * 0x10000) + xpos2
	}
	if (xpos>6xDest && ypos>6yDest && xpos<6xDest+6wDest && ypos<6yDest+6hDest){
		xpos2:=(xpos-6xDest)*div6
		ypos2:=(ypos-6yDest)*div6
		loc:=(ypos2 * 0x10000) + xpos2
	}
	if (xpos>7xDest && ypos>7yDest && xpos<7xDest+7wDest && ypos<7yDest+7hDest){
		xpos2:=(xpos-7xDest)*di7
		ypos2:=(ypos-7yDest)*div7
		loc:=(ypos2 * 0x10000) + xpos2
	}
	
	;SendMessage, 0x0200, %wParam%, %loc%, , ahk_id %keysend%
	SendMessage, msg, %wParam%, %loc%, , ahk_id %keysend%
}

SendEnter(){
	global keysend
	SendMessage, 0x0100, 0x0D, 0x001C0001, , ahk_id %keysend%
	SendMessage, 0x0101, 0x0D, 0xC01C0001, , ahk_id %keysend%
}

SendCntrl(){
	global keysend
	;SendMessage, 0x0100, 0x11, 0x001D0001, , ahk_id %keysend%
	SendMessage, 0x0101, 0x11, 0xC01D0001, , ahk_id %keysend%
}

KillFocus(){
	global source1
	global source2
	global source3
	global source4
	global source5
	global source6
	global source7

	PostMessage, 0x0008, , , , ahk_id %source1%
	PostMessage, 0x0008, , , , ahk_id %source2%
	PostMessage, 0x0008, , , , ahk_id %source3%
	PostMessage, 0x0008, , , , ahk_id %source4%
	PostMessage, 0x0008, , , , ahk_id %source5%
	PostMessage, 0x0008, , , , ahk_id %source6%
	PostMessage, 0x0008, , , , ahk_id %source7%
}

2Buttonlayout1:
	show(1)
	return
2Buttonlayout2:
	show(2)
	return
2Buttonlayout3:
	show(3)
	return
2Buttonlayout4:
	show(4)
	return
2Buttonlayout5:
	show(5)
	return
2Buttonlayout6:
	show(6)
	return
2Buttonlayout7:
	show(7)
	return


isswitched = 0
2Buttonmain1:
	if(isswitched){
		sourcetmp := source1
		source1 := source2
		source2 := sourcetmp
	}
	isswitched := 0
	createthumbs()
	show(2)
	return
2Buttonmain2:
	sourcetmp := source1
	source1 := source2
	source2 := sourcetmp
	isswitched := 1
	createthumbs()
	show(2)
	return
2Buttonmain3:
	sourcetmp := source1
	source1 := source3
	source3 := sourcetmp
	isswitched := 1
	createthumbs()
	show(2)
	return
2Buttonmain4:
	sourcetmp := source1
	source1 := source4
	source4 := sourcetmp
	isswitched := 1
	createthumbs()
	show(2)
	return
2Buttonmain5:
	sourcetmp := source1
	source1 := source5
	source5 := sourcetmp
	isswitched := 1
	createthumbs()
	show(2)
	return
2Buttonmain6:
	sourcetmp := source1
	source1 := source6
	source6 := sourcetmp
	isswitched := 1
	createthumbs()
	show(2)
	return
