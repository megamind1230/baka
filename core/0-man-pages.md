#1
- `whatis`
	- `whatis commnad` > هيعرض وظيفة الكوماند
	- رقم 1 يعني تبع المستخدمين العاديين 8 يعني رووت
- `man`
	- تفاصيل أكتر من whatis
	- للخروج `q`
- `info`
	- تفاصيل اكتر من man
- `whereis`
	- ![[Pasted-image-20221213122024.png]]
- `which`
	- ![[Pasted-image-20221213122041.png]]

# iti
[link](https://www.youtube.com/watch?v=fXzZVNDzlgk&ab_channel=MaharaTech-ITIMOOCA)
`man` is in vi-mode
- احيانا بنكون عارفين بس كلمة مفتاحية في موضوع معين لكن مش عارفين اسم الكوماند
	- ساعتها ممكن تجرب `man -k keyword`
	- `man man` بتفكرك بالـ sections
		- واللي هي أرقام بتكون جنب اسماء الأوامر .. علشان تعرفك نوع الحاجة دي إيه
			- هل هي cmd / file / system call .. etc
	- طيب تخيل نفسك عرفت الرقم المحدد بتاع السكشن اللي حابب تقرأ فيه .. ممكن تجرب
		- `man -s no. keyword`
	- `man -a keyword` بيعرض المانيوال بتاع كل سكشن بقا
		- تتنقل بينهم بـ q تخرج من واحد منهم
		- بعدين enter تدخل في التالي