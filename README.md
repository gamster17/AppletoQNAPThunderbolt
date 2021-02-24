# AppletoQNAPThunderbolt

## Problem Statement:
QNAP is a network array storage (NAS) vendor that manufactures various products lines with Thunderbolt 3 capability.  This allows for very high transfer speeds between Thunderbolt 3 equipped computers (e.g. Apple Macs) and QNAP NAS devices. For many years, Apple customers with QNAP NAS devices have suffered from a problem whereby when you wake up a computer from sleep, the Thunderbolt connection didn’t restore.  This issue was submitted to both Apple and QNAP resulting in no workable solution.  The only known workaround was to physically disconnect the Thunderbolt cable between your computer and the QNAP NAS device.  Alternatively, you could also reboot your Mac or QNAP device.

## Solution:
A fully automated solution was developed to fully restore the Thunderbolt connectivity between an Apple Mac and a QNAP NAS device upon wake up from sleep.  The process is outlined below via two bash scripts that are triggered when computer wakes up from sleep.

Please read the PDF included for full description.
