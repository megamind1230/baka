# hill cipher

![[Pasted image 20250613152920.png]]
![[Pasted image 20250612162605.png]]
 Hill Cipher Encryption of "Secrecy"

I'll explain how to encrypt the first 3 letters of "Secrecy" using the given Hill Cipher key matrix.

  Given Information:
- Plaintext: "Secrecy" (we'll use only "Sec")
- Key matrix K:
  ```
  [21  5 11]
  [14  7 12]
  [ 5 25 12]
  ```

  Step 1: Convert letters to numbers
First, we convert each letter to its corresponding numerical value (A=0, B=1, ..., Z=25):

- 'S' = 18
- 'e' = 4
- 'c' = 2

So our plaintext vector P is: [18, 4, 2]

  Step 2: Matrix multiplication (KP = C)
We multiply the key matrix K by the plaintext vector P to get the ciphertext vector C:

```
[21  5 11]   [18]   [21*18 + 5*4 + 11*2]   [378 + 20 + 22]   [420]
[14  7 12] * [ 4] = [14*18 + 7*4 + 12*2] = [252 + 28 + 24] = [304]
[ 5 25 12]   [ 2]   [5*18 + 25*4 + 12*2]   [90 + 100 + 24]   [214]
```

So our ciphertext vector before modulo is [420, 304, 214]

  Step 3: Apply modulo 26
Now we take each element modulo 26 to get numbers between 0-25:

```
- 420 mod 26:
  420 ÷ 26 = 16 with remainder 4 (since 16*26=416, 420-416=4)
  
- 304 mod 26:
  304 ÷ 26 = 11 with remainder 18 (11*26=286, 304-286=18)
  
- 214 mod 26:
  214 ÷ 26 = 8 with remainder 6 (8*26=208, 214-208=6)

So our final ciphertext vector is [4, 18, 6]

Step 4: Convert numbers back to letters
- 4 = 'E'
- 18 = 'S'
- 6 = 'G'

```

#  s-box 
![[Pasted image 20250612162812.png]]

   DES S-Box (S2) Substitution

Let's determine the output for the input `101111` using the S2 substitution box in DES.

     Given Information:
- Input: `101111` (6 bits)
- S2 Box provided (4 rows × 16 columns)
- Expected output: `2` (which is `0010` in binary)

     Step 1: Understand S-Box Structure
Each S-box in DES takes 6 bits as input and produces 4 bits as output.

The 6-bit input is interpreted as:
- **First and last bits (bits 1 and 6)** form a 2-bit row number (0-3)
- **Middle 4 bits (bits 2-5)** form a 4-bit column number (0-15)

     Step 2: Break Down the Input
Input: `1 0111 1` (spaces added for clarity)
- First bit (b1): `1`
- Middle 4 bits (b2-b5): `0111`
- Last bit (b6): `1`

     Step 3: Determine Row and Column
1. **Row selection**:
   - Bits: b1 (1) and b6 (1) → `11` in binary = 3 in decimal (rows are 0-indexed)

2. **Column selection**:
   - Middle bits: `0111` in binary = 7 in decimal (columns are 0-indexed)

     Step 4: Look Up in S2 Box
The S2 box has 4 rows (0-3) and 16 columns (0-15). We need row 3, column 7.

Looking at the S2 box (row indices added for clarity):

```
Row 0: [3, 13, 4, 7, 15, 2, 8, 14, 12, 0, 1, 10, 6, 9, 11, 5]
Row 1: [0, 14, 7, 11, 10, 4, 13, 1, 5, 8, 12, 6, 9, 3, 2, 15]
Row 2: [13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9]
Row 3: [13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9]
```

- Row 3, Column 7 (0-indexed) is the 8th entry in row 3 (since column indices start at 0):
  - Row 3: `[13, 8, 10, 1, 3, 15, 4, 2, 11, 6, 7, 12, 0, 5, 14, 9]`
  - Column 7 → value `2` (decimal)

     Step 5: Convert to Binary
The decimal value `2` in 4-bit binary is `0010`.

     Verification:
The expected output was given as `2 = 0010`, which matches our calculation.

     Final Answer:
The output of S2 for the input `101111` is **`0010`**.

# playfair
![[Pasted image 20250612164330.png]]

Playfair Cipher Encryption

I'll explain how to encrypt the plaintext "cryptography" using the Playfair cipher with the key "security".

 Given Information:
- **Plaintext**: "cryptography" (prepared as "cr yp to gr ap hy")
- **Key**: "security"
- **Expected Ciphertext**: "US BN AM KC BO GA"

 Step 1: Create the Playfair Square
First, we construct a 5×5 matrix using the key "security":

1. Remove duplicate letters from the key: "s e c u r i t y" (we drop the second 'c')
2. Fill in remaining letters (I and J share the same cell, omit Q or combine I/J depending on convention)
3. Alphabet order (excluding key letters): A B D F G H K L M N O P Q V W X Z

Final Playfair Square:
```
S E C U R
I T Y A B
D F G H K
L M N O P
Q V W X Z
```

Step 2: Prepare Plaintext
Plaintext: "cryptography"
- Split into digrams (pairs of 2 letters):
  - cr yp to gr ap hy
- No double letters or odd-length adjustments needed here

Step 3: Encrypt Each Digram

    1. Encrypt "cr":
- Locate 'c' and 'r' in the square:
  - 'c' at Row 0, Column 2
  - 'r' at Row 0, Column 4
- Same row: Replace with letters to the right (wrapping around)
	- 'c' → 'u' (right of 'c')
	- 'r' → 's' (right of 'r')
	- Ciphertext: "us"

    2. Encrypt "yp":
- 'y' at Row 1, Column 2
- 'p' at Row 3, Column 4
- Different row and column: Form rectangle, take opposite corners
- Rectangle corners: 'y', 'p', 'h', 'n'
	- 'y' → 'b'
	- 'p' → 'n'
	- Ciphertext: "bn"

    3. Encrypt "to":
- 't' at Row 1, Column 1
- 'o' at Row 3, Column 3
- Different row and column: Form rectangle
  - Rectangle corners: 't', 'o', 'y', 'n'
	- 't' → 'a'
	- 'o' → 'm'
	- Ciphertext: "am"

    4. Encrypt "gr":
- 'g' at Row 2, Column 2
- 'r' at Row 0, Column 4
- Different row and column: Form rectangle
  - Rectangle corners: 'g', 'r', 'k', 'u'
	- 'g' → 'k'
	- 'r' → 'c'
	- Ciphertext: "kc"

    5. Encrypt "ap":
- 'a' at Row 1, Column 3
- 'p' at Row 3, Column 4
- rec
	- 'a' → 'b'
	- 'p' → 'o'
	- Ciphertext: "bo"

    6. Encrypt "hy":
- 'h' at Row 2, Column 3
- 'y' at Row 1, Column 2
- Different row and column: Form rectangle
	  - Rectangle corners: 'h', 'y', 'k', 'a'
	  - 'h' → 'g'
	  - 'y' → 'a'
	- Ciphertext: "ga"

 Final Ciphertext:
Combining all encrypted digrams: **US BN AM KC BO GA**

This matches the expected ciphertext provided in the question. The Playfair cipher encryption is correct.


# RSA
![[Pasted image 20250613153640.png]]
