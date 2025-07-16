
#1
# 28

```
in form tag some attributes
readonly > sent
disable > not sent
```
# 29
[Learn HTML In Arabic 2021 - #29 - Form Part 6 - Radio And Checkbox - YouTube](https://www.youtube.com/watch?v=YAcn1MyAcDM)
[[html-info#HTML Step|radio tag in gt]]
to link radio with label use for
```
input id="win"
label for="win" // now they're linked .. so selecting label triggers the radio // label line can still go first np

```

# 30

[[html-info#HTML disabled Attribute|select tag in gt]]

[[html-info#HTML Step|textarea tag in gt]]

# 31
```
input type="url"
```

# 32
[Learn HTML In Arabic 2021 - #32 - Form Part 9 - Data List, Novalidate, Target - YouTube](https://www.youtube.com/watch?v=X_TGbRuZ80Q)

```
in form tag
novalidate attribute
بتساعدك تعمل سيند من غير ما تقعد كل شوية تملأ البيانات
حلوة في مرحلة ال testing

target="_blank" > ممكن تتعمل في ال form tag

```

[[html-info#HTML disabled Attribute#datalist|datalist tag in gt]]

# 33
[Learn HTML In Arabic 2021 - #33 - Q, BlockQuote, Wbr, Bdi, Button - YouTube](https://www.youtube.com/watch?v=AzjtVtxoBLc)

```
<q> quote </q> // inline
<blockquote>another quote</blockquote> // block

```
[[html-non-closing-tags-OR-empty-elements]] wbr tag > work break opportunity
```
<wbr> // almost like br tag
```

when writing Arabic & English & numbers

use bdi > bi-directional isolation

```
عايز اكتب السلام 2 ولكم 
من الشمال لليمين
<p>السلام 2 welcome</p> // not what i wanted

<p><bdi> السلام </bdi> 2 welcome</p> 
```

# 34
[Learn HTML In Arabic 2021 - #34 - iFrame, Pre, Code - YouTube](https://www.youtube.com/watch?v=aycYLVSOtZo)

```
<code> lang code </code> 

<pre> //preformatted text .. saves styling of text (spaces, enters, tabs) as it was
<code> lang code </code> 
</pre>
```

[[html-info#HTML Audio#iframe|iframe tag in gt]]

# 35
important
[Learn HTML In Arabic 2021 - #35 - Accessibility Intro - YouTube](https://www.youtube.com/watch?v=lSqXHePabFo)
better to use `live server extension` on vscode
inspect > lighthouse > gen report (just select accessibility for now) .. it gives you advices

# 36
[Learn HTML In Arabic 2021 - #36 - ARIA And Screen Readers - YouTube](https://www.youtube.com/watch?v=UnTxFfbpqco)
aria > accessible-rich internet application
contrast ratio

accessibility cares also about colors and styling orders
how to make div act like checkbox https://youtu.be/UnTxFfbpqco?si=nYAL8-8c-nLOHNMP&t=316

```
<label> choose your plan </label>
    <div role="checkbox" aria-checked="true" tabindex ="0" aria-labeledby="plan1"> plan 1 </div>
    <div tabindex ="0" > plan 2 </div>
    <div tabindex ="0" > plan 3 </div>
    // now u can tab to nivigate between them
```

# 37
[Learn HTML In Arabic 2021 - #37 - The End And What To Do - YouTube](https://www.youtube.com/watch?v=ysJQH5uPfTg)
learn canvas api (with js)

# q
name attribute is extremely important for sending data to backend
