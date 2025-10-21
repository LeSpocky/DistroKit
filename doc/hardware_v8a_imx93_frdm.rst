NXP i.MX93 FRDM Development Board
=================================


Boot Media
----------

Booting is available via multiple sources (Compare Table 3: Boot Switch Configuration in Quick Start Guide)

.. csv-table:: Boot Switch :rst:dir:`csv-table`
   :header: "Boot Mode", "SW1-3", "SW1-2", "SW1-1"

   "Boot from Internal Fuses",      "0", "0", "0"
   "Serial Downloader",             "0", "0", "1"
   "Boot from USDHC1 eMMC 5.1",     "0", "1", "0"
   "Boot from USDHC2 SD card",      "0", "1", "1"
   "Boot from FlexSPI Serial NOR",  "1", "0", "0"


Booting from USB and NFS
~~~~~~~~~~~~~~~~~~~~~~~~

Upload the bootloader ``platform-v8a/images/barebox-nxp_imx93_frdm.img`` via USB:

.. code-block:: shell

    platform-v8a/sysroot-host/bin/imx-usb-loader platform-v8a/images/barebox-nxp_imx93_frdm.img

In Barebox, set the default boot location to nfs:

    nv boot.default nfs://dude06//ptx/work/user/fpg/DistroKit/platform-v8a/root

replace the path to one, where you have compiled your Distrokit


Booting via SD-Card
~~~~~~~~~~~~~~~~~~~

Write the image ``platform-v8a/images/nxp-imx93-frdm.img`` to a microSD card. Put the
microSD card into the board and boot it.


Serial Console
--------------

The serial boot console is available via the USB-C Debug connector on the board.
It brings 2 UARTS, whereas the first is the serial console used by kernel and bootloader.
