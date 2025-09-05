#set page(
	background:image("background.png"),
	margin:(top:37mm,bottom:35mm,left:28mm,right:26mm),
)
#set par(
	first-line-indent:(amount:2em,all:true),
	spacing:30pt,
	leading:30pt,
)
#set text(lang:"zh")
#text(
	font:"FZXiaoBiaoSong-B05S",
	size:21pt,
	align(center)[通知]
)
#set text(
	font:(
		(name:"FangSong_GB2312",covers:"latin-in-cjk"),
		"Times New Roman",
	),
	size:16pt,
)
#let noindent=h(-2em)

#noindent 各位聪明的人：

#v(8cm)

#noindent 特此通知

#align(right)[#datetime.today().display("[year]年[month]月[day]日")#h(1em)]
