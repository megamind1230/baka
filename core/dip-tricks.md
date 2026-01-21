midpoint filter = ( darkest + lightest ) / 2
___
CMY = 1 - RGB
___
![[1.jpg|300]]

___
- arithmetic = sigma X) / n
- geo = sqrt nth($\Pi$)
- harmonic =  n / {(1/x1) + (1/x2) ...}
- min -- max  -- median filter = min max median value
___
RA, RB regions / segmentation question
بنقسم الصورة مناطق على أساس الشرط
	احيانا بيقول الشرط هو إنه الفرق بين القيمتين لازم اقل من 3
	وعلى هذا الأساس بنقسم الحدود
___
DFT {discrete `fourier` transform}
> find DFT of x(t) = {a , b , c , d}
	 ig a,b,c,d  .. we must divide them first by the max
	 or one of them at least must be 1
  we notice 4 items .. so 0->3
  complex mode
> (a$\angle$ - 0A)+(b$\angle$ - 90A)+(c$\angle$ - 180A)+(d$\angle$ - 360A)
>calc at 0,1,2,3 

___
HSI from RGB
$$I = (R+G+B)/3$$
$$S = 1-\frac{(min)}{I}$$

$$\theta = \cos^{-1}{[\frac{{1\over2} [(R-G)+ (R-B)]}{\sqrt{(R-G)^2 + (R-B)(G-B))}}]}$$
rg rb
rg rb gb
>theta if `B <= G`
360 - theta if `B > G`

___
- correlation > process of moving a filtermask over the image and compute the sum of products of each location
- convolusion > same except rotated 180 first
___
![[Pasted image 20251223185206.png]]

| 1   | 2   | 0   |
| --- | --- | --- |
| 4   | 3   | 2   |
| 7   | 5   | 2   |

| 001 | 010 | 000 |
| --- | --- | --- |
| 100 | 011 | 010 |
| 111 | 101 | 010 |

___
Huffman coding

$$entropy = \Sigma(x \log2(\frac{1}{x}))$$

avg code length
	لازم تكون  الشجرة وتطلع الأكواد
		كل اللي عالشمال 0
	اضرب الطول في التكرار واجمعهم

___

histo equalization ![[Pasted image 20251223204220.png]]