# **LECTURE 1: Robot Behavior** (Questions 1-45)

**1:** What is the defining characteristic of a mobile robot?
A) It must be humanoid in shape
B) It is capable of movement in any given environment
C) It must have artificial intelligence
D) It requires a gantry system
 B - Mobile robots are automatic machines capable of movement in any given environment.

**2:** Which of the following is NOT a primary activity of mobile robots mentioned in the lectures?
A) Moving around
B) Detecting and responding to light
C) Proximity sensing
D) Manufacturing heavy machinery
 D - Manufacturing heavy machinery is not listed; activities include moving, light detection, proximity, contact, communication, and navigation.

**3:** What basic movement capabilities are required for all mobile robots?
A) Only forward movement
B) Forward, reverse, and turning left/right
C) Sideways movement only
D) Vertical lifting capabilities
 B - All mobile robots must move forward, reverse, and turn left or right.

**4:** Why is variable speed considered less important for mobile robots?
A) It consumes too much battery
B) It is often unnecessary for basic navigation
C) It is prohibited by robotics laws
D) Motors cannot handle variable speeds
 B - Variable speed is less important and often unnecessary according to the lecture.

**5:** What is one major problem with using light sensors for detecting light?
A) They are too expensive
B) They may be confused by room lighting
C) They require nuclear power
D) They only work in complete darkness
 B - Room lighting can confuse light sensors.

**6:** What solution is suggested to avoid confusion from room lighting when using light sensors?
A) Using pulsed light sources
B) Turning off room lights permanently
C) Painting the robot black
D) Using sound sensors instead
 A - Pulsed light sources are one way to avoid room lighting confusion.

**7:** How does a light sensor detect a nearby object for proximity sensing?
A) By emitting sound waves
B) By detecting light reflected back from the object
C) By measuring temperature changes
D) By physical contact only
 B - It detects light reflected back from the object.

**8:** What happens when the intensity of reflected light exceeds a certain level in proximity sensing?
A) The robot shuts down
B) The robot knows something is there
C) The sensor breaks
D) The light turns off automatically
 B - The robot detects the presence of an object.

**9:** How can a sideways-aimed light detector be used in mobile robotics?
A) To detect the color of walls
B) To keep a robot at a fixed distance from a wall
C) To communicate with other robots
D) To measure temperature
 B - It can maintain a fixed distance from a wall.

**10:** What is the usual response when a mobile robot's bumper makes contact with an obstacle?
A) It continues pushing forward
B) It reverses a short distance, turns slightly, then moves forward
C) It emits a loud alarm and stops permanently
D) It jumps over the obstacle
 B - Reverse, turn, retry.

**11:** If a robot has a pair of bumpers at front left and right, what advantage does this provide?
A) It can determine the color of obstacles
B) It can work out the best direction to turn
C) It increases robot speed
D) It reduces battery consumption
 B - Dual bumpers help determine optimal turning direction.

**12:** Which navigation method is described as "a common type of robot behavior often used by maze solving robots"?
A) Line Following
B) Wall-Following
C) Homing on a light source
D) Random walking
 B - Wall-following is common for maze solving.

**13:** What is Line Following described as?
A) A form of contact behavior where the robot stays in contact with a painted line
B) A method of flying robots
C) A communication protocol
D) A type of gear system
 A - It's a contact behavior with painted lines.

**14:** Why is controlling motor timing for precise periods insufficient for navigation in free space?
A) Motors don't run at exactly the same speed
B) Turning angles cannot be precisely controlled
C) Wheel slippage occurs
D) All of the above
 D - All these factors cause cumulative errors.

**15:** What can counteract differences between motors in free space navigation?
A) Using tachometers or stepper motors
B) Painting the floor
C) Using heavier batteries
D) Increasing robot weight
 A - Tachometers or stepper motors help, though slippage remains an issue.

**16:** What is a gantry robot's primary operational characteristic?
A) It operates over a clearly defined rectangular area
B) It can move anywhere freely
C) It only moves in circles
D) It operates underwater only
 A - Gantry robots work in defined rectangular volumes.

**17:** Why can't gantry robots lose their position unlike mobile robots?
A) They use GPS exclusively
B) Traveling frames are precisely positioned by x and y coordinates
C) They are heavier
D) They don't have motors
 B - Precise coordinate tracking prevents position loss.

**18:** When are gantry robots typically used in industry?
A) For very light loads
B) When very heavy loads are to be handled
C) For underwater operations
D) For space exploration only
 B - They handle heavy loads.

**19:** In the refrigerator feedback example, what type of feedback is demonstrated?
A) Positive feedback
B) Negative feedback
C) Neutral feedback
D) No feedback
 B - Temperature rise causes cooling (opposing the change).

**20:** What is the function of negative feedback in robotics?
A) To create instability
B) To hold things constant/stable
C) To increase speed continuously
D) To shut down the system
 B - Negative feedback maintains stability.

**21:** In wall-following robots using feedback, what happens when the robot veers toward the wall?
A) The amount of reflected IR increases
B) The robot speeds up
C) The sensor turns off
D) Nothing happens
 A - Increased IR reflection triggers steering away.

**22:** What would happen if motor output lines were crossed in a wall-following robot (positive feedback)?
A) The robot would move perfectly
B) Dramatic instability - veering away or crashing
C) The robot would move backward only
D) Nothing would change
 B - Positive feedback causes instability.

**23:** What type of feedback uses limit switches?
A) Positive feedback only
B) A virtually essential type in robot systems
C) Negative feedback only
D) Digital feedback exclusively
 B - Limit switches provide essential positional feedback.

**24:** In the limit switch example with the ball and pusher (Figure A), what is the state of switch 1?
A) OPEN
B) CLOSED
C) HALF-OPEN
D) BROKEN
 B - Switch 1 is CLOSED in position A.

**25:** In the limit switch example, when the ball is pushed (Figure B), what happens to switch 2?
A) It remains OPEN
B) It becomes CLOSED
C) It disappears
D) It explodes
 B - Switch 2 closes when contacted.

**26:** What produces random behavior in robots?
A) Number generation routines (pseudo-random)
B) Broken sensors
C) High battery voltage
D) Solar power fluctuations
 A - Pseudo-random number generation.

**27:** What is a Monte Carlo Walk characterized by?
A) Moving in straight lines only
B) Usually staying in more-or-less the same place
C) Moving at maximum speed constantly
D) Following walls perfectly
 B - Random walks tend to stay localized.

**28:** How can a robot learn to solve a maze using random behavior?
A) By remembering successful choices at junctions
B) By moving faster
C) By using heavier batteries
D) By disabling sensors
 A - Learning by trial and error with memory.

**29:** In subsumption architecture, when a robot detects an obstacle while homing toward a light, what happens?
A) It continues homing behavior
B) It stops homing and enters avoidance behavior
C) It turns off all sensors
D) It moves backward indefinitely
 B - Obstacle avoidance subsumes homing.

**30:** At what point in the subsumption example does the robot resume homing behavior?
A) Immediately after detecting the obstacle
B) Once it has avoided the obstacle and has a clear path
C) Never
D) Only when the light turns off
 B - After clearing the obstacle.

**31:** Why is programming simultaneous activities on a single controller difficult?
A) Controllers can only execute one instruction at a time
B) It is possible but difficult
C) Robots don't need simultaneous activities
D) Sensors prevent multitasking
 B - It's possible but challenging.

**32:** What is distributed processing in robotics?
A) Splitting tasks between two or more controllers
B) Using only one powerful CPU
C) Distributing robot parts geographically
D) Sharing battery power
 A - Multiple independent controllers with handshaking.

**33:** In the gantry robot example, what are PIC1 and PIC2?
A) Types of sensors
B) Two controllers for complicated activities
C) Battery types
D) Programming languages
 B - PIC1 on main frame, PIC2 on x-frame.

**34:** What does "dead reckoning" refer to in mobile robot navigation?
A) Using only GPS
B) Estimating position from wheel encoders without external references
C) A type of battery
D) A navigation method using only sound
 B - Integration of wheel movements from known start.

**35:** What causes dead reckoning errors to grow over time?
A) Wheel slippage and surface variations
B) Perfect measurement
C) High battery voltage
D) Using too many sensors
 A - Cumulative errors from slippage.

**36:** What is the main advantage of using mobile robots in education compared to mathematical models?
A) They are cheaper
B) Students can relate to tangible, self-contained real-world systems
C) They require less programming
D) They never break
 B - Tangibility and real-world relevance.

**37:** Why are "real-world hardware" problems harder than theoretical software problems?
A) Actuators have positioning inaccuracies and sensors have reading errors
B) They require more typing
C) Computers are slower
D) Software is more complex
 A - Hardware imperfections must be overcome.

**38:** What is the EyeCon controller primarily designed to interface with?
A) Only temperature sensors
B) A digital camera for onboard image processing
C) Only servo motors
D) Hydraulic systems
 B - The "Eye" in EyeCon refers to camera interface.

**39:** What is the clock speed of the EyeCon's Motorola M68332 processor?
A) 25MHz
B) 100MHz
C) 1GHz
D) 4MHz
 A - 25MHz 32-bit controller.

**40:** How much RAM does the EyeCon have (base configuration)?
A) 1MB
B) 512KB
C) 2MB
D) 256KB
 A - 1MB RAM, extendable to 2MB.

**41:** How many DC motors with encoders can the EyeCon interface with?
A) 1
B) 2
C) 4
D) 12
 B - 2 DC motors with encoders.

**42:** What is the resolution of the EyeCon's graphics LCD?
A) 128×64 pixels
B) 1920×1080 pixels
C) 640×480 pixels
D) 64×64 pixels
 A - 128×64 pixels.

**43:** How many servos can the EyeCon control?
A) 4
B) 8
C) 12
D) 16
 C - 12 servos.

**44:** What type of sensor is used for "homing on a light source"?
A) Tactile sensor
B) Light sensor
C) Temperature sensor
D) Pressure sensor
 B - Light detection.

**45:** Which navigation technique is described as "one of the most reliable techniques for guiding a robot from one place to another"?
A) Random walking
B) Line following
C) Monte Carlo methods
D) Dead reckoning
 B - Line following is noted as very reliable.

---

# **LECTURE 2: Mobile Robot Types & Mechanics** (Questions 46-90)

**46:** What transition in computing is mobile robotics following?
A) From PCs to mainframes
B) From mainframe computing via workstations to PCs and handheld devices
C) From analog to digital only
D) From electricity to solar power
 B - The miniaturization trend.

**47:** What were mobile robots historically controlled by?
A) Heavy, large, expensive computer systems
B) Small embedded systems
C) Human operators only
D) Mechanical clocks
 A - Previously large external computers.

**48:** What are modern small mobile robots controlled by?
A) Inexpensive, small, light embedded computer systems
B) Mainframe computers carried on trailers
C) Human brains
D) Steam engines
 A - Modern embedded controllers.

**49:** Which engineering disciplines use mobile robots according to the lecture?
A) Only Mechanical Engineering
B) Computer Science, Computer Engineering, IT, Electrical, and Mechanical Engineering
C) Only Biology
D) Only Civil Engineering
 B - Five disciplines listed.

**50:** What is the "perfect world" assumption in pure software systems?
A) That hardware has infinite precision
B) That actuators and sensors work without errors
C) That robots can fly
D) That programming is easy
 B - Software assumes perfect hardware.

**51:** How many types of "Eye robots" are developed?
A) 3
B) 4
C) 5
D) 6
 C - 5 types: Wheeled, Tracked, Legged, Flying, Underwater.

**52:** What is the simplest case of mobile robots?
A) Legged robots
B) Wheeled robots
C) Flying robots
D) Swimming robots
 B - Wheeled robots are simplest.

**53:** How many motors are required for most wheeled robot designs for driving and steering?
A) One
B) Two
C) Four
D) Six
 B - Two motors total.

**54:** In the three-wheeled design with one steered wheel (left side of slide), how many motors are used?
A) One for driving, one for steering (completely separated)
B) Two for driving only
C) Three motors
D) None
 A - One drive motor, one steering motor.

**55:** What is Ackermann Steering?
A) Standard drive and steering system of rear-driven passenger cars
B) A type of sensor
C) A programming language
D) A battery technology
 A - Car-like steering with differential and steering motor.

**56:** What is the main disadvantage of all wheeled robots?
A) They require a street or flat surface
B) They are too fast
C) They cannot turn
D) They are too expensive
 A - Need flat terrain.

**57:** What advantage do tracked robots have over wheeled robots?
A) They can navigate over rough terrain
B) They are faster
C) They use less power
D) They are cheaper
 A - Better rough terrain capability.

**58:** What is the disadvantage of tracked robots compared to wheeled robots?
A) They cannot navigate as accurately
B) They are too quiet
C) They require less maintenance
D) They are lighter
 A - Less navigation precision.

**59:** What is the Mecanum drive?
A) An omni-directional wheeled robot using four special driven wheels
B) A type of track system
C) A servo motor
D) A sensor array
 A - Omni-directional special wheels.

**60:** For legged robots, what is the general rule regarding the number of legs?
A) Fewer legs are easier to balance
B) The more legs, the easier to balance
C) Only two legs work
D) Legs don't affect balance
 B - More legs = easier balance.

**61:** How many legs on the ground does a six-legged robot typically keep for stability?
A) One
B) Two
C) Three (forming a tripod)
D) Six
 C - Tripod gait.

**62:** How many motors ("degrees of freedom") does a six-legged robot require at minimum?
A) 6
B) 12
C) 18
D) 24
 B - 2 per leg × 6 legs.

**63:** Why can't a biped robot use the tripod stability trick?
A) It has only two legs
B) It has no feet
C) It is too heavy
D) It moves too fast
 A - Only two contact points.

**64:** In Braitenberg vehicles with direct connection (left sensor to left motor), what happens when the robot veers off course toward a light source?
A) It corrects toward the light
B) It curves away and misses the light
C) It stops immediately
D) It moves backward
 B - Direct connection causes divergence.

**65:** In Braitenberg vehicles with crossed connections (left sensor to right motor), what happens when veering right?
A) The left sensor accelerates the right motor, causing a left curve
B) The robot stops
C) It speeds up
D) It moves straight
 A - Crossed connections provide negative feedback/correction.

**66:** What interfaces are available on most embedded systems?
A) Digital inputs, digital outputs, and analog inputs
B) Only digital outputs
C) Only analog inputs
D) Wireless only
 A - Standard I/O types.

**67:** Why are analog outputs not always required on embedded systems?
A) They need additional amplifiers to drive actuators
B) They are illegal
C) They consume too much memory
D) Robots don't use analog signals
 A - Require amplification.

**68:** What is the typical frame rate vs resolution trade-off in robot cameras?
A) High frame rate preferred over high resolution for moving robots
B) High resolution is always better
C) Frame rate doesn't matter
D) Robots don't use cameras
 A - Speed of update is critical.

**69:** What resolution is mentioned as sufficient for small mobile robot applications?
A) 60×80 pixels
B) 4K resolution
C) 1080p
D) 1 megapixel
 A - 60×80 is sufficient for many tasks.

**70:** What is the simplest camera interface to a CPU?
A) Camera clock linked to CPU interrupt, parallel data to data bus
B) USB connection only
C) Bluetooth
D) WiFi
 A - Direct interrupt and bus connection.

**71:** Why is one interrupt per image byte not the best solution?
A) Considerable overhead from saving/restoring registers
B) It is too fast
C) It uses no power
D) It is impossible
 A - High overhead per byte.

**72:** What does a FIFO buffer support?
A) Unsynchronized read and write in parallel
B) Only write operations
C) Only read operations
D) Analog signals only
 A - Parallel asynchronous access.

**73:** Which FIFO status line is most important for continuous camera data streaming?
A) Empty flag
B) Full flag
C) Half full flag
D) Overflow flag
 C - Half full triggers bulk read.

**74:** In continuous capture mode, how many buffers are typically used?
A) One
B) Two
C) Four
D) Ten
 B - Double buffering.

**75:** In synchronous continuous capture mode, what happens when a frame is completely read?
A) A trap signal/software interrupt is sent to the application
B) Nothing happens
C) The robot shuts down
D) The camera turns off
 A - Interrupt-driven notification.

**76:** What limits the processing time of the interrupt handler in synchronous continuous capture?
A) The acquisition time for one camera frame
B) The battery life
C) The motor speed
D) The sensor temperature
 A - Must complete before next frame.

**77:** In the "Read mode" camera driver, how long might the application be blocked?
A) Up to two frames
B) Forever
C) One microsecond
D) It is never blocked
 A - Wait for new frame start plus current frame.

**78:** What is the typical frequency of the pulsed infrared LED in IR distance sensors?
A) 40kHz
B) 1MHz
C) 60Hz
D) 100Hz
 A - 40kHz.

**79:** What wavelength is typically used in IR sensors?
A) 880nm
B) 532nm (green)
C) 650nm (red)
D) 1000nm
 A - 880nm (invisible to human eye).

**80:** What is the minimum reliable distance for the Sharp IR sensor mentioned?
A) 6cm
B) 1cm
C) 0cm
D) 20cm
 A - Below 6cm gives incorrect readings.

**81:** What is the safest solution for the 6cm minimum distance limitation of IR sensors?
A) Mechanically mounting the sensor so obstacles never get closer than 6cm
B) Using software to ignore close readings
C) Increasing LED power
D) Decreasing sensor sensitivity
 A - Physical mounting solution.

**82:** What type of output does the Sharp GP2D12 have?
A) Analog output voltage
B) Digital serial output
C) PWM output
D) I2C
 A - Analog voltage.

**83:** What type of output does the Sharp GP2D02 have?
A) Analog output
B) Digital serial output (8-bit)
C) Parallel output
D) USB
 B - Digital serial.

**84:** What happens to black surfaces with IR proximity switches?
A) They absorb light and reflect little, may not be detected
B) They reflect perfectly
C) They glow
D) They emit IR
 A - Black absorbs IR.

**85:** How many directions can simple analog compasses distinguish?
A) 8 directions (N, NE, E, SE, S, SW, W, NW)
B) 360 directions
C) Only 4 directions
D) Infinite directions
 A - 8 directions via voltage levels.

**86:** What is the resolution of the digital compass mentioned in the lecture?
A) 1° with 2° accuracy
B) 10° with 5° accuracy
C) 45° only
D) 0.1°
 A - High precision digital compass.

**87:** What additional sensor can be interfaced via the MPU6050's auxiliary I2C bus?
A) 3-axis Magnetometer for 9-axis motion fusion
B) Only temperature sensors
C) Only pressure sensors
D) GPS only
 A - Magnetometer for complete 9-axis.

**88:** What does an inclinometer measure?
A) Absolute orientation angle
B) Only angular velocity
C) Only linear acceleration
D) Temperature only
 A - Absolute tilt angle.

**89:** What disadvantage do inclinometers have compared to gyroscopes?
A) Time lag and prone to oscillation from positional noise
B) They are faster
C) They are cheaper
D) They have no disadvantages
 A - Slower response and noise sensitivity.

**90:** What is the ideal solution for orientation measurement according to the lecture?
A) Combination of inclinometer and gyroscope
B) Gyroscope only
C) Inclinometer only
D) Compass only
 A - Sensor fusion.

---

# **LECTURE 3: Sensors - Classification & Advanced Types** (Questions 91-180)

**91:** What are the three fundamental components that make a machine a robot?
A) Sensing, Planning, Acting
B) Wheels, Motors, Battery
C) Metal, Plastic, Software
D) Camera, GPS, Internet
 A - The SPA cycle.

**92:** What does the "Sensing" component provide information about?
A) The environment
B) The robot's favorite color
C) Historical data only
D) Future predictions
 A - Environmental information.

**93:** What is localization in robotics?
A) Determining "Where am I?"
B) Finding local restaurants
C) Speaking local languages
D) Using local batteries
 A - Position determination.

**94:** What is the standard method for self-localization in driving robots using wheel sensors?
A) Dead reckoning
B) Crystal ball gazing
C) Asking humans
D) Magnetic levitation
 A - Integration of wheel movements.

**95:** What does "internal sensor" monitor?
A) Robot's internal state (battery, motor speed, temperature)
B) External weather
C) Other robots
D) Human emotions
 A - Internal parameters.

**96:** What does "external sensor" monitor?
A) Robot's environment (obstacles, lights, walls)
B) Internal battery voltage
C) CPU temperature
D) Memory usage
 A - External world.

**97:** What characterizes active sensors?
A) They stimulate the environment for measurement (sonar, laser, IR)
B) They only listen passively
C) They don't use power
D) They are always digital
 A - Emit energy to measure.

**98:** What characterizes passive sensors?
A) They monitor without disturbing (camera, gyroscope)
B) They emit ultrasound
C) They require high power
D) They only work at night
 A - Non-disturbing observation.

**99:** What is a binary sensor's output?
A) Single bit: 0 or 1
B) 0-255 range
C) -10V to +10V
D) A text string
 A - Digital binary.

**100:** What is a typical example of a binary sensor?
A) Tactile sensor (bumper/micro-switch)
B) Camera
C) Microphone
D) Compass
 A - Contact switch.

**101:** What does an analog sensor require to connect to a microcontroller?
A) A/D converter
B) Only a wire
C) A mechanical gear
D) A laser
 A - Analog-to-digital conversion.

**102:** Which of these is NOT listed as an analog sensor example?
A) Microphone
B) Analog IR distance sensor
C) Digital camera
D) Barometer
 C - Digital camera is digital.

**103:** What does "synchronous serial" interface mean for digital sensors?
A) Data read bit by bit with clock pulses from CPU
B) Data sent all at once in parallel
C) Data sent wirelessly
D) Data stored on disk
 A - Bit-serial with clock.

**104:** In CPU-initiated (polling) data transfer, what must the CPU do?
A) Keep checking status lines in a loop
B) Wait for an interrupt
C) Do nothing
D) Sleep
 A - Active polling.

**105:** Which data transfer method is more time-consuming for the CPU?
A) Polling
B) Interrupt-driven
C) Both are equal
D) Neither uses CPU time
 A - Polling wastes cycles.

**106:** What do shaft encoders measure?
A) Angular position/rotation of motor shafts
B) Temperature
C) Light intensity
D) Sound volume
 A - Rotational position.

**107:** What are the two most widely used encoder techniques?
A) Magnetic and Optical
B) Chemical and Biological
C) Thermal and Pressure
D) Capacitive and Inductive only
 A - Magnetic or optical.

**108:** How many pulses does a 16-sector disk produce per revolution?
A) 16
B) 32
C) 8
D) 64
 A - One per segment.

**109:** Why do most encoders use two sensors (quadrature encoding)?
A) To determine direction of rotation
B) To double the voltage
C) For redundancy only
D) To measure temperature
 A - Phase shift detects direction.

**110:** If Encoder 1 receives signal before Encoder 2, what is the rotation direction?
A) Clockwise
B) Counter-clockwise
C) Stopped
D) Unknown
 A - CW (depending on mounting).

**111:** What hardware feature do modern microcontrollers have for encoder counting?
A) Pulse counting registers
B) Built-in cameras
C) Nuclear reactors
D) Mechanical gears
 A - Hardware counters independent of CPU.

**112:** Where are encoders usually mounted on geared motors?
A) Directly on motor shaft (before gearbox)
B) On the output wheel
C) On the battery
D) On the sensor board
 A - Before gearbox for full resolution.

**113:** If an encoder detects 16 ticks/rev and gearbox is 100:1, what is wheel resolution?
A) 1,600 ticks per wheel revolution
B) 16 ticks
C) 100 ticks
D) 0.16 ticks
 A - 16 × 100.

**114:** What is the limitation of incremental encoders?
A) They only count changes from starting point, not absolute position
B) They measure temperature
C) They are too heavy
D) They only work underwater
 A - Relative, not absolute.

**115:** What do absolute encoders measure?
A) True absolute angular position
B) Only speed
C) Only acceleration
D) Only direction
 A - Absolute position.

**116:** What type of code disk do absolute encoders typically use?
A) Gray code
B) Binary code only
C) Morse code
D) Barcode
 A - Gray code (only one bit changes between sectors).

**117:** Why is Gray code essential for absolute encoders?
A) Only a single bit changes between neighboring sectors, preventing arbitrary readings at boundaries
B) It uses fewer sensors
C) It is cheaper
D) It is prettier
 A - Robust transition between sectors.

**118:** With 3 sensors on a Gray code disk, what is the resolution?
A) 8 sectors (2³)
B) 3 sectors
C) 6 sectors
D) 256 sectors
 A - 2^n sectors.

**119:** What would happen with standard binary encoding at the transition between 111 and 000?
A) Result could be arbitrary during transition
B) Nothing special
C) It works better
D) The sensor breaks
 A - Multiple bits change simultaneously.

**120:** What three characteristics define A/D converters?
A) Accuracy (bits), Speed (conversions/sec), Range (volts)
B) Color, weight, size
C) Brand, price, origin
D) Voltage, current, resistance
 A - Resolution, sampling rate, input range.

**121:** How is the digital value calculated in an A/D converter?
A) Digital = (Analog × 2^n) / Vref
B) Digital = Analog + Voltage
C) Digital = Resistance × Current
D) Digital = Temperature × Time
 A - Standard ADC formula.

**122:** What does the TC72 temperature sensor use?
A) Synchronous serial digital output interface
B) Analog voltage only
C) Parallel 16-bit interface
D) USB 3.0
 A - SPI-like interface.

**123:** How many clock cycles are needed to read the TC72 example in the lecture?
A) 9 cycles
B) 1 cycle
C) 100 cycles
D) Infinite cycles
 A - 9 cycles mentioned.

**124:** What frequency range do sonar sensors typically use?
A) 50kHz to 250kHz
B) 1Hz to 10Hz
C) 1MHz to 10MHz
D) 100MHz
 A - Ultrasonic range.

**125:** How long is the acoustic signal pulse in sonar sensors?
A) About 1ms
B) 1 second
C) 1 minute
D) 1 nanosecond
 A - 1 millisecond pulse.

**126:** How is distance calculated in sonar sensors?
A) Time-of-flight is proportional to twice the distance
B) By color of the obstacle
C) By temperature of the air
D) By robot speed
 A - Round-trip time measurement.

**127:** How many times per second are sonar measurements typically repeated?
A) About 20 times/second
B) Once per minute
C) 1000 times/second
D) Continuously without pause
 A - 20 Hz update rate.

**128:** How many sonar sensors are typically required for a 360° mapping with 15° cones?
A) 24 sensors
B) 4 sensors
C) 100 sensors
D) 1 sensor
 A - 360/15 = 24.

**129:** What is the main disadvantage of sonar sensors regarding reflections?
A) Signals reflect off walls at angles, making obstacles appear further
B) They don't reflect at all
C) They absorb all sound
D) Reflections improve accuracy
 A - Angular reflection errors.

**130:** What is interference in sonar systems?
A) One sensor picking up signals from another sensor
B) Radio interference only
C) GPS blocking
D) Battery drain
 A - Cross-talk between sensors.

**131:** What solution prevents sonar interference?
A) Coded sonar signals using pseudo-random codes
B) Using only one sensor
C) Turning sensors off
D) Using lower frequencies
 A - Signal coding.

**132:** Why can't simple IR sensors use time-of-flight like sonar?
A) Time-of-flight for photons is too short to measure simply
B) Light is too slow
C) Photons don't travel in straight lines
D) IR doesn't reflect
 A - Speed of light is too fast for simple timing.

**133:** What principle do IR distance sensors use instead of time-of-flight?
A) Triangulation using angle of reflected beam
B) Sound waves
C) Radio waves
D) Pressure changes
 A - Geometric triangulation.

**134:** What component in IR sensors detects the angle of the reflected beam?
A) Position Sensitive Detector (PSD)
B) Thermometer
C) Microphone
D) Accelerometer
 A - PSD array.

**135:** What is the typical relationship between IR sensor output voltage and distance?
A) Non-linear (inverse relationship)
B) Perfectly linear
C) Exponential growth
D) Constant regardless of distance
 A - Non-linear curve.

**136:** Why do IR sensors give incorrect readings below 6cm?
A) The triangulation geometry breaks down at close range
B) The LED turns off
C) The sensor overheats
D) The voltage increases linearly
 A - Physical limitation of triangulation.

**137:** What do IR proximity switches return?
A) Only 0 or 1 (binary) based on threshold distance
B) Precise distance in centimeters
C) Temperature readings
D) Color information
 A - Binary detection.

**138:** What advantage do IR proximity switches have over tactile micro-switches?
A) No moving parts involved
B) They are mechanical
C) They require more force
D) They are slower
 A - Solid-state reliability.

**139:** What is the resolution of the digital compass mentioned?
A) 1 degree
B) 45 degrees
C) 90 degrees
D) 360 degrees (one sector)
 A - 1° resolution.

**140:** What is the accuracy of the digital compass mentioned?
A) 2 degrees
B) 0.1 degrees
C) 10 degrees
D) 180 degrees
 A - ±2° accuracy.

**141:** What does an accelerometer measure?
A) Linear acceleration (a) in x-y-z axes
B) Angular velocity only
C) Temperature only
D) Magnetic fields only
 A - Linear acceleration.

**142:** What does a gyroscope measure?
A) Angular velocity (ω) around x-y-z axes
B) Linear speed
C) Distance traveled
D) Battery voltage
 A - Rate of rotation.

**143:** What technology do modern inertial sensors use?
A) MEMS (Micro-Electro-Mechanical Systems)
B) Vacuum tubes
C) Mechanical gyroscopes only
D) Nuclear magnetic resonance
 A - MEMS technology.

**144:** How is orientation angle determined from gyroscope data?
A) Integration of angular velocity over time
B) Direct measurement
C) By compass only
D) By GPS only
 A - Mathematical integration.

**145:** What is the formula for digital integration of gyroscope data shown in the lecture?
A) θ(nT) = T × Σ ω(k)
B) θ = ω / t
C) θ = ω × t²
D) θ = sin(ω)
 A - Summation of sampled angular velocities.

**146:** How many axes does the MPU6050 measure?
A) 6 axes (3 gyro + 3 accel)
B) 3 axes only
C) 9 axes
D) 1 axis
 A - Complete 6-axis motion tracking.

**147:** What bus interface does the MPU6050 use?
A) I2C
B) USB
C) Ethernet
D) Bluetooth
 A - I2C communication.

**148:** What additional feature does the MPU6050 have on-chip?
A) Temperature sensor
B) GPS
C) Camera
D) Speaker
 A - Temperature sensing.

**149:** How is the tracked object position obtained from accelerometers?
A) Double integration over time of accelerations (after removing gravity)
B) Single integration
C) No integration needed
D) By counting pulses
 A - Integrate acceleration to get velocity, integrate velocity to get position.

**150:** Why must gravitational acceleration be subtracted from accelerometer data?
A) To isolate the motion-induced acceleration from the static gravity vector
B) To increase noise
C) To save power
D) Gravity is not measured by accelerometers
 A - Gravity is always present and must be compensated.

**151:** What coordinate transformation is required for accelerometer data?
A) From body coordinates to world coordinates using orientation from gyroscope
B) From analog to digital only
C) From Celsius to Fahrenheit
D) No transformation needed
 A - Reference frame transformation.

**152:** What is the main advantage of gyroscopes over inclinometers for balancing robots?
A) Immediate response (no time lag)
B) Lower cost
C) Higher accuracy long-term
D) Simpler calibration
 A - Faster response time.

**153:** What is the main disadvantage of inclinometers?
A) Time lag and susceptibility to oscillation from positional noise
B) They are too fast
C) They measure absolute position too accurately
D) They don't need gravity
 A - Dynamic response limitations.

**154:** What is the ideal sensor combination for orientation measurement?
A) Inclinometer + Gyroscope (sensor fusion)
B) Gyroscope only
C) Inclinometer only
D) Compass only
 A - Complementary filtering/fusion.

**155:** What does a 10% duty cycle PWM signal look like?
A) Narrow pulses with long off-time
B) Square wave 50% on/off
C) Almost always on
D) No pulses at all
 A - Short on-time relative to period.

**156:** What does a 90% duty cycle PWM signal look like?
A) Wide pulses with short off-time
B) Narrow pulses
C) No signal
D) Random pulses
 A - Mostly on, briefly off.

**157:** What happens when PWM duty cycle is 0%?
A) Load is fully off
B) Load is fully on
C) Load explodes
D) Load rotates at maximum speed
 A - No power delivered.

**158:** What happens when PWM duty cycle is 100%?
A) Load is fully on (continuous voltage)
B) Load is off
C) Load receives no voltage
D) System shuts down
 A - Full power delivered.

**159:** Why is PWM preferred over resistor voltage dividers for motor control?
A) Resistors waste power as heat and are impractical for high power
B) Resistors are more efficient
C) PWM is more expensive
D) PWM requires bigger components
 A - Efficiency and heat dissipation.

**160:** What is the relationship between motor speed and duty cycle?
A) Non-linear (requires calibration table)
B) Perfectly linear
C) Inversely linear
D) No relationship
 A - Non-linear response.

**161:** What external factors affect actual motor speed besides PWM duty cycle?
A) Load weight and surface roughness
B) Color of the robot
C) Time of day
D) Robot's name
 A - Environmental and loading factors.

**162:** What is the frequency of the PWM signal for servo motors?
A) 50Hz (period T=20ms)
B) 1kHz
C) 1MHz
D) 0.1Hz
 A - Standard servo frequency.

**163:** What pulse width rotates a servo to the leftmost position (-120°)?
A) 0.7ms
B) 1.5ms
C) 2.0ms
D) 20ms
 A - 0.7ms pulse.

**164:** What pulse width rotates a servo to the rightmost position (+120°)?
A) 1.7ms
B) 0.5ms
C) 1.0ms
D) 20ms
 A - 1.7ms pulse.

**165:** What pulse width represents the center position (0°) for a servo?
A) 1.2ms
B) 0.7ms
C) 1.7ms
D) 2.5ms
 A - Approximately 1.2-1.5ms (center varies, 1.2ms mentioned in diagram).

**166:** What does the ratio in servo PWM determine?
A) Servo position (angle), not speed
B) Speed only
C) Temperature
D) Battery level
 A - Position control.

**167:** What are the three wires on a standard servo?
A) Power (+5V), Ground (0V), Control (PWM)
B) Red, Green, Blue
C) Input, Output, Processing
D) Positive, Negative, Neutral
 A - Standard servo wiring.

**168:** What distinguishes a standard servo from a continuous rotation servo?
A) Standard: 0-180° positioning; Continuous: 360° rotation
B) Standard is faster
C) Continuous is more precise
D) Standard uses AC, Continuous uses DC
 A - Range of motion difference.

**169:** What type of control loop do servo motors use?
A) Closed-loop with position feedback
B) Open-loop only
C) No control loop
D) Random control
 A - Feedback control for positioning.

**170:** What component provides position feedback in a servo?
A) Potentiometer
B) Thermometer
C) Barometer
D) Hydrometer
 A - Variable resistor for position.

**171:** Where are servos commonly used?
A) Robotic arms, legs, sensor scanners, RC toys
B) Only in industrial welding
C) Only in space stations
D) Only in underwater vehicles
 A - Precision positioning applications.

**172:** What is a strength of servo motors?
A) High performance and small size
B) Very low cost
C) Unlimited power
D) No wiring required
 A - Performance and packaging.

**173:** What is a weakness of servo motors?
A) Slightly higher cost and performance limited by controls
B) They are too weak
C) They are too large
D) They cannot stop
 A - Cost and control complexity.

**174:** What type of robot uses "dead reckoning"?
A) Autonomous driving robots with wheel encoders
B) Flying robots only
C) Underwater robots only
D) Stationary industrial arms
 A - Mobile ground robots.

**175:** Why does dead reckoning error grow larger over time?
A) Wheel slippage and surface variations cause cumulative errors
B) The battery drains
C) The sensors improve
D) The robot speeds up
 A - Integration of errors.

**176:** What sensor helps correct dead reckoning errors?
A) Compass (absolute orientation)
B) Temperature sensor
C) Humidity sensor
D) Light sensor
 A - Absolute heading reference.

**177:** Where do GPS modules work?
A) Only outdoors in unobstructed areas
B) Indoors only
C) Underwater
D) Underground mines
 A - Requires satellite visibility.

**178:** What is the binary sensor interface circuit shown in the lecture (tactile sensor)?
A) Pull-up resistor with switch to ground
B) Operational amplifier
C) H-bridge
D) A/D converter
 A - 10k pull-up resistor circuit.

**179:** What voltage does the binary sensor output when the switch is open (not touched)?
A) High (Vcc, e.g., 5V)
B) Low (0V)
C) 2.5V
D) Random voltage
 A - Pull-up keeps it high when open.

**180:** What voltage does the binary sensor output when the switch is closed (touched)?
A) Low (0V, grounded)
B) High (5V)
C) 3.3V
D) Floating
 A - Switch pulls to ground.

---

# **LECTURE 4: Actuators** (Questions 181-300)

**181:** What is the primary function of actuators in robots?
A) To produce mechanical movement
B) To sense temperature
C) To store data
D) To display images
 A - Motion generation.

**182:** What are the three main types of actuators mentioned?
A) Electrical, Hydraulic, Pneumatic
B) Digital, Analog, Binary
C) Big, Medium, Small
D) Fast, Slow, Medium
 A - Energy source classification.

**183:** Which actuators are most common in mobile robots?
A) Electric motors
B) Hydraulic pistons
C) Pneumatic cylinders
D) Steam engines
 A - Electric motors dominate mobile robotics.

**184:** What do pneumatic and hydraulic actuators use?
A) Compressed air/oil to produce motion
B) Electricity only
C) Nuclear power
D) Solar power only
 A - Fluid power.

**185:** Where are pneumatic/hydraulic actuators mainly used?
A) Industry for large manipulation tasks
B) Small mobile robots primarily
C) Only in space
D) Only underwater
 A - Industrial applications.

**186:** What are the four types of electrical actuators listed?
A) DC motors, AC motors, Stepper motors, Servos
B) Only DC motors
C) Only AC motors
D) Solar motors
 A - Four electrical types.

**187:** What is the physical principle of electric motors?
A) Current in a conductor within a magnetic field produces force
B) Heat expansion
C) Chemical reaction
D) Nuclear fission
 A - Lorentz force principle.

**188:** What are the principle components of a DC motor?
A) Stator (poles), Rotor (armature), Commutator, Brushes
B) Only magnets
C) Only wires
D) Only bearings
 A - Four main components.

**189:** What is the stator?
A) The stationary outer casing with magnetic poles
B) The rotating part
C) The battery
D) The sensor
 A - Static component.

**190:** What is the rotor (armature)?
A) Cylindrical ferrous core rotating within stator with windings
B) The stationary part
C) The casing
D) The remote control
 A - Rotating component.

**191:** What is the commutator?
A) Rotary switch reversing current direction twice per cycle
B) Static battery holder
C) Type of sensor
D) Programming language
 A - Current reversal mechanism.

**192:** What is the function of brushes?
A) Carry direct current to the coils via contact with commutator
B) Clean the robot
C) Paint the robot
D) Cool the motor
 A - Electrical contact.

**193:** How does the commutator maintain rotation direction?
A) Reverses polarity as poles pass permanent magnets, inertia carries through switching
B) Keeps polarity constant
C) Randomly changes
D) Stops the motor
 A - Synchronization of switching.

**194:** What is the typical speed range of DC motors?
A) 1000 to 5000 RPM
B) 1 to 10 RPM
C) 100,000 RPM
D) 0 RPM (stationary)
 A - High base speed.

**195:** Why is 1000-5000 RPM too high for mobile robots?
A) Wheels would spin too fast/loss of control
B) Motors overheat at high speed
C) Batteries drain too slowly
D) Sensors can't handle speed
 A - Mechanical reduction needed.

**196:** What are the two ways to reduce motor speed?
A) Gearbox and reducing driving power (voltage/current)
B) Using smaller wheels only
C) Adding weight only
D) Painting the motor black
 A - Mechanical or electrical reduction.

**197:** How is speed reduction achieved with gears?
A) Motor shaft on smaller gear, output from larger gear (ratio N1/N2)
B) Using same size gears
C) Using lubricant only
D) By heating the gears
 A - Gear ratio mechanics.

**198:** If gear 1 has 10 teeth and gear 2 has 50 teeth, what is the speed reduction?
A) 5:1 reduction (output is 1/5 speed, 5× torque)
B) 1:1
C) 50:1
D) 10:1
 A - 50/10 = 5.

**199:** What is a gearbox?
A) Multiple gear arrangement for high reduction ratios
B) A storage box for gears
C) A type of sensor
D) A battery compartment
 A - Multi-stage gearing.

**200:** What happens to torque when speed is reduced by a gearbox?
A) Torque/Force increases proportionally
B) Torque decreases
C) Torque stays the same
D) Torque becomes zero
 A - Power conservation (speed ↓, torque ↑).

**201:** What is an encapsulated DC motor?
A) Single package including DC motor, gearbox, and shaft encoder
B) Motor covered in plastic wrap
C) Motor in a box
D) Submerged motor
 A - Integrated actuator unit.

**202:** What are three advantages of DC motors?
A) Simple, Cheap, Easy to control
B) Expensive, Complex, Difficult
C) Heavy, Large, Slow
D) Rare, Fragile, Complicated
 A - Key benefits.

**203:** What is an H-Bridge?
A) Electronic circuit allowing motor to run in both directions
B) Bridge for crossing rivers
C) Type of sensor array
D) Battery holder with 4 slots
 A - Bidirectional motor driver.

**204:** How many electronic switches are in an H-Bridge?
A) 4 switches in bridge configuration
B) 1 switch
C) 10 switches
D) No switches
 A - Four switching elements.

**205:** What happens when SW1 and SW2 are closed in an H-Bridge?
A) Current flows left to right (forward)
B) Current flows right to left
C) Short circuit
D) Nothing happens
 A - Forward direction.

**206:** What happens when SW3 and SW4 are closed in an H-Bridge?
A) Current flows right to left (reverse)
B) Current flows left to right
C) Motor explodes
D) Battery drains instantly
 A - Reverse direction.

**207:** What happens if SW1 and SW3 are closed simultaneously?
A) Short circuit (shoot-through)
B) Motor runs forward
C) Motor runs backward
D) Nothing
 A - Forbidden state (direct short).

**208:** What is a "half H-Bridge"?
A) Two switches that can output either Vcc or GND
B) Full bridge with 4 switches
C) Broken bridge
D) Sensor interface
 A - One side of the bridge.

**209:** How many half H-Bridges are needed for a full H-Bridge?
A) Two
B) One
C) Four
D) Eight
 A - Two half-bridges.

**210:** What is the L293D?
A) Integrated circuit for DC motor drive (two full H-bridges/four half H-bridges)
B) Temperature sensor
C) Camera module
D) Bluetooth chip
 A - Motor driver IC.

**211:** How many motors can the L293D control?
A) Two motors with direction control
B) One motor only
C) Ten motors
D) No motors
 A - Dual motor driver.

**212:** What are the supply voltages for the L293D?
A) VCC1 (Logic 5V) and VCC2 (Motor 12V)
B) Only 5V
C) Only 12V
D) 120V AC
 A - Dual supply (logic and motor).

**213:** What do the "Enable" pins on the L293D do?
A) Turn ON/OFF the half H-bridges
B) Control speed directly
C) Measure temperature
D) Store data
 A - Chip enable/disable.

**214:** What is PWM used for in motor control?
A) Adjusting effective voltage/power by varying ON/OFF ratio
B) Changing motor color
C) Measuring temperature
D) Storing programs
 A - Speed control via duty cycle.

**215:** What does PWM stand for?
A) Pulse Width Modulation
B) Pulse Wave Mode
C) Power Wire Management
D) Programmed Weight Measure
 A - Pulse Width Modulation.

**216:** At what frequency does PWM switch?
A) High frequency (much faster than motor mechanical response)
B) 1 Hz (once per second)
C) 0.001 Hz
D) Variable based on battery
 A - Fast switching appears as average voltage.

**217:** What is the duty cycle?
A) Ratio of TON/Tperiod as percentage
B) The length of the wire
C) The weight of the motor
D) The color of the LED
 A - Percentage of ON time.

**218:** If PWM has 10% duty cycle, what is the average voltage compared to full voltage?
A) 10% of full voltage
B) 100% of full voltage
C) 50% of full voltage
D) 0% of full voltage
 A - Proportional to duty cycle.

**219:** Why is PWM efficient compared to resistive voltage division?
A) Full voltage pulses with switching losses only, no resistive heating loss
B) It wastes more power
C) It requires bigger resistors
D) It is slower
 A - Switching is efficient.

**220:** What happens to motor speed as PWM duty cycle increases from 0% to 100%?
A) Speed generally increases (non-linearly)
B) Speed decreases
C) Speed stays constant
D) Motor direction reverses
 A - Positive correlation with duty cycle.

**221:** What is motor calibration?
A) Measuring actual speed at various duty cycles to create lookup table
B) Painting the motor
C) Changing the motor oil
D) Adjusting the sensor
 A - Characterizing actual response.

**222:** Why is the relation between duty cycle and speed non-linear?
A) Due to friction, load, and motor characteristics
B) Because of linear algebra
C) Because PWM is digital
D) Because batteries are linear
 A - Physical system non-linearities.

**223:** What is an open-loop controller?
A) Computes input using only current state and model, no output observation
B) Uses feedback from output
C) Has no input
D) Is always closed
 A - No feedback path.

**224:** When are open-loop controllers typically used?
A) Simple processes where feedback is not critical
B) Critical surgical robots
C) Autonomous vehicles only
D) Nuclear reactors only
 A - Simple, low-cost applications.

**225:** What is a closed-loop controller?
A) Uses feedback to control states or outputs
B) Has no feedback
C) Is always open
D) Uses only feedforward
 A - Feedback control system.

**226:** What is the feedback path in a closed-loop controller?
A) Output measurement fed back to controller input
B) Battery to motor
C) Sensor to environment
D) Motor to wheel
 A - Sensing the output.

**227:** What limits the processing time in synchronous continuous capture camera mode?
A) Acquisition time for one camera frame
B) Battery life
C) Motor speed
D) Temperature
 A - Real-time constraint.

**228:** What is the difference between servo and non-servo robots?
A) Servo uses closed-loop control; Non-servo is open-loop with mechanical stops
B) Servo is bigger
C) Non-servo is more expensive
D) No difference
 A - Control methodology difference.

**229:** What is a servo motor?
A) High-quality DC motor with feedback for position control
B) Simple DC motor without feedback
C) Stepper motor
D) Hydraulic cylinder
 A - Closed-loop actuator.

**230:** What electronic component is typically used for position feedback in hobby servos?
A) Potentiometer
B) Thermistor
C) Photodiode
D) Speaker
 A - Variable resistor.

**231:** What is the standard pulse period for servo control?
A) 20ms (50Hz)
B) 1ms
C) 100ms
D) 1 second
 A - 20ms standard.

**232:** What pulse width represents center position (neutral) in standard servos?
A) 1.5ms (typically)
B) 0.5ms
C) 2.5ms
D) 20ms
 A - Mid-range pulse.

**233:** What is the typical pulse width range for servo control?
A) 0.5ms to 2.0ms (or 2.5ms depending on model)
B) 0ms to 20ms
C) 10ms to 15ms only
D) 50ms to 100ms
 A - 1-2ms typical range.

**234:** What happens if you send a 0.7ms pulse to a standard servo?
A) Rotates to leftmost position (-120° or full left)
B) Centers the servo
C) Rotates to rightmost position
D) Destroys the servo
 A - Minimum position.

**235:** What happens if you send a 2.0ms+ pulse to a standard servo?
A) Rotates to rightmost position (+120° or full right)
B) Centers the servo
C) Stops the servo
D) Reverses the motor
 A - Maximum position.

**236:** Can standard servos rotate continuously like DC motors?
A) No, they are limited to typically 180° (or 120° each side)
B) Yes, unlimited rotation
C) Only if modified
D) Only continuous rotation servos can, not standard servos
 A - Limited travel standard servos.

**237:** What distinguishes a "continuous rotation servo"?
A) Can rotate 360° continuously like a DC motor with position feedback removed/modified
B) Has better precision
C) Is more expensive
D) Uses AC power
 A - Modified for continuous rotation.

**238:** How many wires do most servos have?
A) Three (Power, Ground, Signal)
B) Two only
C) Five
D) Ten
 A - Three-wire standard.

**239:** What color is typically used for the PWM signal wire on servos?
A) Yellow or White (Signal), Red (Power), Black/Brown (Ground)
B) All red
C) All black
D) Rainbow colored
 A - Standard color coding.

**240:** What type of control does a servo use?
A) Closed-loop position control
B) Open-loop speed control
C) No control
D) Random control
 A - Feedback loop for holding position.

**241:** In the L293D pinout, what is pin 16?
A) VCC1 (Logic Supply Voltage 5V)
B) VCC2 (Motor Supply)
C) Ground
D) Enable 1,2
 A - Logic supply.

**242:** In the L293D pinout, what is pin 8?
A) VCC2 (Motor Supply Voltage)
B) VCC1
C) Input 1
D) Output 1
 A - Motor power supply.

**243:** What happens to the motor in the L293D simulation when EN1 is high, IN1=1, IN2=0?
A) Motor runs forward (positive speed)
B) Motor runs backward
C) Motor brakes
D) Motor is free running
 A - Forward direction.

**244:** What happens when EN1 is high, IN1=0, IN2=1?
A) Motor runs backward (negative speed)
B) Motor runs forward
C) Motor stops
D) Short circuit
 A - Reverse direction.

**245:** What happens when EN1 is low (0)?
A) Motor stops regardless of inputs (disabled)
B) Motor runs at full speed
C) Motor explodes
D) Motor runs backward
 A - Enable controls driver activation.

**246:** What is "shoot-through" in H-Bridge terminology?
A) Both high-side and low-side switches on same side conducting simultaneously causing short
B) Shooting the robot
C) High speed movement
D) Sensor detection
 A - Dangerous short circuit condition.

**247:** Why is PWM applied to the Enable pin in L293D applications?
A) To control speed via duty cycle while direction pins control rotation direction
B) To turn off the chip
C) To increase heat
D) To measure current
 A - Enable pin accepts PWM for speed control.

**248:** What is the maximum current the L293D can handle per channel?
A) 600mA (0.6A) continuous, 1.2A peak
B) 10A
C) 100mA
D) 50A
 A - Limited current capacity (standard L293D).

**249:** What is the purpose of the heat sink on the L293D?
A) Dissipate heat from internal power transistors
B) Decoration
C) Weight balance
D) EMI shielding only
 A - Thermal management.

**250:** What happens if motor terminals are shorted together while running?
A) Dynamic braking occurs (motor stops quickly due to generated current)
B) Motor speeds up
C) Nothing happens
D) Battery charges
 A - Braking effect.

**251:** What is "dynamic braking" in DC motors?
A) Shorting motor terminals to dissipate kinetic energy as heat
B) Using a parachute
C) Applying reverse voltage
D) Removing power only
 A - Electrical braking method.

**252:** What is "regenerative braking"?
A) Returning generated current to the power source during braking
B) Wasting heat
C) Mechanical brakes only
D) Slowing down gradually
 A - Energy recovery braking.

**253:** What determines the resolution of an absolute encoder with n sensors?
A) 2^n sectors
B) n sectors
C) n^2 sectors
D) 2n sectors
 A - Binary combinations.

**254:** Why is Gray code used instead of binary in absolute encoders?
A) Only one bit changes between adjacent positions, preventing ambiguous readings
B) It is faster
C) It uses fewer wires
D) It is cheaper
 A - Single-bit transition property.

**255:** What is the "index" channel in some incremental encoders?
A) One pulse per revolution to mark zero position
B) Speed measurement
C) Temperature compensation
D) Battery indicator
 A - Homing reference mark.

**256:** What is quadrature encoding?
A) Two channels 90° out of phase to detect direction and higher resolution
B) Four motors
C) Square wave only
D) Digital filtering
 A - Dual-channel encoding.

**257:** What is the resolution multiplication factor with quadrature decoding (X4 decoding)?
A) 4× the base pulse count (counting both edges of both channels)
B) 2×
C) 1×
D) 8×
 A - Full quadrature resolution.

**258:** What causes "cogging" in DC motors?
A) Detent torque from rotor aligning with stator poles
B) Smooth rotation
C) Electronic noise
D) Battery voltage
 A - Mechanical stepping feel.

**259:** What are "coreless" or "ironless" DC motors?
A) Motors without iron core in rotor for lower inertia and smoother operation
B) Motors with extra iron
C) Large industrial motors
D) Stepper motors
 A - High-performance small motors.

**260:** What is "back EMF" in DC motors?
A) Voltage generated by rotating motor opposing applied voltage
B) Battery voltage
C) Forward voltage
D) Sensor voltage
 A - Electromotive force opposing drive.

**261:** How can back EMF be used?
A) To measure motor speed or implement braking
B) To increase speed
C) To reduce torque
D) To heat the motor
 A - Sensing and control applications.

**262:** What is the "stall current" of a DC motor?
A) Current drawn when rotor is locked/stopped (maximum current)
B) Current when running freely
C) Battery leakage current
D) Sensor current
 A - Maximum current draw condition.

**263:** What is the "no-load speed" of a DC motor?
A) Maximum speed with no mechanical load attached
B) Speed when stalled
C) Speed under maximum load
D) Speed when broken
 A - Free running speed.

**264:** What is the torque-speed curve of a DC motor?
A) Linear relationship: torque decreases as speed increases
B) Exponential increase
C) Constant regardless of speed
D) Random
 A - Inverse linear relationship.

**265:** What is the "motor constant" (Kv)?
A) RPM per volt (speed constant) or torque per ampere
B) Battery capacity
C) Gear ratio
D) Temperature coefficient
 A - Characteristic constant.

**266:** What is the difference between brushed and brushless DC motors?
A) Brushless uses electronic commutation instead of mechanical brushes
B) Brushed motors have no brushes
C) Brushless is always slower
D) No difference in operation
 A - Commutation method.

**267:** What are the advantages of brushless motors over brushed?
A) Higher efficiency, longer life, less maintenance (no brush wear)
B) Lower cost
C) Simpler control
D) Higher friction
 A - Performance and longevity benefits.

**268:** What is required to drive a brushless DC motor?
A) Electronic controller/ESC (Electronic Speed Controller)
B) Just a battery
C) Mechanical switches only
D) No special requirements
 A - Electronic commutation required.

**269:** What is a stepper motor?
A) Brushless DC motor with toothed rotor moved in discrete steps by energizing coils
B) Continuous rotation servo
C) Hydraulic actuator
D) Pneumatic cylinder
 A - Discrete step motion.

**270:** What determines step angle in stepper motors?
A) Number of rotor teeth and stator phases (e.g., 1.8°, 0.9°)
B) Battery voltage only
C) Motor color
D) Gearbox ratio only
 A - Mechanical construction.

**271:** What is "microstepping" in stepper motors?
A) Driving coils with intermediate current levels for smaller effective steps
B) Making larger steps
C) Skipping steps
D) Reverse stepping
 A - Smooth motion technique.

**272:** What is the "holding torque" of a stepper motor?
A) Torque when stationary with rated current applied
B) Torque when spinning at maximum speed
C) Weight of the motor
D) Friction torque
 A - Static holding capability.

**273:** What happens if a stepper motor misses steps?
A) Position error accumulates (open-loop system limitation)
B) Nothing, it self-corrects
C) It speeds up
D) It stops permanently
 A - Lost position in open-loop.

**274:** Why do stepper motors run hot?
A) Full current applied continuously even when stationary (holding torque)
B) Friction only
C) External heating
D) Solar radiation
 A - Continuous current for holding.

**275:** What is the main advantage of stepper motors?
A) Precise position control without feedback (open-loop)
B) High speed operation
C) Low cost compared to all motors
D) No heat generation
 A - Positional accuracy open-loop.

**276:** What is the main disadvantage of stepper motors?
A) Limited high-speed torque and potential for missed steps
B) Too simple to control
C) Require feedback always
D) Cannot stop
 A - Dynamic performance limitations.

**277:** What is a "hybrid" stepper motor?
A) Combines variable reluctance and permanent magnet principles for best performance
B) Electric/gasoline powered
C) DC/AC combined
D) Motor with gearbox
 A - Most common stepper type.

**278:** How many phases do common stepper motors have?
A) 2-phase (bipolar) or 4-phase (unipolar)
B) 1-phase
C) 10-phase
D) 100-phase
 A - Standard phase configurations.

**279:** What is the difference between bipolar and unipolar stepper motors?
A) Bipolar uses full coil with current reversal; Unipolar uses center-tapped coils with single-ended drive
B) Bipolar has two poles, unipolar has one
C) Bipolar is AC, unipolar is DC
D) No difference
 A - Winding and drive configuration.

**280:** Which stepper type typically provides more torque?
A) Bipolar (uses full copper winding)
B) Unipolar
C) Both are equal
D) Neither has torque
 A - Better copper utilization.

**281:** What is an "ESC" in robotics?
A) Electronic Speed Controller (typically for brushless motors)
B) Escape key
C) Encoder Sensor Chip
D) External Short Circuit
 A - Motor driver for brushless.

**282:** What input do most ESCs accept?
A) PWM signal similar to servo control
B) Analog voltage 0-10V
C) Serial data only
D) Mechanical lever
 A - RC servo-style PWM.

**283:** What is "backlash" in gearboxes?
A) Play between gear teeth causing lost motion when reversing direction
B) Forward motion only
C) Smooth operation
D) Gear lubricant
 A - Mechanical play.

**284:** Why is backlash problematic for precision positioning?
A) Dead zone when reversing direction causes position uncertainty
B) Increases speed
C) Reduces noise
D) Improves efficiency
 A - Hysteresis in positioning.

**285:** What is a "strain wave gear" or "harmonic drive"?
A) Zero-backlash gear system using flexible spline for high precision
B) Standard spur gear
C) Belt drive
D) Chain drive
 A - High-precision gearing.

**286:** What is the main advantage of harmonic drives?
A) Zero backlash and high gear ratios in compact package
B) Low cost
C) Simple construction
D) High efficiency (>95%)
 A - Precision and compactness (though efficiency is moderate).

**287:** What is "compliance" in robotic actuators?
A) Ability to yield to external forces (flexibility) vs. rigidity
B) Rigidity only
C) Speed only
D) Temperature stability
 A - Mechanical stiffness characteristic.

**288:** Why might compliance be desired in robotic joints?
A) For safety and force control (human interaction)
B) For maximum speed
C) For maximum power
D) For heating
 A - Safety and interaction.

**289:** What is "series elastic actuation" (SEA)?
A) Adding spring in series with motor for force control and compliance
B) Rigid connection
C) Parallel springs
D) No springs
 A - Elastic element for control.

**290:** What is the trade-off with high gear ratios?
A) Increased torque but reduced speed and potential for backdriving difficulty
B) Increased speed and torque
C) No trade-off
D) Reduced weight only
 A - Speed vs. torque trade-off.

**291:** What does "backdrivability" mean?
A) Ability to move the output shaft manually and have input shaft rotate
B) Only motor-driven motion
C) Locked position
D) High friction
 A - Reversibility of transmission.

**292:** Why is backdrivability important for safety?
A) Allows human to move robot manually when power is off
B) Prevents all motion
C) Increases speed
D) Reduces cost
 A - Manual manipulation capability.

**293:** What is a "worm gear"?
A) Gear with screw-like thread meshing with worm wheel (high reduction, non-backdrivable)
B) Spur gear
C) Belt drive
D) Chain
 A - Self-locking high-ratio drive.

**294:** What is "efficiency" in mechanical transmissions?
A) Ratio of output power to input power (usually <100% due to friction)
B) Speed ratio
C) Torque ratio
D) Weight ratio
 A - Power conservation factor.

**295:** Where does lost power in gearboxes go?
A) Heat due to friction
B) Increased speed
C) Increased torque
D) Light emission
 A - Thermal dissipation.

**296:** What is "stall torque"?
A) Maximum torque produced when motor is prevented from rotating
B) Minimum torque
C) Running torque
D) No-load torque
 A - Locked rotor torque.

**297:** What is the relationship between voltage and speed in DC motors?
A) Approximately linear (higher voltage = higher speed)
B) Inverse
C) No relationship
D) Exponential decay
 A - V ≈ k×RPM roughly.

**298:** What is the relationship between current and torque in DC motors?
A) Approximately linear (higher current = higher torque)
B) Inverse
C) No relationship
D) Logarithmic
 A - I ≈ k×Torque roughly.

**299:** What happens to motor speed when load increases?
A) Speed decreases (due to internal resistance and back EMF)
B) Speed increases
C) Speed stays constant
D) Motor explodes
 A - Speed droop under load.

**300:** What is the purpose of the capacitor often seen across DC motor terminals?
A) Reduce electrical noise/RF interference from brush arcing
B) Increase speed
C) Store energy for starting
D) Measure voltage
 A - EMI suppression.

---

**Study Tips for Midterm:**
- Focus on **distinctions**: Negative vs. Positive feedback, Absolute vs. Incremental encoders, Open vs. Closed loop, Analog vs. Digital sensors
- Know **calculations**: Gear ratios, PWM duty cycles, Encoder resolution (ticks × gear ratio), ADC resolution
- Understand **block diagrams**: H-Bridge operation, Sensor-Controller-Actuator loops, Feedback systems
- Memorize **specifics**: EyeCon specs (25MHz, 1MB RAM), L293D pin functions, Servo pulse widths (0.7-2.0ms), IR sensor minimum distance (6cm), Sonar frequency (50-250kHz)
- Review **applications**: When to use which sensor (Sonar vs IR vs Camera), When to use which actuator (DC motor vs Servo vs Stepper)
