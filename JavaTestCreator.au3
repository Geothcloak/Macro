#include <Array.au3>
HotKeySet("{F1}", "MyExit")
HotKeySet("{F2}", "CreateNewTest")
HotKeySet("{F3}", "CreateNewInstance")
while(1)


WEnd

Func MyExit()
   msgbox(0,"Exiting", "Bot is quitting")
   exit
EndFunc

Func CreateNewTest()
   Send ("import org.junit.Before;{ENTER}")
   Send ("import org.junit.Assert;{ENTER}")
   Send ("import org.junit.Test;{ENTER}{DOWN}{DOWN}{TAB}")

   Send ("@Before{ENTER}")
   Send ("public void init(){")
   Send ("{ENTER}")

   Send ("{DOWN}{ENTER}@Test{ENTER}")
   Send ("public void Can(){")
   Send ("{ENTER}")
   Send ("Assert.assertEquals("", ){ENTER}")

   ;Send ("{LEFT}{LEFT}{LEFT}{LEFT}{LEFT}{LEFT}")

EndFunc

Func CreateNewInstance()

   Local $className = ClipGet()
   Local $firstLetter = StringLeft($className, 1)

   Send ("{SPACE}")
   Send ($className)
   Send ("{SPACE}{=}{SPACE}new{SPACE}")
   Send ($className)
   Send ("{(}{RIGHT}{;}")
   ;Send ($firstLetter)    this line works



   ;ClipPut($className)


EndFunc

