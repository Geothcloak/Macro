#include <Array.au3>
HotKeySet("{F1}", "MyExit")
;HotKeySet("{F2}", "TextForamt")
;HotKeySet("{F3}", "SplitTest")
HotKeySet("{F2}", "SplitTest2")
HotKeySet("{F3}", "SplitFormat")
HotKeySet("{F4}", "SplitFormat2")
while(1)


WEnd

Func MyExit()
   msgbox(0,"Exiting", "Bot is quitting")
   exit
EndFunc

Func TextForamt()
   $str = ClipGet()
   $array = StringSplit($str, ' ', 2)
   For $i = 0 To UBound($array) - 1
	   MsgBox(64, $i, $array[$i], 1)
   Next
   _ArrayDisplay($array) ; example
EndFunc

Func SplitTest2()
$str = ClipGet()
$array = StringSplit($str, ' ', 2)
$skip = 0
For $i = 0 To UBound($array) - 1
  ; MsgBox(64, $i, $array[$i], 1)

	  Send ($array[$i])
	  Send ("{ENTER}")

   ;Send ($i)
Next
;_ArrayDisplay($array) ; example


EndFunc

Func SplitFormat()
   For $i = 14 To 1 Step -1
	  Sleep(100)
	  Send("!e")
	  Sleep(100)
	  Send("Y")
	  Sleep(100)

	  For $ii = 14 To 1 Step -1
		 Sleep(100)
		 Send("{ENTER}")
	  Next
   Next
   ;Send("!e")
   ;Sleep(100)
   ;Send("Y")
   EndFunc

Func SplitFormat2()

	  For $ii = 10 To 1 Step -1
		 Sleep(100)
		 Send("{ENTER}")
	  Next

   For $i = 14 To 1 Step -1
	  Sleep(100)
	  Send("^c")
	  Sleep(100)
	  Send("{UP}")
	  Sleep(100)
	  Send("{ENTER}")
	  Sleep(100)
	  Send("^v")
	  Sleep(100)
	  Send("{ENTER}")
	  Sleep(100)
	  Send("!e")
	  Sleep(100)
	  Send("Y")
	  Sleep(100)
	  For $ii = 12 To 1 Step -1
		 Sleep(100)
		 Send("{ENTER}")
	  Next
   Next

	  ;Send("!e")
	  ;Sleep(100)
	  ;Send("Y")
   ;Next
	  ;Send("!e")
	  ;Sleep(100)
	  ;Send("Y")
   EndFunc

