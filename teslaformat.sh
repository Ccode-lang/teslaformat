BLOCK=$1

umount $BLOCK?*

(
echo o
echo n
echo p
echo
echo
echo +32G
echo t
echo 0C
echo w
) | fdisk $BLOCK

mkfs.vfat "${BLOCK}1"

mkdir ~/mount

mount "${BLOCK}1" ~/mount

mkdir ~/mount/TeslaCam

umount ~/mount



#make music

(
echo n
echo p
echo 2
echo
echo +32G
echo t
echo 2
echo 7
echo w
) | fdisk $BLOCK

mkfs.exfat "${BLOCK}2"

mount "${BLOCK}2" ~/mount

mkdir ~/mount/Music

umount ~/mount

#make lighshow
(
echo n
echo p
echo 3
echo
echo +32G
echo t
echo 3
echo 7
echo w
) | fdisk $BLOCK

mkfs.exfat "${BLOCK}3"

mount "${BLOCK}3" ~/mount

mkdir ~/mount/LightShow

umount ~/mount
