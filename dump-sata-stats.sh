#/bin/sh
# findstatlink.sh : This script is contributed by Shawn Hicks at
# http://www.cyberciti.biz/faq/linux-command-to-find-sata-harddisk-link-speed/#comment-114440
# ------
for i in `grep -l Gbps /sys/class/ata_link/*/sata_spd`; do
 echo Link "${i%/*}" Speed `cat $i`
 cat "${i%/*}"/device/dev*/ata_device/dev*/id | perl -nE 's/([0-9a-f]{2})/print chr hex $1/gie' | echo "    " Device `strings` | cut -f 1-3
done
