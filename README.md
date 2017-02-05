blupoi
======

![Alt text](/../master/hardware/blupoi.png?raw=true "v0.1: render")


TODO
----


v0.1:
 X Battery compartment is not quite wide enough.
 IGNORE Battery compartment battery spring slot is:
   - 0.5mm too thin, should be 1.6mm
   - 0.5mm too slim, should me 17.75mm
 X Spring slots lack copper on the back side
 X Missing +/- symbols on the battery silkscreen
 ? Rotate battery footprint 180 degrees
 
 
 * U5/bq24075 EN1 is not pulled down
 * U5/bq24075 sysoff turns charging off. Which is should never dd
   - Add separate add some kind of switch between u5 out and vin, controlled by button logic
   - Pull sysoff down
 * Add Load switch like Sip32431 - http://www.vishay.com/docs/66597/sip32431.pdf
   - But ~4.8A at @ 5V
   - SiP32101? No. Is LGA package
   - SiP32408? 3.5A probably ok since no usb port delivers that, and probable no battery either
     - http://www.vishay.com/docs/63717/sip32408.pdf

 * Mic port hole is not drilled (hole too small?)
 * Mic pads should probably be longer

 * Move button footprint slightly closer to edge

 * BNO055 pads should probable be longer

 * FIXED: Make logos bigger to make details visible

 * FIXED: Change L2 footprint from 0603 to 1206

 * Vin not connected on 3.3V regulator

 * Add silkscreen saying:
   look at you, hacker, a pathetic creature of meat and bone. how can you compare yourself to a perfect immortal machine.
