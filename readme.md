Enable Elantech clickpad on Ubuntu
==================================

goal
----
Currently (september 2012), Ubuntu 12.04 does not recogniza the Elantech Touchpad of my Asus Zenbook Prime UX31a : no right and middle click, no click for drag.
The scripts configure Synaptics drivers to enable clickpad, middle and right click

scripts
-------

Both script require one parameter wich is the device identifier (id or name as given by xinput).

* enable-clickpad.sh : that script tells driver that this is a clickpad (click buttons are no separated from pad). That will enable to click and drag. It should be executed before the other
* enable-softbuttons : enable middle click and right click.

usage
-----
Add the scripts in your ~/.bash_profile and it should be good (do not forget the parameter :)

limits
------
If you want to use these scripts for other than Elantech Touchpad, you'll have to change the __device__ varaible in the scripts to match your device (__xinput__ should help to find it's name).


greeetings
----------
These scripts are based on those written by Nicholas Skaggs and published on his blog [The Orange Notebook](http://www.theorangenotebook.com/2012/02/call-for-testing-clickpad.html). Thank you for writing and sharing them !


