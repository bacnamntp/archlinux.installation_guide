########################################################
##
##	HOW TO INSTALL ARCH LINUX
########################################################

########################################################
##	PARTITIONING THE HARD DRIVE
##	
########################################################

fdisk -l
cfdisk /dev/sda
##	create swap and linux partition. Both are primary partition.
##	swap should have at least a haft of ram.
##	when done, (may be need to add bootable flag to linux partition), go to Type,
##	chose linux and linux swap type for the corresponding parttion. After that, hit write.
mkfs.ext4 /dev/sda2
mount /dev/sda2 /mnt
mkswap /dev/sda1
swapon /dev/sda1

########################################################
##	INSTALLING THE SYSTEM
##	
########################################################

wifi-menu -> to connect wifi internet.
pacstrap /mnt base base-devel

########################################################
##	CONFIGURING THE INSTALLATION
##	
########################################################
arch-chroot /mnt
passwd  -> change the root password
nano /etc/locale.gen ->uncomment two of en_US line ->save and quit.
locale-gen
## Next is setting the timezone
cd /usr/share/zoneinfo
ls
cd Asia
ls
ln -s /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
echo bacnamntp-PC > /etc/hostname
##install grub
pacman -S grub-bios
pacman -S os-prober

grub-install /dev/sda
mkinitcpio -p linux

os-prober
grub-mkconfig -o /boot/grub/grub.cfg
exit -> exit root shell
##generate fstab file and reboot
genfstab /mnt >> /mnt/etc/fstab

umount /mnt
reboot

########################################################
##	CONFIGURING MY OWN SYSTEM
##	
########################################################

##First we need to install packages to use wifi-menu
##Boot with Arch linux CD then
mount /dev/sda2 /mnt
pacstrap -i /mnt dialog wpa_supplicant


##Reboot and login
wifi-menu 

systemctl enable dhcpcd
systemctl start dhcpcd
check connect to the internet by ping -c 2 google.com


##Add new user
useradd -m -g users -G storage,power,wheel bacnamntp
passwd bacnamntp
nano /etc/sudoers
##add bacnamntp ALL=(ALL) right after the root ALL=(ALL) line.Save and exit.

##install xorg server
pacman -S xorg-server xorg-server-utils xorg-xinit xorg-twm xorg-xclock xterm

##set locale to display special characters (make package control sublime work).
localectl set-locale LANG=en_US.UTF-8

##install page xf86-input-synaptics to make touchpad on laptop work properly.Need to reboot.
pacman -S xf86-input-synaptics

##install alsa-utils for sound control
pacman -S alsa-utils
alsamixer

##install network time protocol
pacman -S ntp
systemctl enable ntpd
systemctl start ntpd
ntpd -qg
hwclock -w

##install yaourt
##add these lines to /etc/pacman.conf file
[archlinuxfr]
 SigLevel = Never
 Server = http://repo.archlinux.fr/$arch
##then run to install yaourt
pacman -Sy yaourt

##mount ntfs partition with ntfs-3g package and extend tmpfs's size to 4GB to use yaourt not face error.
pacman -S ntfs-3g
##add these lines to /etc/fstab
/dev/sda2		/media/MY.DATA	ntfs-3g		defaults,umask=077,uid=1000	0 0
tmpfs   /tmp         tmpfs   nodev,nosuid,size=4G          0  0 



##optional packages
guake,powerline-fonts-git(AUR),zsh,oh-my-zsh-git(AUR),ibus,ibus-unicode,ibus-anthy,gedit,vim,firefox,chromium,gvim,fluxbox,qutebrowser,

##if install fluxbox then the .xinitrc file should have this line
exec startfluxbox


##make ibus work with skype
##install ibus-qt package
##add these lines to ~/.bashrc file
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus-qt
export XIM_PROGRAM=/usr/bin/ibus-deamon


##install virtual box
pacman -S virtualbox
nano /etc/modules-load.d/virtualbox.conf
##add these lines to the virtualbox.conf file
vboxdrv
vboxnetadp
vboxnetflt
vboxpci
##then add current user to vboxusers group
gpasswd -a bacnamntp vboxusers 
##if install arch on virtual box then install xf86-video-vesa package on virtual box arch.

