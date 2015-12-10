# iMars-eu
3.1: General Image Processing

Download and instructions for ISIS3 can be found at: 

https://isis.astrogeology.usgs.gov/documents/InstallGuide/index.html

Download and instructions for ImageMagick can be found at:

http://www.imagemagick.org/script/binary-releases.php

Commands for image slicing (using ImageMagick software's overcrop command):

In terminal window:
					./overcrop -s 400x400 -o 20x20 "$file" "$file".jpg

					-s command sets the size of the slice (in this case 400 by 400 pixels)
					-o command sets the size of overlap (in this case 20 by 20 pixels)
					Overlap is generally set at the general size of the feature(s) being analysed, so that they are not cut in half on an image slice.

