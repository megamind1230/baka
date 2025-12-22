### **Chapter 2: Digital Image Fundamentals**

**1. The human visual system is largely dependent on which two types of photoreceptors in the retina?**
a) Cones and Rods
b) Lens and Iris
c) Fovea and Cornea
d) Ganglion and Bipolar cells
**Answer: a) Cones and Rods**
*Explanation: Cones are color-sensitive and function in bright light, while rods are sensitive to low light levels and do not perceive color.*

**2. The range of the electromagnetic spectrum that is visible to humans is approximately:**
a) 100 - 400 nm
b) 400 - 700 nm
c) 700 - 1000 nm
d) 0.01 - 10 nm
**Answer: b) 400 - 700 nm**
*Explanation: The visible light spectrum for humans ranges from violet (around 400 nm) to red (around 700 nm).*

**3. In image sensing, a sensor that produces a voltage output proportional to the light intensity is called a:**
a) CCD
b) CMOS
c) Single Sensor
d) Both a and b
**Answer: d) Both a and b**
*Explanation: Both CCD (Charge-Coupled Device) and CMOS (Complementary Metal-Oxide-Semiconductor) sensors are common image sensors that convert light into electrical signals.*

**4. The process of digitizing the spatial coordinates (x, y) of an image is called:**
a) Quantization
b) Sampling
c) Compression
d) Enhancement
**Answer: b) Sampling**
*Explanation: Sampling is the process of digitizing the coordinate values, determining the pixel resolution.*

**5. The process of digitizing the amplitude (intensity) values of an image is called:**
a) Quantization
b) Sampling
c) Compression
d) Enhancement
**Answer: a) Quantization**
*Explanation: Quantization is the process of digitizing the intensity values, determining the number of gray levels.*

**6. If an image has a spatial resolution of 1024x1024 pixels and 256 gray levels, the total number of bits required to store the image is:**
a) 1024 x 1024 bits
b) 256 x 8 bits
c) 1024 x 1024 x 8 bits
d) 1024 x 8 bits
**Answer: c) 1024 x 1024 x 8 bits**
*Explanation: 256 gray levels require log₂(256) = 8 bits per pixel. Total bits = (1024 * 1024 pixels) * 8 bits/pixel.*

**7. Two pixels p and q with coordinates (x, y) and (s, t) are 4-adjacent if:**
a) |x-s| + |y-t| = 1
b) |x-s| = 1 and |y-t| = 1
c) |x-s| ≤ 1 and |y-t| ≤ 1
d) max(|x-s|, |y-t|) = 1
**Answer: a) |x-s| + |y-t| = 1**
*Explanation: 4-adjacency (or von Neumann neighborhood) means the pixels share a common edge; they are vertical or horizontal neighbors.*

**8. The set of pixels that are 8-adjacent to a pixel p is called its:**
a) 4-neighbors
b) D-neighbors
c) 8-neighbors
d) m-adjacency neighbors
**Answer: c) 8-neighbors**
*Explanation: 8-adjacency (or Moore neighborhood) includes pixels that share a common edge or a common corner.*

**9. m-adjacency (mixed adjacency) was developed to resolve ambiguities that arise when using:**
a) Only 4-adjacency
b) Only 8-adjacency
c) Both 4 and 8-adjacency
d) D-adjacency
**Answer: c) Both 4 and 8-adjacency**
*Explanation: m-adjacency is a modification of 8-adjacency to eliminate the multiple path connections that often occur when 8-adjacency is used.*

**10. The Euclidean distance between points (x, y) and (u, v) is given by:**
a) |x-u| + |y-v|
b) max(|x-u|, |y-v|)
c) √[(x-u)² + (y-v)²]
d) (x-u)² + (y-v)²
**Answer: c) √[(x-u)² + (y-v)²]**
*Explanation: This is the standard straight-line distance formula from geometry.*

*(Let's proceed with a similar format for the remaining 140 questions. The following are the questions and answers in a condensed list.)*

**11. The brightness adaptation of the human eye is primarily a function of the:**
a) Cornea
b) Lens
c) Iris
d) Retina
**Answer: c) Iris**
*Explanation: The iris controls the size of the pupil, thus regulating the amount of light entering the eye.*

**12. The area of the retina where vision is most acute is called the:**
a) Blind spot
b) Fovea
c) Macula
d) Peripheral region
**Answer: b) Fovea**
*Explanation: The fovea is a small pit in the retina containing a high concentration of cones, responsible for sharp central vision.*

**13. Which phenomenon explains why a bright light appears to "linger" after we look away?**
a) Simultaneous Contrast
b) Mach Band Effect
c) Light Adaptation
d) Persistence of Vision
**Answer: d) Persistence of Vision**
*Explanation: It's the continued perception of a visual stimulus after it has been removed.*

**14. In the electromagnetic spectrum, wavelengths longer than visible light are:**
a) Ultraviolet
b) X-rays
c) Infrared
d) Gamma rays
**Answer: c) Infrared**
*Explanation: The IR band lies just beyond the red end of the visible spectrum.*

**15. A sensor strip used in most flatbed scanners for image acquisition is a:**
a) Single sensor
b) Sensor line array
c) Sensor array
d) CMOS array
**Answer: b) Sensor line array**
*Explanation: A linear array of sensors is used, which moves across the document.*

**16. The phenomenon where a higher sampling rate than the Nyquist rate is used is called:**
a) Undersampling
b) Critical sampling
c) Oversampling
d) Quantization
**Answer: c) Oversampling**
*Explanation: Oversampling uses a rate higher than the Nyquist rate to improve quality or ease filter design.*

**17. The Nyquist rate is defined as:**
a) Twice the lowest frequency component in the signal
b) Equal to the highest frequency component
c) Half the highest frequency component
d) The sampling frequency itself
**Answer: a) Twice the highest frequency component in the signal**
*Explanation: To avoid aliasing, the sampling rate must be at least twice the highest frequency contained in the signal.*

**18. False contouring is an artifact caused by:**
a) Insufficient spatial sampling
b) Insufficient brightness quantization
c) Excessive spatial sampling
d) Excessive brightness quantization
**Answer: b) Insufficient brightness quantization**
*Explanation: Using too few gray levels causes sudden intensity shifts in smoothly varying areas, creating false contours.*

**19. Two pixels p and q are said to be connected if they are adjacent in some sense and:**
a) Their intensities are equal
b) Their intensities satisfy a specified similarity criterion
c) They are 4-adjacent
d) They are 8-adjacent
**Answer: b) Their intensities satisfy a specified similarity criterion**
*Explanation: Connectivity depends on both adjacency and a predefined criterion for intensity values (e.g., V, the set of intensity values used to define adjacency).*

**20. The D₄ distance (city-block distance) between points (1,1) and (4,5) is:**
a) 3
b) 5
c) 7
d) 8
**Answer: c) 7**
*Explanation: D₄ = |x-s| + |y-t| = |1-4| + |1-5| = 3 + 4 = 7.*

**21. The D₈ distance (chessboard distance) between points (1,1) and (4,5) is:**
a) 3
b) 4
c) 5
d) 7
**Answer: b) 4**
*Explanation: D₈ = max(|x-s|, |y-t|) = max(|1-4|, |1-5|) = max(3, 4) = 4.*

**22. A path from pixel p with coordinates (x, y) to pixel q with coordinates (s, t) is a sequence of distinct pixels with coordinates (x₀, y₀), (x₁, y₁), ..., (xₙ, yₙ) where (x₀, y₀) = (x, y), (xₙ, yₙ) = (s, t) and pixels (xᵢ, yᵢ) and (xᵢ₋₁, yᵢ₋₁) are adjacent for:**
a) 1 ≤ i ≤ n
b) 0 ≤ i ≤ n
c) i = n only
d) i = 1 only
**Answer: a) 1 ≤ i ≤ n**
*Explanation: The adjacency condition must hold for every consecutive pair of pixels in the sequence.*

**23. The primary purpose of image sampling and quantization is to:**
a) Enhance image contrast
b) Convert a continuous image into a digital form
c) Reduce image noise
d) Compress the image data
**Answer: b) Convert a continuous image into a digital form**
*Explanation: Sampling and quantization are the two fundamental steps in the digitization process.*

**24. The number of gray levels in a digital image is usually an integer power of:**
a) 10
b) e
c) 2
d) 8
**Answer: c) 2**
*Explanation: This is because digital computers use binary representation. Common values are 256 (2⁸), 1024 (2¹⁰), etc.*

**25. Aliasing in a digital image appears as:**
a) False contours
b) Moiré patterns
c) Salt-and-pepper noise
d) Gaussian noise
**Answer: b) Moiré patterns**
*Explanation: Aliasing occurs when a signal is undersampled, often manifesting as unwanted, spurious patterns.*

---

### **Chapter 3: Intensity Transformations and Spatial Filtering**

**26. An intensity transformation function T that operates on an input image f(x, y) to produce an output image g(x, y) is expressed as:**
a) g(x, y) = T[f(x, y)] * h(x, y)
b) g(x, y) = f(x, y) + T(x, y)
c) g(x, y) = T[f(x, y)]
d) g(x, y) = ∫∫ f(α, β) T(x-α, y-β) dα dβ
**Answer: c) g(x, y) = T[f(x, y)]**
*Explanation: This is the definition of an intensity transformation function, which operates on single pixels.*

**27. The transformation s = L - 1 - r, where r is the input intensity and s is the output intensity, results in:**
a) Contrast stretching
b) Image averaging
c) Image negative
d) Log transformation
**Answer: c) Image negative**
*Explanation: This inverts the intensity values, making dark areas light and light areas dark.*

**28. The log transformation s = c * log(1 + r) is used primarily for:**
a) Image sharpening
b) Compressing the dynamic range of an image
c) Image thresholding
d) Isolating color components
**Answer: b) Compressing the dynamic range of an image**
*Explanation: The log function maps a wide range of input values to a narrower range of outputs, useful for displaying Fourier spectra or images with high dynamic range.*

**29. A power-law transformation s = c * r^γ is also known as:**
a) Log transformation
b) Gamma correction
c) Histogram equalization
d) Negative transformation
**Answer: b) Gamma correction**
*Explanation: Gamma correction is a specific application of the power-law transform used to correct for the nonlinearity of displays.*

**30. For γ > 1 in the power-law transformation s = c * r^γ, the transformation maps:**
a) A narrow range of dark input values to a wider range of output values
b) A wide range of dark input values to a narrower range of output values
c) All values linearly
d) Dark values to darker values and light values to lighter values
**Answer: b) A wide range of dark input values to a narrower range of output values**
*Explanation: With γ > 1, the curve becomes steeper, compressing dark values and expanding light values.*

**31. The histogram of a digital image with intensity levels in the range [0, L-1] is a discrete function:**
a) h(rₖ) = nₖ
b) p(rₖ) = nₖ / MN
c) h(rₖ) = nₖ / MN
d) p(rₖ) = nₖ
**Answer: a) h(rₖ) = nₖ**
*Explanation: The histogram h(rₖ) is the number of pixels in the image having intensity level rₖ. p(rₖ) = nₖ / MN is the normalized histogram.*

**32. Histogram equalization is used to:**
a) Sharpen image edges
b) Enhance the contrast of an image by spreading out the intensity distribution
c) Reduce image noise
d) Blur the image
**Answer: b) Enhance the contrast of an image by spreading out the intensity distribution**
*Explanation: It aims to create an image with a uniform histogram, which often results in higher contrast.*

**33. In histogram equalization, the transformation function used is essentially the:**
a) Negative of the histogram
b) Cumulative distribution function (CDF) of the image histogram
c) Derivative of the histogram
d) Fourier transform of the histogram
**Answer: b) Cumulative distribution function (CDF) of the image histogram**
*Explanation: The CDF is used to map the original intensities to new ones that produce a flat histogram.*

**34. Spatial filtering is an image processing operation performed by:**
a) Applying a transformation function to individual pixels
b) Applying a filter mask (kernel) over the image
c) Transforming the image to the frequency domain
d) Modifying the image histogram
**Answer: b) Applying a filter mask (kernel) over the image**
*Explanation: Spatial filtering involves a neighborhood operation where a mask is convolved with the image.*

**35. The process of correlating a mask w(x, y) with an image f(x, y) at a point (x, y) is given by:**
a) Σₐ Σᵦ w(a, b) f(x-a, y-b)
b) Σₐ Σᵦ w(a, b) f(x+a, y+b)
c) Σₐ Σᵦ f(a, b) w(x-a, y-b)
d) Σₐ Σᵦ f(a, b) w(x+a, y+b)
**Answer: b) Σₐ Σᵦ w(a, b) f(x+a, y+b)**
*Explanation: This is the definition of correlation. The mask is placed over the image, and the sum of the products of corresponding elements is computed.*

**36. Convolution is identical to correlation except that:**
a) The mask is rotated by 90 degrees
b) The mask is rotated by 180 degrees
c) The image is rotated by 180 degrees
d) It is performed in the frequency domain
**Answer: b) The mask is rotated by 180 degrees**
*Explanation: Convolution involves rotating the mask by 180° before performing the same sliding sum-of-products operation as correlation.*

**37. A smoothing spatial filter is used primarily to:**
a) Highlight fine details
b) Reduce noise and blur an image
c) Correct uneven illumination
d) Perform edge detection
**Answer: b) Reduce noise and blur an image**
*Explanation: Smoothing filters are lowpass filters that attenuate high-frequency components, such as noise and edges, resulting in blurring.*

**38. The simplest smoothing spatial filter is the:**
a) Median filter
b) Gaussian filter
c) Arithmetic mean filter
d) Laplacian filter
**Answer: c) Arithmetic mean filter**
*Explanation: It is a simple linear filter where each pixel is replaced by the average of the pixels in its neighborhood.*

**39. A 3x3 averaging filter mask has all coefficients equal to:**
a) 0
b) 1
c) 1/9
d) 1/3
**Answer: c) 1/9**
*Explanation: For an averaging filter, the coefficients sum to 1. For a 3x3 mask, each coefficient is 1/9.*

**40. The median filter is a:**
a) Linear smoothing filter
b) Nonlinear smoothing filter
c) Sharpening filter
d) Frequency domain filter
**Answer: b) Nonlinear smoothing filter**
*Explanation: The median filter replaces a pixel's value with the median of the values in its neighborhood. The median operation is nonlinear.*

**41. A key advantage of the median filter over the mean filter is its ability to:**
a) Blur edges more smoothly
b) Remove Gaussian noise more effectively
c) Remove salt-and-pepper noise without excessive blurring
d) Be implemented in the frequency domain
**Answer: c) Remove salt-and-pepper noise without excessive blurring**
*Explanation: The median filter is very effective at removing impulse noise while preserving edges.*

**42. Sharpening spatial filters are based on which mathematical operation?**
a) Integration
b) Differentiation
c) Logarithm
d) Convolution with a Gaussian
**Answer: b) Differentiation**
*Explanation: Since derivatives are zero in constant regions and high at the onset of a gray-level step or ramp, they are used for sharpening.*

**43. The second-order derivative for image sharpening is implemented using the:**
a) Sobel operator
b) Prewitt operator
c) Roberts operator
d) Laplacian operator
**Answer: d) Laplacian operator**
*Explanation: The Laplacian is a second-order derivative operator isotropic to rotation.*

**44. The Laplacian of a function f(x, y) is defined as:**
a) ∂f/∂x + ∂f/∂y
b) (∂f/∂x)² + (∂f/∂y)²
c) ∂²f/∂x² + ∂²f/∂y²
d) ∂²f/∂x² - ∂²f/∂y²
**Answer: c) ∂²f/∂x² + ∂²f/∂y²**
*Explanation: This is the standard definition of the Laplacian operator.*

**45. A common mask used for the Laplacian that has a positive center coefficient is:**
a) [0 -1 0; -1 4 -1; 0 -1 0]
b) [-1 -1 -1; -1 8 -1; -1 -1 -1]
c) [0 1 0; 1 -4 1; 0 1 0]
d) [1 1 1; 1 -8 1; 1 1 1]
**Answer: b) [-1 -1 -1; -1 8 -1; -1 -1 -1]**
*Explanation: This is the 8-neighbor Laplacian mask with a positive center, which inverts the sign of the derivative.*

**46. Image sharpening in the spatial domain is often implemented using a technique called:**
a) High-boost filtering
b) Low-pass filtering
c) Histogram specification
d) Median filtering
**Answer: a) High-boost filtering**
*Explanation: High-boost filtering amplifies the high-frequency components. It can be implemented as g(x, y) = f(x, y) + k * [f(x, y) - f̄(x, y)], where k>0 and f̄ is a blurred version.*

**47. The first-order derivatives used for edge detection include the:**
a) Laplacian
b) Gradient
c) Mean
d) Median
**Answer: b) Gradient**
*Explanation: The gradient is a first-order derivative vector that points in the direction of the greatest rate of change.*

**48. The magnitude of the gradient of an image f(x, y) is given by:**
a) |∇f| = √(Gₓ² + Gᵧ²)
b) |∇f| = |Gₓ| + |Gᵧ|
c) |∇f| = max(|Gₓ|, |Gᵧ|)
d) All of the above are used in practice
**Answer: d) All of the above are used in practice**
*Explanation: While the Euclidean distance (a) is the true magnitude, the absolute sum (b) and max (c) are often used as computationally simpler approximations.*

**49. The Sobel operator uses two masks to approximate the:**
a) Laplacian
b) Gradient in the x and y directions
c) Median
d) Fourier transform
**Answer: b) Gradient in the x and y directions**
*Explanation: The Sobel masks are designed to respond maximally to edges running vertically and horizontally relative to the pixel grid.*

**50. Which of the following is a nonlinear intensity transformation?**
a) Image negative
b) Log transformation
c) Power-law transformation
d) Histogram equalization
**Answer: d) Histogram equalization**
*Explanation: While negative, log, and power-law are point operations defined by a fixed formula, histogram equalization's transformation function depends on the content of the entire image, making it a nonlinear operation.*

*(Due to the character limit, I will provide the remaining 100 questions in a more condensed list format, keeping the "Question / Answer / Brief Explanation" structure.)*

**51. The main purpose of a high-pass spatial filter is to:**
a) Blur an image
b) Suppress noise
c) Highlight fine details and edges
d) Correct uneven illumination
**Answer: c) Highlight fine details and edges**
*Explanation: High-pass filters attenuate low frequencies (constant/slowly varying areas) and pass high frequencies (edges, noise).*

**52. Unsharp masking is a technique used for:**
a) Image smoothing
b) Image sharpening
c) Histogram equalization
d) Color conversion
**Answer: b) Image sharpening**
*Explanation: It involves subtracting a blurred (unsharp) version of the image from the original to create a mask of high-frequency details, which is then added back to the original.*

**53. Which filter is most effective for removing periodic noise?**
a) Median filter
b) Mean filter
c) Band-reject filter
d) High-pass filter
**Answer: c) Band-reject filter**
*Explanation: Periodic noise appears as spikes in the frequency domain, which can be removed by a band-reject filter.*

**54. The process of mapping the input intensity levels to the output intensity levels based on a specific, desired histogram is called:**
a) Histogram equalization
b) Histogram matching (specification)
c) Histogram linearization
d) Histogram plotting
**Answer: b) Histogram matching (specification)**
*Explanation: Histogram matching is the process of transforming an image so that its histogram matches a predefined shape.*

**55. A bit-plane slicing transformation is useful for:**
a) Image compression
b) Image sharpening
c) Analyzing the relative importance of each bit in an image
d) Both a and c
**Answer: d) Both a and c**
*Explanation: Higher-order bit planes contain most visually significant data, while lower-order planes contain finer details and noise, which is useful for analysis and compression.*

---

### **Chapter 4: Filtering in the Frequency Domain**

**56. The 2-D Discrete Fourier Transform (DFT) of an M x N image f(x, y) is given by:**
a) F(u, v) = Σ_{x=0}^{M-1} Σ_{y=0}^{N-1} f(x, y) e^{-j2π(ux/M + vy/N)}
b) F(u, v) = (1/MN) Σ_{x=0}^{M-1} Σ_{y=0}^{N-1} f(x, y) e^{-j2π(ux/M + vy/N)}
c) F(u, v) = Σ_{x=0}^{M-1} Σ_{y=0}^{N-1} f(x, y) e^{j2π(ux/M + vy/N)}
d) F(u, v) = (1/MN) Σ_{x=0}^{M-1} Σ_{y=0}^{N-1} f(x, y) e^{j2π(ux/M + vy/N)}
**Answer: a) F(u, v) = Σ_{x=0}^{M-1} Σ_{y=0}^{N-1} f(x, y) e^{-j2π(ux/M + vy/N)}**
*Explanation: This is the standard forward DFT formula. The 1/MN normalization term is typically applied in the inverse DFT.*

**57. The inverse 2-D DFT is used to:**
a) Analyze the frequency content of an image
b) Reconstruct the spatial domain image from its frequency components
c) Filter the image in the frequency domain
d) Compute the power spectrum
**Answer: b) Reconstruct the spatial domain image from its frequency components**
*Explanation: The inverse DFT transforms the data from the frequency domain back to the spatial domain.*

**58. The Fourier spectrum of an image is defined as:**
a) The real part of F(u, v)
b) The imaginary part of F(u, v)
c) |F(u, v)| = √[R²(u, v) + I²(u, v)]
d) The phase angle at (u, v)
**Answer: c) |F(u, v)| = √[R²(u, v) + I²(u, v)]**
*Explanation: The spectrum (or magnitude) is the absolute value of the DFT.*

**59. In the frequency domain, low frequencies correspond to:**
a) Sharp edges and fine details in the spatial image
b) The overall average gray level and slowly varying components
c) Impulse noise
d) Isolated points
**Answer: b) The overall average gray level and slowly varying components**
*Explanation: Low frequencies in the Fourier transform represent the general shape and smooth areas of the image.*

**60. The property F(u, v) = F*( -u, -v ) indicates that the Fourier spectrum is:**
a) Symmetric
b) Periodic
c) Conjugate symmetric
d) Linear
**Answer: c) Conjugate symmetric**
*Explanation: This is the conjugate symmetry property, which implies that the spectrum is symmetric about the origin for real-valued images.*

**61. The process of filtering in the frequency domain involves:**
a) Multiplying the DFT of the image by a filter function H(u, v)
b) Convolving the image with a spatial mask
c) Adding the DFT of the image to H(u, v)
d) Applying a point transformation to F(u, v)
**Answer: a) Multiplying the DFT of the image by a filter function H(u, v)**
*Explanation: This multiplication in the frequency domain is equivalent to convolution in the spatial domain.*

**62. An ideal lowpass filter (ILPF) with cutoff frequency D₀:**
a) Passes all frequencies below D₀ and cuts off all frequencies above D₀
b) Passes all frequencies above D₀ and cuts off all frequencies below D₀
c) Has a smooth transition between pass and stop bands
d) Is the best filter for practical applications
**Answer: a) Passes all frequencies below D₀ and cuts off all frequencies above D₀**
*Explanation: The ILPF is defined by a sharp cutoff, which causes ringing artifacts in the spatial domain.*

**63. Ringing artifacts in the spatial domain are a characteristic of which type of frequency domain filter?**
a) Filters with sharp transitions, like the ideal lowpass filter
b) Filters with smooth transitions, like the Gaussian lowpass filter
c) High-pass filters
d) Band-pass filters
**Answer: a) Filters with sharp transitions, like the ideal lowpass filter**
*Explanation: The sharp cutoff in the frequency domain corresponds to a sinc function in the spatial domain, which causes ringing (ripples) around edges.*

**64. The Gaussian lowpass filter (GLPF) is preferred over the ideal lowpass filter because it:**
a) Has a sharper cutoff
b) Does not produce ringing artifacts
c) Is easier to compute
d) Is an optical filter
**Answer: b) Does not produce ringing artifacts**
*Explanation: The Gaussian filter's smooth transition in the frequency domain corresponds to a Gaussian in the spatial domain, which has no side lobes and thus no ringing.*

**65. A Butterworth lowpass filter of order n provides:**
a) A sharp cutoff with no ringing
b) A trade-off between sharpness of cutoff and the presence of ringing
c) No filtering at all
d) Only high-frequency components
**Answer: b) A trade-off between sharpness of cutoff and the presence of ringing**
*Explanation: A higher-order Butterworth filter has a sharper cutoff (closer to ideal) but more pronounced ringing. A first-order filter has no ringing but a very gradual cutoff.*

**66. A highpass filter in the frequency domain can be obtained from a lowpass filter H_LP(u, v) by:**
a) H_HP(u, v) = 1 - H_LP(u, v)
b) H_HP(u, v) = H_LP(u, v) - 1
c) H_HP(u, v) = H_LP(u, v) + 1
d) H_HP(u, v) = H_LP(-u, -v)
**Answer: a) H_HP(u, v) = 1 - H_LP(u, v)**
*Explanation: Since lowpass filters pass low frequencies and attenuate high ones, subtracting them from 1 inverts this behavior.*

**67. The Laplacian in the frequency domain is implemented with a filter function H(u, v) proportional to:**
a) (u² + v²)
b) -(u² + v²)
c) e^{-(u²+v²)/2σ²}
d) 1 / (1 + (D(u,v)/D₀)²ⁿ)
**Answer: b) -(u² + v²)**
*Explanation: It can be shown that the Fourier transform of the Laplacian operator is proportional to -(u² + v²).*

**68. Unsharp masking in the frequency domain can be implemented using a:**
a) Lowpass filter
b) Highpass filter
c) Band-reject filter
d) High-boost filter, which is a linear combination of lowpass and all-pass filters
**Answer: d) High-boost filter, which is a linear combination of lowpass and all-pass filters**
*Explanation: A high-boost filter is defined as H_ℎb(u, v) = (A - 1) + H_ℎp(u, v), where A ≥ 1 and H_ℎp is a highpass filter. When A=1, it becomes a standard highpass filter.*

**69. A notch filter is used to:**
a) Blur an image
b) Sharpen an image
c) Remove periodic noise at specific frequencies
d) Perform edge detection
**Answer: c) Remove periodic noise at specific frequencies**
*Explanation: A notch filter rejects (or passes) frequencies in predefined neighborhoods about a center frequency.*

**70. An ideal notch filter rejects frequencies:**
a) In a circle around the origin
b) In a band around the origin
c) In predefined neighborhoods about specific centers (uᵢ, vᵢ)
d) Outside a predefined radius
**Answer: c) In predefined neighborhoods about specific centers (uᵢ, vᵢ)**
*Explanation: It is designed to remove specific frequencies and their symmetric counterparts, often caused by periodic noise.*

---

### **Chapter 5: Image Restoration and Reconstruction**

**71. The image degradation process can be modeled as: g(x, y) = h(x, y) * f(x, y) + η(x, y). Here, h(x, y) represents:**
a) The original image
b) The degraded image
c) The degradation function (point spread function)
d) Additive noise
**Answer: c) The degradation function (point spread function)**
*Explanation: h(x, y) is the impulse response of the degradation system, often called the Point Spread Function (PSF).*

**72. The goal of image restoration is to:**
a) Enhance the visual appearance of an image
b) Recover an original image from its degraded version using knowledge of the degradation process
c) Segment the image into regions
d) Compress the image data
**Answer: b) Recover an original image from its degraded version using knowledge of the degradation process**
*Explanation: Restoration is objective, aiming to invert the degradation, unlike enhancement which is subjective.*

**73. Noise that appears as random black and white pixels is called:**
a) Gaussian noise
b) Rayleigh noise
c) Salt-and-pepper noise
d) Erlang noise
**Answer: c) Salt-and-pepper noise**
*Explanation: Also known as impulse noise, it causes dark pixels in bright areas and bright pixels in dark areas.*

**74. The mean filter is effective against which type of noise?**
a) Salt-and-pepper noise
b) Gaussian noise
c) Periodic noise
d) Impulse noise
**Answer: b) Gaussian noise**
*Explanation: The mean filter (a linear filter) is optimal for reducing Gaussian noise but blurs edges.*

**75. The median filter is effective against which type of noise?**
a) Gaussian noise
b) Salt-and-pepper noise
c) Periodic noise
d) Uniform noise
**Answer: b) Salt-and-pepper noise**
*Explanation: As a nonlinear filter, it is very effective for impulse noise while preserving edges.*

**76. Periodic noise is best reduced by using filtering in the:**
a) Spatial domain
b) Frequency domain
c) Time domain
d) Wavelet domain
**Answer: b) Frequency domain**
*Explanation: Periodic noise appears as concentrated bursts in the frequency domain, which can be easily filtered out with bandreject or notch filters.*

**77. The degradation function H(u, v) is often estimated by:**
a) Observing the noise pattern
b) Using a Wiener filter
c) Analyzing a small, known portion of the image, like a point or an edge
d) Applying histogram equalization
**Answer: c) Analyzing a small, known portion of the image, like a point or an edge**
*Explanation: The PSF can be estimated from the image of an isolated point (point source) or from the response to an edge.*

**78. Inverse filtering for image restoration is given by:**
a) F̂(u, v) = G(u, v) / H(u, v)
b) F̂(u, v) = G(u, v) * H(u, v)
c) F̂(u, v) = [1 / H(u, v)] * [ |H(u, v)|² / (|H(u, v)|² + S_η(u, v)/S_f(u, v)) ] G(u, v)
d) F̂(u, v) = G(u, v) - N(u, v)
**Answer: a) F̂(u, v) = G(u, v) / H(u, v)**
*Explanation: Inverse filtering simply divides the DFT of the degraded image by the degradation function.*

**79. A major limitation of inverse filtering is that it:**
a) Is too computationally complex
b) Amplifies noise severely, especially where H(u, v) is small or zero
c) Cannot handle blurring
d) Requires knowledge of the noise
**Answer: b) Amplifies noise severely, especially where H(u, v) is small or zero**
*Explanation: At frequencies where H(u, v) is close to zero, the term G(u, v)/H(u, v) dominates the restoration, amplifying any noise present.*

**80. The Wiener (Minimum Mean Square Error) filter is designed to:**
a) Provide an exact inverse of the degradation
b) Be optimal in the sense of minimizing the mean square error between the original and restored image
c) Work only in the absence of noise
d) Be a spatial domain filter
**Answer: b) Be optimal in the sense of minimizing the mean square error between the original and restored image**
*Explanation: It incorporates both the degradation function and the statistical properties of the noise to provide a better restoration than inverse filtering.*

**81. The expression for the Wiener filter is:**
a) H_w(u, v) = 1 / H(u, v)
b) H_w(u, v) = H*(u, v) / |H(u, v)|²
c) H_w(u, v) = [ H*(u, v) / |H(u, v)|² + K ] G(u, v)
d) H_w(u, v) = [ H*(u, v) / |H(u, v)|² + S_η(u, v)/S_f(u, v) ] G(u, v)
**Answer: d) H_w(u, v) = [ H*(u, v) / |H(u, v)|² + S_η(u, v)/S_f(u, v) ]**
*Explanation: This is the standard form, where S_η is the power spectrum of the noise and S_f is the power spectrum of the undegraded image. H* is the complex conjugate of H.*

**82. In practice, when the power spectra of the noise and original image are unknown, the Wiener filter is often approximated by:**
a) H_w(u, v) ≈ [ 1 / H(u, v) ] * [ |H(u, v)|² / (|H(u, v)|² + Γ) ]
b) H_w(u, v) ≈ G(u, v) / H(u, v)
c) H_w(u, v) ≈ H(u, v)
d) H_w(u, v) ≈ [ H*(u, v) / |H(u, v)|² ]
**Answer: a) H_w(u, v) ≈ [ 1 / H(u, v) ] * [ |H(u, v)|² / (|H(u, v)|² + Γ) ]**
*Explanation: The ratio S_η/S_f is replaced by a constant Γ, which must be adjusted interactively to achieve the best visual results.*

**83. Constrained Least Squares filtering differs from Wiener filtering in that it:**
a) Requires knowledge of the noise power spectrum
b) Requires knowledge of the original image power spectrum
c) Requires only the mean and variance of the noise
d) Is a spatial domain technique
**Answer: c) Requires only the mean and variance of the noise**
*Explanation: It uses a criterion of smoothness and requires only an estimate of the noise variance, making it easier to use in practice.*

**84. The main advantage of Constrained Least Squares filtering over Wiener filtering is:**
a) It is computationally faster
b) It does not require knowledge of the power spectrum of the undegraded image
c) It always produces a perfect restoration
d) It is a linear filter
**Answer: b) It does not require knowledge of the power spectrum of the undegraded image**
*Explanation: The CLS filter uses a regularization parameter which is adjusted based on the noise variance, avoiding the need for the full power spectrum S_f(u, v).*

**85. Geometric mean filtering is a general form that encompasses:**
a) Only the inverse filter
b) Only the Wiener filter
c) Both the inverse filter and the Wiener filter
d) Only the constrained least squares filter
**Answer: c) Both the inverse filter and the Wiener filter**
*Explanation: The expression for the geometric mean filter is H_gm(u, v) = [ H*(u, v) / |H(u, v)|² ]^α [ H*(u, v) / (|H(u, v)|² + β [S_η(u, v)/S_f(u, v)] ) ]^(1-α). With α=1, it becomes the inverse filter, and with α=0, it becomes the Wiener filter.*

---

### **Chapter 6: Color Image Processing**

**86. The RGB color model is:**
a) An additive color model used for color monitors
b) A subtractive color model used for color printing
c) A color model that separates intensity from color information
d) Defined by Hue, Saturation, and Intensity components
**Answer: a) An additive color model used for color monitors**
*Explanation: In the RGB model, colors are created by adding red, green, and blue light.*

**87. The CMY color model is:**
a) An additive color model
b) A subtractive color model used for color printing
c) Defined by Hue, Saturation, and Value
d) The same as the RGB model
**Answer: b) A subtractive color model used for color printing**
*Explanation: Cyan, Magenta, and Yellow are the pigments that subtract wavelengths from white light.*

**88. The conversion from RGB to CMY is given by:**
a) C = 1 - R, M = 1 - G, Y = 1 - B
b) C = R, M = G, Y = B
c) C = R - 1, M = G - 1, Y = B - 1
d) C = 1 - B, M = 1 - G, Y = 1 - R
**Answer: a) C = 1 - R, M = 1 - G, Y = 1 - B**
*Explanation: This simple transformation assumes normalized RGB values in the range [0,1].*

**89. The HSI color model represents color in terms of:**
a) Red, Green, and Blue
b) Cyan, Magenta, and Yellow
c) Hue, Saturation, and Intensity
d) Luminance and Chrominance
**Answer: c) Hue, Saturation, and Intensity**
*Explanation: HSI is an intuitive color model that decouples the color information (Hue, Saturation) from the intensity component.*

**90. The component of the HSI model that describes the dominant color is:**
a) Intensity
b) Saturation
c) Hue
d) Chrominance
**Answer: c) Hue**
*Explanation: Hue is an attribute that describes a pure color (e.g., red, yellow, blue).*

**91. The component of the HSI model that describes the purity or vividness of a color is:**
a) Intensity
b) Saturation
c) Hue
d) Value
**Answer: b) Saturation**
*Explanation: Saturation measures the degree to which a pure color is diluted by white light.*

**92. The primary advantage of the HSI color model is:**
a) It is the native model for color monitors
b) It is the model used for color printing
c) It separates color information from intensity, allowing intensity-based processing techniques to be applied to color images
d) It requires less storage space than RGB
**Answer: c) It separates color information from intensity, allowing intensity-based processing techniques to be applied to color images**
*Explanation: This separation is very powerful. For example, histogram equalization can be performed on the I component without altering the color of the image.*

**93. Converting an image from RGB to HSI is a:**
a) Linear transformation
b) Non-linear transformation
c) Identity transformation
d) Fourier transformation
**Answer: b) Non-linear transformation**
*Explanation: The formulas for converting from RGB to HSI involve trigonometric functions, making it a nonlinear process.*

**94. In the HSI color space, the saturation of a pure green color (RGB: 0, 1, 0) is:**
a) 0
b) 0.5
c) 1
d) It depends on the intensity
**Answer: c) 1**
*Explanation: A pure color, undiluted by white, has a saturation of 1.*

**95. Pseudocolor image processing refers to:**
a) Processing of full-color images
b) Assigning colors to gray levels based on a specified criterion
c) Converting between different color models
d) Correcting color imbalances in an image
**Answer: b) Assigning colors to gray levels based on a specified criterion**
*Explanation: Pseudocolor (or false color) processing is used to enhance the visual distinction between different gray levels in a monochrome image by mapping them to colors.*

---

### **Chapter 10: Image Segmentation**

**96. Image segmentation is the process of:**
a) Enhancing an image
b) Partitioning an image into its constituent regions or objects
c) Compressing an image
d) Restoring a degraded image
**Answer: b) Partitioning an image into its constituent regions or objects**
*Explanation: Segmentation subdivides an image into its parts or objects.*

**97. The three basic types of gray-level discontinuities in an image are:**
a) Points, lines, and circles
b) Points, lines, and edges
c) Lines, edges, and regions
d) Holes, corners, and edges
**Answer: b) Points, lines, and edges**
*Explanation: These are the fundamental local discontinuities that can be detected.*

**98. Isolated points in an image can be detected using a spatial filter based on:**
a) The first derivative
b) The second derivative (Laplacian)
c) Averaging
d) Median filtering
**Answer: b) The second derivative (Laplacian)**
*Explanation: The Laplacian responds strongly to isolated points and lines, and less strongly to edges.*

**99. The response of the Laplacian mask [0 1 0; 1 -4 1; 0 1 0] to an isolated point is:**
a) Zero
b) A strong positive or negative response
c) A weak positive response
d) A weak negative response
**Answer: b) A strong positive or negative response**
*Explanation: The point is much brighter or darker than its background, resulting in a large magnitude output from the Laplacian.*

**100. The first derivative in image segmentation is implemented using the:**
a) Laplacian operator
b) Gradient operator
c) Averaging operator
d) Median operator
**Answer: b) Gradient operator**
*Explanation: The gradient is used for first-order derivative detection, which is the basis for most edge detectors.*

**101. The magnitude of the gradient is _____ at the points of an edge and _____ in constant gray areas.**
a) Zero, high
b) High, zero
c) High, high
d) Zero, zero
**Answer: b) High, zero**
*Explanation: Edges are characterized by a rapid change in intensity, leading to a high gradient magnitude.*

**102. The Prewitt and Sobel operators are used primarily for detecting:**
a) Horizontal edges
b) Vertical edges
c) Both horizontal and vertical edges
d) Isolated points
**Answer: c) Both horizontal and vertical edges**
*Explanation: They use a pair of masks, one that responds maximally to horizontal edges and one to vertical edges. The results are combined.*

**103. The main difference between the Prewitt and Sobel operators is that the Sobel operator:**
a) Uses a 2x2 mask
b) Places more emphasis on pixels closer to the center of the mask
c) Is a second-order derivative operator
d) Is used for line detection
**Answer: b) Places more emphasis on pixels closer to the center of the mask**
*Explanation: The Sobel masks have a coefficient of 2 in the center row/column, giving more weight to the center pixels, which provides a slightly smoother gradient estimate.*

**104. The Marr-Hildreth edge detector uses the:**
a) Sobel operator
b) Laplacian of a Gaussian (LoG)
c) Gradient of a Gaussian
d) Prewitt operator
**Answer: b) Laplacian of a Gaussian (LoG)**
*Explanation: This method first smoothes the image with a Gaussian filter to reduce noise and then applies the Laplacian to find the second derivative zero-crossings, which indicate edges.*

**105. The Canny edge detector is optimal because it minimizes the probability of:**
a) Detecting false edges and missing real edges
b) Being computationally expensive
c) Requiring parameter tuning
d) Detecting only horizontal edges
**Answer: a) Detecting false edges and missing real edges**
*Explanation: The Canny detector was designed with three specific criteria: good detection, good localization, and single response.*

**106. The steps of the Canny edge detector include all EXCEPT:**
a) Noise reduction using a Gaussian filter
b) Computation of gradient magnitude and direction
c) Non-maximum suppression
d) Histogram equalization
**Answer: d) Histogram equalization**
*Explanation: The key steps are 1) Smoothing, 2) Finding gradients, 3) Non-maximum suppression, and 4) Hysteresis thresholding.*

**107. Non-maximum suppression in the Canny edge detector is used to:**
a) Suppress noise
b) Thin the edges to a one-pixel width
c) Compute the gradient direction
d) Apply a double threshold
**Answer: b) Thin the edges to a one-pixel width**
*Explanation: It checks if a pixel is a local maximum in the gradient direction. If not, it is suppressed (set to zero).*

**108. Hysteresis thresholding in the Canny edge detector uses:**
a) A single global threshold
b) Two thresholds to track strong and weak edges
c) The Otsu's method
d) No thresholds
**Answer: b) Two thresholds to track strong and weak edges**
*Explanation: Strong pixels are immediately accepted as edge pixels. Weak pixels are accepted only if they are connected to strong pixels.*

**109. Region-based segmentation techniques are based on:**
a) Finding discontinuities
b) Partitioning an image into regions that are similar according to a set of predefined criteria
c) Detecting edges only
d) Using frequency domain filters
**Answer: b) Partitioning an image into regions that are similar according to a set of predefined criteria**
*Explanation: This is in contrast to boundary-based (edge-based) techniques.*

**110. Region growing is a segmentation procedure that:**
a) Starts with a set of "seed" points and grows regions by appending neighboring pixels that are similar
b) Detects edges and then links them
c) Uses global thresholding
d) Applies a Laplacian filter
**Answer: a) Starts with a set of "seed" points and grows regions by appending neighboring pixels that are similar**
*Explanation: It's a bottom-up approach where regions are grown from small seeds based on a similarity criterion.*

**111. The main problem with region growing is the selection of:**
a) Appropriate edge detectors
b) Appropriate seed points and similarity criteria
c) Appropriate Fourier transforms
d) Appropriate color models
**Answer: b) Appropriate seed points and similarity criteria**
*Explanation: Incorrect seeds or poorly chosen similarity criteria can lead to over-segmentation or under-segmentation.*

**112. Region splitting and merging is based on a data structure called a:**
a) Linked list
b) Queue
c) Quad-tree
d) Stack
**Answer: c) Quad-tree**
*Explanation: The image is subdivided into quadrants, which are in turn subdivided, creating a tree structure. Regions are then split or merged based on criteria.*

**113. The split and merge algorithm:**
a) Only splits regions that are not homogeneous
b) Only merges adjacent regions that are similar
c) Both splits non-homogeneous regions and merges adjacent similar regions
d) Is an edge detection technique
**Answer: c) Both splits non-homogeneous regions and merges adjacent similar regions**
*Explanation: It is a hybrid approach that refines the segmentation by both splitting and merging operations.*

**114. Thresholding is a segmentation technique that classifies pixels based on:**
a) Their spatial coordinates
b) Their intensity value relative to a threshold T
c) Their gradient magnitude
d) Their color hue
**Answer: b) Their intensity value relative to a threshold T**
*Explanation: A simple thresholding function creates a binary image: g(x, y) = 1 if f(x, y) > T, and 0 otherwise.*

**115. The key problem in global thresholding is:**
a) Its computational complexity
b) The selection of an appropriate global threshold value T
c) Its inability to create a binary image
d) Its dependence on color information
**Answer: b) The selection of an appropriate global threshold value T**
*Explanation: A single, global T may not work for an image with uneven illumination or multiple backgrounds.*

**116. Otsu's method is used for:**
a) Edge detection
b) Automatically selecting an optimal global threshold
c) Region growing
d) Color conversion
**Answer: b) Automatically selecting an optimal global threshold**
*Explanation: Otsu's method maximizes the between-class variance of the pixel intensities in the thresholded image.*

**117. Adaptive thresholding is used when:**
a) The image has only two intensity levels
b) The image has Gaussian noise
c) The background illumination is uneven
d) The image is in color
**Answer: c) The background illumination is uneven**
*Explanation: Adaptive thresholding uses a threshold value that varies over the image, computed based on the local neighborhood of each pixel.*

**118. The Hough transform is primarily used for detecting:**
a) Isolated points
b) Arbitrary, complex shapes
c) Simple shapes like lines and circles
d) Texture patterns
**Answer: c) Simple shapes like lines and circles**
*Explanation: The Hough transform is a voting procedure that can find imperfect instances of shapes within an image.*

**119. In edge detection, the purpose of edge linking is to:**
a) Suppress noise
b) Assemble edge pixels into meaningful edges
c) Compute the gradient
d) Apply a threshold
**Answer: b) Assemble edge pixels into meaningful edges**
*Explanation: Edge detectors output pixels with high gradient magnitude. Edge linking connects these pixels to form continuous boundaries.*

**120. The "watershed" segmentation algorithm is conceptually based on:**
a) The topology of a terrain flooded by water
b) The Fourier transform
c) Thresholding
d) The Hough transform
**Answer: a) The topology of a terrain flooded by water**
*Explanation: The image is seen as a topographic surface where intensity is height. "Water" placed in catchment basins fills them, and dams (watershed lines) are built where different bodies of water meet.*

---
*(This completes the first 120 questions. The final 30 questions continue in the same pattern below.)*

**121. The Mach band effect is an example of:**
a) Image sampling
b) A visual phenomenon where perceived brightness is not uniform in a physically uniform region
c) A type of image noise
d) A frequency domain filter
**Answer: b) A visual phenomenon where perceived brightness is not uniform in a physically uniform region**
*Explanation: It demonstrates that human perception of intensity is influenced by the surrounding context.*

**122. The process of converting a continuous image into a digital image is known as:**
a) Image enhancement
b) Image acquisition
c) Image digitization
d) Image restoration
**Answer: c) Image digitization**
*Explanation: Digitization encompasses both sampling and quantization.*

**123. A pixel's connectivity (e.g., 4-, 8-, m-) is important for defining:**
a) Its intensity value
b) Its spatial frequency
c) Regions and boundaries
d) Its color
**Answer: c) Regions and boundaries**
*Explanation: Connectivity rules define which pixels are considered part of the same region or boundary.*

**124. The intensity transformation function s = T(r) = c * r (where c is a constant) performs:**
a) Image negative
b) Contrast stretching
c) Identity transformation
d) Log transformation
**Answer: b) Contrast stretching**
*Explanation: If c > 1, it stretches the range of intensity levels, increasing contrast.*

**125. A histogram with two distinct peaks is called:**
a) Unimodal
b) Bimodal
c) Multimodal
d) Uniform
**Answer: b) Bimodal**
*Explanation: Bimodal histograms are often indicative of an image that can be segmented by a threshold placed between the peaks.*

**126. A spatial averaging filter is a type of:**
a) High-pass filter
b) Low-pass filter
c) Band-pass filter
d) Sharpening filter
**Answer: b) Low-pass filter**
*Explanation: It blurs the image by averaging, which attenuates high-frequency components.*

**127. The Laplacian is often used for image sharpening because it is a/an _____ derivative operator.**
a) First-order
b) Second-order
c) Third-order
d) Zero-order
**Answer: b) Second-order**
*Explanation: The Laplacian highlights intensity rapid changes, which correspond to edges.*

**128. The Convolution Theorem states that convolution in the spatial domain corresponds to _____ in the frequency domain.**
a) Addition
b) Subtraction
c) Multiplication
d) Division
**Answer: c) Multiplication**
*Explanation: f(x, y) * h(x, y) ⇔ F(u, v) H(u, v). This is the foundation of frequency domain filtering.*

**129. An "ideal" filter (like ILPF or IHPF) is rarely used in practice because it causes:**
a) Too much blurring
b) Ringing artifacts
c) Color distortion
d) Noise reduction
**Answer: b) Ringing artifacts**
*Explanation: The sharp cutoff of an ideal filter corresponds to a sinc function in the spatial domain, which causes undesirable ripples (ringing) around edges.*

**130. Salt-and-pepper noise is typically modeled by a _____ distribution.**
a) Gaussian
b) Uniform
c) Rayleigh
d) Impulse (Bipolar)
**Answer: d) Impulse (Bipolar)**
*Explanation: It is characterized by sudden, extreme intensity values (e.g., 0 and 255 in an 8-bit image).*

**131. The Wiener filter requires knowledge of:**
a) Only the degradation function H(u, v)
b) Only the noise power spectrum
c) Both the degradation function and the power spectra of the noise and the original image
d) Only the original image
**Answer: c) Both the degradation function and the power spectra of the noise and the original image**
*Explanation: Its optimal performance depends on these three pieces of information.*

**132. The primary purpose of the CMYK color model is for:**
a) Image display on monitors
b) Color image processing algorithms
c) Color printing
d) Television broadcasting
**Answer: c) Color printing**
*Explanation: CMYK (Cyan, Magenta, Yellow, Key/Black) is a subtractive model used in printing.*

**133. In the HSI model, the intensity component (I) is obtained from the RGB components as:**
a) I = (R + G + B) / 3
b) I = max(R, G, B)
c) I = min(R, G, B)
d) I = (R + G + B)
**Answer: a) I = (R + G + B) / 3**
*Explanation: Intensity is the average of the three color components.*

**134. The goal of image segmentation is to:**
a) Change the color space of an image
b) Change the dynamic range of an image
c) Simplify the representation of an image into something more meaningful
d) Remove noise from an image
**Answer: c) Simplify the representation of an image into something more meaningful**
*Explanation: It partitions an image into regions that correspond to objects or parts of objects.*

**135. The Roberts cross-gradient operator uses _____ masks.**
a) 1x2
b) 2x2
c) 3x3
d) 5x5
**Answer: b) 2x2**
*Explanation: It is one of the oldest and simplest edge detectors, using a pair of 2x2 masks.*

**136. The zero-crossings of the Laplacian of a Gaussian (LoG) correspond to:**
a) Peaks in the gradient magnitude
b) Centers of thick edges
c) The locations of edges in the image
d) Isolated noise points
**Answer: c) The locations of edges in the image**
*Explanation: The zero-crossings of the second derivative indicate the locations of intensity transitions (edges).*

**137. The final step of the Canny edge detector, hysteresis thresholding, helps to:**
a) Detect more false edges
b) Eliminate weak, noisy edges while retaining weak edges that are part of strong contours
c) Compute the gradient direction
d) Blur the image
**Answer: b) Eliminate weak, noisy edges while retaining weak edges that are part of strong contours**
*Explanation: It uses a high threshold to find strong edges and a low threshold to connect them, improving continuity.*

**138. Global thresholding fails when:**
a) The image has a bimodal histogram
b) The background intensity is constant
c) The foreground and background intensity distributions overlap significantly or illumination is uneven
d) Otsu's method is used
**Answer: c) The foreground and background intensity distributions overlap significantly or illumination is uneven**
*Explanation: A single threshold cannot correctly classify all pixels under these conditions.*

**139. Otsu's method finds the threshold that _____ the within-class variance.**
a) Maximizes
b) Minimizes
c) Averages
d) Ignores
**Answer: b) Minimizes**
*Explanation: Equivalently, it maximizes the between-class variance. The goal is to find the threshold that best separates the two classes of pixels.*

**140. The main idea behind region splitting is to:**
a) Merge small regions into larger ones
b) Divide a region that is not homogeneous into smaller sub-regions
c) Detect edges
d) Apply a global threshold
**Answer: b) Divide a region that is not homogeneous into smaller sub-regions**
*Explanation: It's a "top-down" approach where the entire image is initially considered one region, which is then recursively split if it fails a homogeneity test.*

**141. The Hough transform for line detection uses the parameter space of:**
a) (x, y) coordinates
b) (m, c) for slope and intercept
c) (ρ, θ) for normal representation
d) (u, v) frequency coordinates
**Answer: c) (ρ, θ) for normal representation**
*Explanation: Using ρ (distance from origin) and θ (angle of the normal) avoids the problem of infinite slope associated with the (m, c) representation.*

**142. The "watershed" algorithm is particularly sensitive to:**
a) Noise and minor intensity variations
b) The size of the image
c) The color model used
d) The Fourier spectrum
**Answer: a) Noise and minor intensity variations**
*Explanation: Noise can create many small, spurious catchment basins, leading to over-segmentation.*

**143. A major application of the Hough transform is in:**
a) Color balancing
b) Detecting geometric shapes like lines and circles in edge images
c) Image compression
d) Histogram equalization
**Answer: b) Detecting geometric shapes like lines and circles in edge images**
*Explanation: It is a powerful technique for finding shapes even in the presence of broken edges.*

**144. In region merging, two adjacent regions are merged if they are:**
a) Of different sizes
b) Similar according to a predefined predicate
c) Both very dark
d) Both very bright
**Answer: b) Similar according to a predefined predicate**
*Explanation: The predicate defines the criterion for similarity, such as difference in mean intensity being below a threshold.*

**145. The concept of "m-adjacency" is used to resolve ambiguities in:**
a) Intensity quantization
b) Pixel connectivity
c) Frequency domain filtering
d) Color models
**Answer: b) Pixel connectivity**
*Explanation: It helps to eliminate multiple paths between pixels that can occur when using 8-adjacency.*

**146. A key advantage of frequency domain filtering over spatial domain filtering is:**
a) It is always computationally faster
b) The concept of "filtering" is more intuitive
c) It is easier to implement
d) It provides a more direct control over the frequency components
**Answer: d) It provides a more direct control over the frequency components**
*Explanation: You can design a filter H(u, v) to directly attenuate or enhance specific frequencies.*

**147. The degradation function H(u, v) is also known as the:**
a) Noise model
b) Optical Transfer Function (OTF)
c) Intensity transformation
d) Segmentation mask
**Answer: b) Optical Transfer Function (OTF)**
*Explanation: In the context of optical systems, the Fourier transform of the PSF is called the OTF.*

**148. The main purpose of a high-boost filter is to:**
a) Sharpen an image while preserving the background
b) Blur an image
c) Remove salt-and-pepper noise
d) Equalize the histogram
**Answer: a) Sharpen an image while preserving the background**
*Explanation: It is a generalization of unsharp masking that allows for amplifying the high-frequency components by a variable factor.*

**149. The component of a color image that is most aligned with the human perception of brightness is the _____ in the HSI model.**
a) Hue
b) Saturation
c) Intensity
d) Chroma
**Answer: c) Intensity**
*Explanation: The I component in HSI is a measure of brightness, separate from the color information.*

**150. The segmentation technique that groups pixels directly based on their spatial proximity and intensity similarity is:**
a) Edge detection
b) Hough transform
c) Region growing
d) Global thresholding
**Answer: c) Region growing**
*Explanation: Region growing is a classic region-based segmentation method that groups connected pixels with similar properties.*

---

This comprehensive list of 150 MCQs covers the core concepts from the specified chapters of Gonzalez's book. They are designed to test fundamental understanding and application of the material.
