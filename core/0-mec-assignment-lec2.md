
#todo 
```c
some notes
طبعا مكسل ارسم الأسهم .. بس سهلة
 من الـ FK وحتى الـ PK

PK باللون الأصفر

FK آخر اسمه _F

اي حاجة على صورة
x{}()
هي relationship
واللي مش شرط تكون ديما جدول في الـ schema
```
- social medial
	- [x] user(`userid`, username, datejoined)
	- [x] post(`postid`, content, dateposted)
	- [x] like(`likeid`, date)
	- [x] comment(`commentid`, content, date)
	- [x] have{post, comment}(postid_f, `commentid_f`)
	- [x] contain{like, post}(postid_f, `likeid_f`)
	- [x] create{user, post}(userid_f, `postid_f`)
	- [x] can{like, user, post}(`userid_f, postid_f, likeid_f`)
- hotel
	- [x] guest(`guestid`, name , contactInfo)
	- [x] res( `resid`, date, checkinDate, checkoutDate)
	- [x] room( `roomid`, type, rate)
	- [x] payment( `payid`, method, amount,  resid_f)
	- [x] make{guest, res}(guestid_f, `resid_f`)
	- [x] contain{res, room}(`roomid_f`, resid_f)
	- [x] has{res, payment}()
- hospital
	- [x] patient(`patid`, patname, dob, consid_f, wardid_f)
	- [x] consultant( `consid`, consname)
	- [x] ward(`wardid`, wardname, nursenum_f)
	- [x] drug(`drugcode`, dosage)
		- [x] drug-brand(`drugcode_f, brand`)
	- [x] nurse(`nursenum`, nursename, addr, wardid_f)
	- [x] examine{cons, pat}(`consid_f, patid_f`)
	- [x] assigned{cons, pat}()
	- [x] hosts{ward, pat}()
	- [x] sup{nurse, ward}()
	- [x] serve{nurse, ward}()
	- gives{nurse, pat, drug}(dosage, date, time, `nursenum_f, drugcode_f, patid_f`)
- musician
	- [x] mus(`musid`, musid, phnumber, city, street,)
	- [x] album(`albumid`, title, date,  musid_f )
	- [x] song(`songtitle`, author)
	- [x] instru(`intruname`, key)
	- [x] play{mus, instru}(` musid_f ,  instruname_f `)
	- [x] perf{mus, song}(` songtitle_f ,  musid_f`)
	- [x] has{album, song}( albumid_f ,  `songtitle_f` )
	- [x] prod{mus, album}()
- sales
	- [x] salesoffice(`sonumber`, loc,  empid_f)
	- [x] emp(`empid`, empname,  sonumber_f )
	- [x] prop(`propid`, addr, city, state, code,  sonumber_f )
	- [x] owner(`ownerid`, ownername)
	- [x] own{prop, owner}(`percent,  ownerid_f ,  propid_f `)
	- [x] listed{so, prop}()
	- [x] manage{so,emp}()
	- [x] assign{so, emp}()
- iti
	- [x] student(`stid`, age, fname, lname, addr, depid_f)
	- [x] department(`depid`, depname, instid_f, hiring-date)
	- [x] inst(`instid`, hrate, salary, addr, bonus, instname, depid_f)
	- [x] course(`cid`, cname, cduration, cdescr, tid_f)
	- [x] topic(`tip`, tname)
	- [x] loc{dep, st}()
	- [x] take{c, st}(grade, `cid_f, stid_f`)
	- [x] classify{c, t}()
	- [x] teach{inst, c}(eval, `instid_f, cid_f`)
	- [x] manage{inst, dep}()
	- [x] contain{dep, inst}()