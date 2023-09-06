a := [11,22,33]

List := ""
for k, in a
   List .= k "`n"
for v in a
   List .= v "`n"
for k, v in a
   List .= k " " v "`n"
MsgBox List

List := ""
for k, in Reverse(a, 2)
   List .= k "`n"
for v in Reverse(a)
   List .= v "`n"
for k, v in Reverse(a, 2)
   List .= k " " v "`n"
MsgBox List

Reverse(a, n := 1) {
   return (Len := a.Length, enumerate(&v1?, &v2?) => Len ? n = 1 ? (v1 := a[Len], Len--) : (v2 := a[Len], v1 := Len--) : 0)
}
