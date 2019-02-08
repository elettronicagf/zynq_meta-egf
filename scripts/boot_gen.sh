#!/bin/sh
bootgen -image bootgen.bif -w on -o bootemmc.bin -packagename 7z007sclg225 -log info
cp ../images/linux/image.ub .
