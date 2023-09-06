; Comment

#NoEnv

a := [11,22,33]

List := ""
for k in a
   List .= k "`n"
for k, v in a
   List .= k " " v "`n"
MsgBox % List

List := ""
for k in new Reverse(a)
   List .= k "`n"
for k, v in new Reverse(a)
   List .= k " " v "`n"
MsgBox % List

class Reverse
{
   __New(a)
   {
      this.a := a
   }
   
   _NewEnum()
   {
      this.i := this.a.Length()
      return this
   }
   
   Next(ByRef k, ByRef v := "")
   {
      if not this.i
         return false
      k := this.i
      v := this.a[this.i--]
      return true
   }
}
