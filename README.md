blupoi
======

![Alt text](/../master/hardware/blupoi.png?raw=true "v0.1: render")


TODO
----

Changes since v0.3:
 - 1uF 0402 caps not ordered
 * C27 pad has a large via in a pad
 * FIXED: MAX16054 Connect CLEAR to GND if unused.
 * FIXED: SIP32408 Footprint pinout was mirrored
 ? Change battery orientation, since spring should be on the top side but also on the gnd side of BAT
  - Maybe dont since VBAT would end up coming out in a place where it is not useful
 * X1 label covered by hole
 * X1 footprint larger than bom part?
 * C1/C2/C3 footprint is 0603 but bom is 0402
 * SWO header, change part and footprint to have only be connectable the 'right' way
 


Changes since v0.2:
 * FIXED: Replaced USB connector oval holes with round ones for improved fabricability
 * FIXED: Reflowed filled zones since KiCad somehow did it randomly wrong in v0.2
 * FIXED: R1 Move via further away from pad
 * FIXED: Move USB connector and power button to the side



Changes since v0.1:
 * FIXED: Battery compartment is not quite wide enough.
 * IGNORE: Battery compartment battery spring slot is:
   - 0.5mm too thin, should be 1.6mm
   - 0.5mm too slim, should me 17.75mm
 * FIXED: Spring slots lack copper on the back side
 * FIXED: +/- symbols on the battery silkscreen
 ? IGNORE: battery footprint 180 degrees
 
 
 * FIXED: U5/bq24075 EN1 is not pulled down
 * FIXED: U5/bq24075 sysoff turns charging off. Which is should never dd
   - Add separate add some kind of switch between u5 out and vin, controlled by button logic
   - Pull sysoff down
 * Add Load switch like Sip32431 - http://www.vishay.com/docs/66597/sip32431.pdf
   - But ~4.8A at @ 5V
   - SiP32101? No. Is LGA package
   - SiP32408? 3.5A probably ok since no usb port delivers that, and probable no battery either
     - http://www.vishay.com/docs/63717/sip32408.pdf

 * FIXED: Mic port hole is not drilled (hole too small?)
 * FIXED: Mic pads should probably be longer

 * FIXED: Move button footprint slightly closer to edge

 * FIXED: BNO055 pads should probable be longer

 * FIXED: Make logos bigger to make details visible

 * FIXED: Change L2 footprint from 0603 to 1206

 * Vin not connected on 3.3V regulator

 * FIXED: Add silkscreen saying:
   look at you, hacker, a pathetic creature of meat and bone. how can you compare yourself to a perfect immortal machine.
