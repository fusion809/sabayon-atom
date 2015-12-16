ebuild status: fails to build, with the default USE flags. The USE flags I have managed to compile this package with are:
```bash
=dev-libs/efl-1.16.0 -gnutls ssl -libressl physics drm glib gstreamer harfbuzz ibus webp tslib -pulseaudio
```

`emerge --info ...` gives:
```bash
Portage 2.2.20 (python 2.7.9-final-0, default/linux/amd64/13.0/desktop, 
gcc-4.9.3, glibc-2.20-r2, 4.3.0-sabayon x86_64)
=================================================================
                         System Settings
=================================================================
System uname: 
Linux-4.3.0-sabayon-x86_64-Intel-R-_Core-TM-_i5-3230M_CPU_@_2.60GHz-with-gentoo-2.2
KiB Mem:    11864808 total,    484344 free
KiB Swap:   13051492 total,  13033748 free
Timestamp of repository gentoo: Fri, 04 Dec 2015 19:15:01 +0000
sh bash 4.3_p39
ld GNU ld (Gentoo 2.25.1 p1.1) 2.25.1
app-shells/bash:          4.3_p39::gentoo
dev-lang/perl:            5.20.2::gentoo
dev-lang/python:          2.7.9-r1::gentoo, 3.4.3::gentoo
dev-util/pkgconfig:       0.29::gentoo
sys-apps/baselayout:      2.2-r1::sabayon-distro
sys-apps/sandbox:         2.6-r1::gentoo
sys-devel/autoconf:       2.69::gentoo
sys-devel/automake:       1.14.1::gentoo, 1.15::gentoo
sys-devel/binutils:       2.25.1-r1::gentoo
sys-devel/gcc:            4.9.3::sabayon-distro
sys-devel/gcc-config:     1.8-r1::sabayon-distro
sys-devel/libtool:        2.4.6::gentoo
sys-devel/make:           4.1-r1::gentoo
sys-kernel/linux-headers: 3.18::gentoo (virtual/os-headers)
sys-libs/glibc:           2.20-r2::gentoo
Repositories:

gentoo
    location: /usr/portage
    sync-type: rsync
    sync-uri: rsync://rsync.europe.gentoo.org/gentoo-portage
    priority: -1000

user_defined
    location: /usr/local/portage
    masters: gentoo
    priority: 0

sabayon
    location: /var/lib/layman/sabayon
    masters: gentoo
    priority: 50

sabayon-distro
    location: /var/lib/layman/sabayon-distro
    masters: gentoo
    priority: 50

sabayon-tools
    location: /var/lib/layman/sabayon-tools
    masters: gentoo
    priority: 50

ACCEPT_KEYWORDS="amd64 ~amd64"
ACCEPT_LICENSE="* -@EULA"
CBUILD="x86_64-pc-linux-gnu"
CFLAGS="-O2 -march=x86-64 -pipe"
CHOST="x86_64-pc-linux-gnu"
CONFIG_PROTECT="/etc /etc/conf.d /etc/entropy /etc/init.d 
/usr/share/config/kdm /usr/share/gnupg/qualified.txt"
CONFIG_PROTECT_MASK="/etc/ca-certificates.conf /etc/dconf /etc/env.d 
/etc/fonts/fonts.conf /etc/gconf /etc/gentoo-release /etc/sandbox.d 
/etc/skel /etc/terminfo /lib/modules"
CXXFLAGS="-O2 -march=x86-64 -pipe"
DISTDIR="/usr/portage/distfiles"
FCFLAGS="-O2 -pipe"
FEATURES="assume-digests binpkg-logs compressdebug 
config-protect-if-modified distlocks ebuild-locks fixlafiles merge-sync 
news parallel-fetch preserve-libs protect-owned sandbox sfperms splitdebug 
strict unknown-features-warn unmerge-logs unmerge-orphans userfetch 
userpriv usersandbox usersync"
FFLAGS="-O2 -pipe"
GENTOO_MIRRORS="ftp://ftp.spline.inf.fu-berlin.de/mirrors/gentoo/ 
http://archive.mmu.edu.my/gentoo 
rsync://gentoo.bloodhost.ru/gentoo-distfiles 
ftp://gentoo.mirrors.tds.net/gentoo 
ftp://ftp.halifax.rwth-aachen.de/gentoo/ rsync://mirror.neolabs.kz/gentoo 
http://ftp.gentoo.bg/ http://ftp.cc.uoc.gr/mirrors/linux/gentoo/ 
ftp://ftp.cc.uoc.gr/mirrors/linux/gentoo/ 
ftp://mirrors.tera-byte.com/pub/gentoo"
LANG="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
LDFLAGS="-Wl,-O1 -Wl,--as-needed"
MAKEOPTS="-j16 -s"
PKGDIR="/usr/portage/packages"
PORTAGE_CONFIGROOT="/"
PORTAGE_RSYNC_OPTS="--recursive --links --safe-links --perms --times 
--omit-dir-times --compress --force --whole-file --delete --stats 
--human-readable --timeout=180 --exclude=/distfiles --exclude=/local 
--exclude=/packages"
PORTAGE_TMPDIR="/var/tmp"
USE="X a52 aac accessibility acl acpi aiglx aim alsa amd64 artswrappersuid 
audiofile avahi bash-completion berkdb bidi bluetooth bluray bzip2 cairo 
cdda cddb cdr cjk cli cpudetection cracklib crypt cups cxx dbus dga dri dts 
dv dvb dvd dvdr dvdread dvi emboss encode exif fam fame fat ffmpeg firefox 
flac foomatic-db fortran freetype gcj gdbm gif gimpprint glamor gmp gnutls 
gphoto2 gpm gsm gtk hfs iconv icq ieee1394 imap inotify ipod ipv6 irc irda 
jabber jack jfs joystick jpeg kdeenablefinal kdehiddenvisibility kerberos 
lame lcd lcms ldap libav libnotify live lm_sensors logind lzo mad mail 
matroska mjpeg mmx mmxext mng modules mozdevelop mp3 mp3rtp mp4 mpeg msn 
multilib musepack musicbrainz ncurses network nls nptl nsplugin ntfs ogg 
openal openexr opengl openmp pam pango pcmcia pcre pda pdf perl png 
policykit ppds pulseaudio python qt3support qt4 rar rdesktop readline real 
reiserfs rss scanner sdl seccomp session slp speex spell sse sse2 ssl 
startup-notification stream svg sysfs systemd tcpd theora tiff truetype 
udev udisks unicode upower usb v4l v4l2 visualization vorbis wifi 
win32codecs wmf wxwidgets x264 x265 xattr xcb xfs xine xinerama xml xpm 
xprint xulrunner xv xvid xvmc yahoo zeroconf zlib" ABI_X86="64 32" 
ALSA_CARDS="emu10k1x darla20 darla24 emu10k1 gina20 gina24 hdsp hdspm 
ice1712 indigo indigoio layla20 layla24 mia mixart mona pcxhr rme32 rme96 
sb16 sbawe sscape usbusx2y vx222 usb-usx2y" APACHE2_MODULES="authn_core 
authz_core socache_shmcb unixd actions alias auth_basic authn_alias 
authn_anon authn_dbm authn_default authn_file authz_dbm authz_default 
authz_groupfile authz_host authz_owner authz_user autoindex cache cgi cgid 
dav dav_fs dav_lock deflate dir disk_cache env expires ext_filter 
file_cache filter headers include info log_config logio mem_cache mime 
mime_magic negotiation rewrite setenvif speling status unique_id userdir 
usertrack vhost_alias" APACHE2_MPMS="prefork" CALLIGRA_FEATURES="kexi words 
flow plan sheets stage tables krita karbon braindump author" 
CAMERAS="agfa_cl20 casio_qv dimagev dimera3500 kodak_dc120 kodak_dc210 
kodak_dc240 kodak_dc3200 kodak_ez200 konica_qm150 panasonic_coolshot 
panasonic_dc1000 panasonic_dc1580 panasonic_l859 polaroid_pdc320 
polaroid_pdc640 polaroid_pdc700 ricoh_g3 sipix_blink sipix_blink2 
sipix_web2 sony_dscf1 sony_dscf55 toshiba_pdrm11 adc65 aox barbie canon 
clicksmart310 digigr8 digita directory enigma13 fuji gsmart300 hp215 iclick 
jamcam jd11 konica largan lg_gsm mars mustek pccam300 pccam600 ptp2 ricoh 
samsung sierra smal sonix soundvision spca50x sq905 stv0674 stv0680 sx330z 
template" COLLECTD_PLUGINS="df interface irq load memory rrdtool swap 
syslog" CPU_FLAGS_X86="mmx mmxext sse sse2" ELIBC="glibc" 
GPSD_PROTOCOLS="ashtech aivdm earthmate evermore fv18 garmin garmintxt 
gpsclock itrax mtk3301 nmea ntrip navcom oceanserver oldstyle oncore 
rtcm104v2 rtcm104v3 sirf superstar2 timing tsip tripmate tnt ublox ubx" 
GRUB_PLATFORMS="efi-32 efi-64 pc" INPUT_DEVICES="evdev void" KERNEL="linux" 
LCD_DEVICES="bayrad cfontz cfontz633 glk hd44780 lb216 lcdm001 mtxorb 
ncurses text" LIBREOFFICE_EXTENSIONS="presenter-console presenter-minimizer 
pdfimport wiki-publisher" LINGUAS="en en_US af ar az bg bn br bs ca cs cy 
da de el en_GB eo es et eu fa fi fr fy ga gl he hi hr hu is it ja kk km ko 
lt lv mk mn ms nb nds nl nn pa pl pt pt_BR ro ru rw se sk sl sr sr@Latn ss 
sv ta tg tr uk uz vi zh_CN zh_TW es_AR es_ES fy_NL ga_IE gu gu_IN nb_NO 
nn_NO pt_PT sv_SE zh" LIRC_DEVICES="audio audio_alsa serial pctv" 
OFFICE_IMPLEMENTATION="libreoffice" PHP_TARGETS="php5-5" 
PYTHON_SINGLE_TARGET="python2_7" PYTHON_TARGETS="python2_7 python3_4" 
QEMU_SOFTMMU_TARGETS="x86_64 arm cris i386 m68k microblaze mips mips64 
mips64el mipsel ppc ppc64 ppcemb sh4 sh4eb sparc sparc64" 
QEMU_USER_TARGETS="alpha arm armeb cris i386 m68k microblaze mips mipsel 
ppc ppc64 ppc64abi32 sh4 sh4eb sparc sparc32plus sparc64 x86_64" 
RUBY_TARGETS="ruby20 ruby21" USERLAND="GNU" VIDEO_CARDS="fbdev vesa 
radeonsi radeon" XTABLES_ADDONS="quota2 psd pknock lscan length2 
ipv4options ipset ipp2p iface geoip fuzzy condition tee tarpit sysrq steal 
rawnat logmark ipmark dhcpmac delude chaos account"
USE_PYTHON="2.7"
Unset:  CC, CPPFLAGS, CTARGET, CXX, EMERGE_DEFAULT_OPTS, INSTALL_MASK, 
PORTAGE_BUNZIP2_COMMAND, PORTAGE_COMPRESS, PORTAGE_COMPRESS_FLAGS, 
PORTAGE_RSYNC_EXTRA_OPTS
```

output of `emerge -pqv ...` is:

```bash
[ebuild     U ] dev-libs/efl-1.16.0 [1.15.2] USE="X bmp eet fontconfig gif 
gnutls ico nls opengl png ppm psd pulseaudio sdl sound ssl systemd tiff 
v4l2 xine xpm -debug -doc -drm -egl -fbcon -fribidi -gles -glib -gstreamer 
-harfbuzz -ibus -jpeg2k -libressl (-neon) -oldlua -physics (-pixman) -scim 
-tga -tslib -valgrind -wayland -webp -xim" 
```

contents of `/var/tmp/portage/dev-libs/efl-1.16.0/temp/build.log`:

```bash
[32;01m * [39;49;00mPackage:    dev-libs/efl-1.16.0
[32;01m * [39;49;00mRepository: sabayon-tools
[32;01m * [39;49;00mUSE:        X abi_x86_64 amd64 bmp eet elibc_glibc fontconfig gif gnutls ico kernel_linux nls opengl png ppm psd pulseaudio sdl sound ssl systemd tiff userland_GNU v4l2 xine xpm
[32;01m * [39;49;00mFEATURES:   compressdebug preserve-libs sandbox splitdebug userpriv usersandbox
>>> Unpacking source...
>>> Unpacking efl-1.16.0.tar.xz to /var/tmp/portage/dev-libs/efl-1.16.0/work
>>> Source unpacked in /var/tmp/portage/dev-libs/efl-1.16.0/work
>>> Preparing source in /var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0 ...
 [32;01m*[0m Removing useless C++ checks ...
[A[75C [34;01m[ [32;01mok[34;01m ][0m
 [32;01m*[0m Running elibtoolize in: efl-1.16.0/
 [32;01m*[0m   Applying portage/1.2.0 patch ...
 [32;01m*[0m   Applying sed/1.5.6 patch ...
 [32;01m*[0m   Applying as-needed/2.4.2 patch ...
 [32;01m*[0m   Applying target-nm/2.4.2 patch ...
>>> Source prepared.
>>> Configuring source in /var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0 ...
 [32;01m*[0m You enabled both USE=ssl and USE=gnutls, but only one can be used;
 [32;01m*[0m gnutls has been selected for you.
 * econf: updating efl-1.16.0/config.sub with /usr/share/gnuconfig/config.sub
 * econf: updating efl-1.16.0/config.guess with /usr/share/gnuconfig/config.guess
./configure --prefix=/usr --build=x86_64-pc-linux-gnu --host=x86_64-pc-linux-gnu --mandir=/usr/share/man --infodir=/usr/share/info --datadir=/usr/share --sysconfdir=/etc --localstatedir=/var/lib --disable-dependency-tracking --disable-silent-rules --libdir=/usr/lib64 --with-profile=release --with-crypto=gnutls --with-x11=xlib --with-x --with-opengl=full --with-glib=no --enable-i-really-know-what-i-am-doing-and-that-this-will-probably-break-things-and-i-will-fix-them-myself-and-send-patches-aba --enable-image-loader-bmp --enable-image-loader-wbmp --disable-drm --disable-doc --enable-image-loader-eet --disable-egl --disable-fb --enable-fontconfig --disable-fribidi --enable-image-loader-gif --disable-gstreamer1 --disable-harfbuzz --enable-image-loader-ico --disable-ibus --disable-image-loader-jp2k --disable-neon --enable-nls --disable-lua-old --disable-physics --disable-pixman --disable-pixman-font --disable-pixman-rect --disable-pixman-line --disable-pixman-poly --disable-pixman-image --disable-pixman-image-scale-sample --enable-image-loader-png --enable-image-loader-pmaps --enable-image-loader-psd --enable-pulseaudio --disable-scim --enable-sdl --enable-audio --enable-systemd --disable-image-loader-tga --enable-image-loader-tiff --disable-tslib --enable-v4l2 --disable-valgrind --disable-wayland --disable-image-loader-webp --disable-xim --enable-xine --enable-image-loader-xpm --enable-cserve --enable-image-loader-generic --enable-image-loader-jpeg --disable-tizen --disable-gesture --disable-gstreamer --enable-xinput2 --disable-xinput22 --disable-multisense --enable-libmount
configure: loading site script /usr/share/config.site
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether make supports nested variables... (cached) yes
checking for style of include used by make... GNU
checking for x86_64-pc-linux-gnu-gcc... x86_64-pc-linux-gnu-gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether x86_64-pc-linux-gnu-gcc accepts -g... yes
checking for x86_64-pc-linux-gnu-gcc option to accept ISO C89... none needed
checking whether x86_64-pc-linux-gnu-gcc understands -c and -o together... yes
checking dependency style of x86_64-pc-linux-gnu-gcc... none
checking how to run the C preprocessor... x86_64-pc-linux-gnu-gcc -E
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
configure: edje_cc set to 
configure: eolian_gen set to 
configure: eolian_cxx set to 
configure: elua set to 
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking for x86_64-pc-linux-gnu-ar... x86_64-pc-linux-gnu-ar
checking the archiver (x86_64-pc-linux-gnu-ar) interface... ar
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by x86_64-pc-linux-gnu-gcc... /usr/x86_64-pc-linux-gnu/bin/ld
checking if the linker (/usr/x86_64-pc-linux-gnu/bin/ld) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... /usr/bin/x86_64-pc-linux-gnu-nm -B
checking the name lister (/usr/bin/x86_64-pc-linux-gnu-nm -B) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+="... yes
checking how to convert x86_64-pc-linux-gnu file names to x86_64-pc-linux-gnu format... func_convert_file_noop
checking how to convert x86_64-pc-linux-gnu file names to toolchain format... func_convert_file_noop
checking for /usr/x86_64-pc-linux-gnu/bin/ld option to reload object files... -r
checking for x86_64-pc-linux-gnu-objdump... x86_64-pc-linux-gnu-objdump
checking how to recognize dependent libraries... pass_all
checking for x86_64-pc-linux-gnu-dlltool... no
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for x86_64-pc-linux-gnu-ar... (cached) x86_64-pc-linux-gnu-ar
checking for archiver @FILE support... @
checking for x86_64-pc-linux-gnu-strip... x86_64-pc-linux-gnu-strip
checking for x86_64-pc-linux-gnu-ranlib... x86_64-pc-linux-gnu-ranlib
checking command to parse /usr/bin/x86_64-pc-linux-gnu-nm -B output from x86_64-pc-linux-gnu-gcc object... ok
checking for sysroot... no
checking for x86_64-pc-linux-gnu-mt... no
checking for mt... no
checking if : is a manifest tool... no
checking for dlfcn.h... yes
checking for objdir... .libs
checking if x86_64-pc-linux-gnu-gcc supports -fno-rtti -fno-exceptions... no
checking for x86_64-pc-linux-gnu-gcc option to produce PIC... -fPIC -DPIC
checking if x86_64-pc-linux-gnu-gcc PIC flag -fPIC -DPIC works... yes
checking if x86_64-pc-linux-gnu-gcc static flag -static works... yes
checking if x86_64-pc-linux-gnu-gcc supports -c -o file.o... yes
checking if x86_64-pc-linux-gnu-gcc supports -c -o file.o... (cached) yes
checking whether the x86_64-pc-linux-gnu-gcc linker (/usr/x86_64-pc-linux-gnu/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no
configure: Initialized efl (1.16.0) development=32088 
checking whether NLS is requested... yes
checking for msgfmt... /usr/bin/msgfmt
checking for gmsgfmt... /usr/bin/gmsgfmt
checking for xgettext... /usr/bin/xgettext
checking for msgmerge... /usr/bin/msgmerge
checking for ld used by GCC... /usr/x86_64-pc-linux-gnu/bin/ld -m elf_x86_64
checking if the linker (/usr/x86_64-pc-linux-gnu/bin/ld -m elf_x86_64) is GNU ld... yes
checking for shared library run path origin... done
checking for CFPreferencesCopyAppValue... no
checking for CFLocaleCopyCurrent... no
checking for GNU gettext in libc... yes
checking whether to use NLS... yes
checking where the gettext function comes from... libc
checking dependency style of x86_64-pc-linux-gnu-gcc... none
checking for x86_64-pc-linux-gnu-g++... x86_64-pc-linux-gnu-g++
checking whether we are using the GNU C++ compiler... yes
checking whether x86_64-pc-linux-gnu-g++ accepts -g... yes
checking dependency style of x86_64-pc-linux-gnu-g++... none
checking how to run the C++ preprocessor... x86_64-pc-linux-gnu-g++ -E
checking for ld used by x86_64-pc-linux-gnu-g++... /usr/x86_64-pc-linux-gnu/bin/ld -m elf_x86_64
checking if the linker (/usr/x86_64-pc-linux-gnu/bin/ld -m elf_x86_64) is GNU ld... yes
checking whether the x86_64-pc-linux-gnu-g++ linker (/usr/x86_64-pc-linux-gnu/bin/ld -m elf_x86_64) supports shared libraries... yes
checking for x86_64-pc-linux-gnu-g++ option to produce PIC... -fPIC -DPIC
checking if x86_64-pc-linux-gnu-g++ PIC flag -fPIC -DPIC works... yes
checking if x86_64-pc-linux-gnu-g++ static flag -static works... yes
checking if x86_64-pc-linux-gnu-g++ supports -c -o file.o... yes
checking if x86_64-pc-linux-gnu-g++ supports -c -o file.o... (cached) yes
checking whether the x86_64-pc-linux-gnu-g++ linker (/usr/x86_64-pc-linux-gnu/bin/ld -m elf_x86_64) supports shared libraries... yes
checking dynamic linker characteristics... (cached) GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking for x86_64-pc-linux-gnu-gcc... x86_64-pc-linux-gnu-gcc
checking whether we are using the GNU Objective C compiler... yes
checking whether x86_64-pc-linux-gnu-gcc accepts -g... yes
checking dependency style of x86_64-pc-linux-gnu-gcc... none
checking for x86_64-pc-linux-gnu-gcc option to accept ISO C99... -std=gnu99
checking for a sed that does not truncate output... (cached) /bin/sed
checking for special C compiler options needed for large files... no
checking for _FILE_OFFSET_BITS value needed for large files... no
checking for x86_64-pc-linux-gnu-pkg-config... /usr/bin/x86_64-pc-linux-gnu-pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for x86_64-pc-linux-gnu-libgcrypt-config... /usr/bin/x86_64-pc-linux-gnu-libgcrypt-config
checking for LIBGCRYPT - version >= 1.2.0... yes (1.6.3)
checking LIBGCRYPT API version... okay
checking for dirent.h that defines DIR... yes
checking for library containing opendir... none required
checking whether time.h and sys/time.h may both be included... yes
checking execinfo.h usability... yes
checking execinfo.h presence... yes
checking for execinfo.h... yes
checking mcheck.h usability... yes
checking mcheck.h presence... yes
checking for mcheck.h... yes
checking sys/epoll.h usability... yes
checking sys/epoll.h presence... yes
checking for sys/epoll.h... yes
checking sys/inotify.h usability... yes
checking sys/inotify.h presence... yes
checking for sys/inotify.h... yes
checking sys/signalfd.h usability... yes
checking sys/signalfd.h presence... yes
checking for sys/signalfd.h... yes
checking for sys/types.h... (cached) yes
checking sys/param.h usability... yes
checking sys/param.h presence... yes
checking for sys/param.h... yes
checking sys/mman.h usability... yes
checking sys/mman.h presence... yes
checking for sys/mman.h... yes
checking netinet/in.h usability... yes
checking netinet/in.h presence... yes
checking for netinet/in.h... yes
checking for PATH_MAX in limits.h... yes
checking size of wchar_t... 4
checking size of int... 4
checking size of long... 8
checking size of uintptr_t... 8
checking for siginfo_t... yes
checking whether byte ordering is bigendian... no
checking for inline... inline
checking whether the compiler supports -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections... yes
checking whether the linker supports -fvisibility=hidden -fdata-sections -ffunction-sections -Wl,--gc-sections -fno-strict-aliasing -Wl,--as-needed -Wl,--no-copy-dt-needed-entries... yes
checking for __attribute__ ((vector))... yes
checking for __forceinline... no
checking for __attribute__ ((__always_inline__))... yes
checking immintrin.h usability... yes
checking immintrin.h presence... yes
checking for immintrin.h... yes
checking whether to build SSE3 code... yes
checking for backtrace... yes
checking for backtrace_symbols... yes
checking for execvp... yes
checking for fpathconf... yes
checking for fstatat... yes
checking for malloc_usable_size... yes
checking for mkdirat... yes
checking for mtrace... yes
checking for realpath... yes
checking for strlcpy... no
checking for geteuid... yes
checking for getuid... yes
checking for pause... yes
checking for size_t... yes
checking for working alloca.h... yes
checking for alloca... yes
checking for stdlib.h... (cached) yes
checking for unistd.h... (cached) yes
checking for sys/param.h... (cached) yes
checking for getpagesize... yes
checking for working mmap... yes
checking for fnmatch... yes
checking for gettimeofday... yes
checking for dirfd... yes
checking for fcntl... yes
checking for SYSTEMD... yes
configure: Skipping Evil checks (disabled)
configure: Skipping Escape checks (disabled)
checking for shm_open... yes
configure: Start Eina checks
checking for UNWIND... yes
configure: ignoring any EINA_LOG() with level greater than 3
checking for EINA... yes
checking for GLIB... yes
checking for sys/mman.h... (cached) yes
checking byteswap.h usability... yes
checking byteswap.h presence... yes
checking for byteswap.h... yes
checking for fchmod... yes
checking for dlopen... yes
checking for dladdr... yes
checking for iconv... yes
checking for shm_open... yes
checking for splice... yes
checking for setxattr... yes
checking for getpagesize... yes
checking wether to build Eina_Log infrastructure... yes
checking whether imported symbols can be declared weak... yes
checking pthread.h usability... yes
checking pthread.h presence... yes
checking for pthread.h... yes
checking for pthread_kill in -lpthread... yes
checking for multithread API to use... posix
checking for pthread_rwlock_t... yes
checking which threads API is used... POSIX
checking whether to build POSIX threads spinlock code... yes
checking whether to build OSX spinlock code... no
checking whether to enable chained pool built... yes
checking whether to enable pass through built... yes
checking whether to enable one big built... yes
configure: Finished Eina checks
configure: Start Eina_Cxx checks
checking whether x86_64-pc-linux-gnu-g++ supports C++11 features by default... no
checking whether x86_64-pc-linux-gnu-g++ supports C++11 features with -std=gnu++11... yes
configure: Finished Eina_Cxx checks
configure: Start Eo checks
checking for dladdr... yes
configure: Finished Eo checks
configure: Start Eet_Cxx checks
configure: Finished Eet_Cxx checks
configure: Start Emile checks
checking for libjpeg... yes
checking for zlib... yes
checking for EMILE... yes
configure: Finished Emile checks
configure: Start Eet checks
checking for libjpeg... yes
checking for EET... yes
configure: Finished Eet checks
configure: Start Eo_Cxx checks
configure: Finished Eo_Cxx checks
configure: Start Eolian checks
configure: Finished Eolian checks
configure: Start Eolian_Cxx checks
configure: Finished Eolian_Cxx checks
configure: Start Efl checks
configure: Finished Efl checks
configure: Start Ector checks
configure: Finished ECTOR checks
configure: Start Evas checks
checking for dlsym... yes
checking whether to enable OpenGL Cocoa rendering backend... no
checking whether OpenGL Cocoa rendering backend will be built... no
checking whether to enable OpenGL SDL rendering backend... yes
checking for SDL... yes
checking whether pthread_create() is supported... yes
checking for GL/gl.h... yes
checking whether OpenGL SDL rendering backend will be built... yes
checking whether to enable Software GDI rendering backend... no
checking whether Software GDI rendering backend will be built... no
checking whether to enable Software DirectDraw rendering backend... no
checking whether Software DirectDraw rendering backend will be built... no
checking whether to enable Wayland Egl rendering backend... no
checking whether Wayland Egl rendering backend will be built... no
checking whether to enable Wayland Shm rendering backend... no
checking whether Wayland Shm rendering backend will be built... no
checking whether to enable Drm rendering backend... no
checking whether Drm rendering backend will be built... no
checking whether to enable OpenGL Drm rendering backend... no
checking whether OpenGL Drm rendering backend will be built... no
checking whether to build Software XCB Engine... no
checking whether to enable Software Xlib rendering backend... yes
checking how to find X... use pkg-config
checking for EFL_X11... yes
checking X11/X.h usability... yes
checking X11/X.h presence... yes
checking for X11/X.h... yes
checking for evas_engine_software_xlib... yes
checking for XCreateImage... yes
checking for XShmCreateImage... yes
checking whether Software Xlib rendering backend will be built... yes
checking whether to build Software Xlib Engine... yes
checking whether to build OpenGL XCB Engine... no
checking whether to enable OpenGL XLib rendering backend... yes
checking how to find X... (cached) already found
checking X11/Xlib.h usability... yes
checking X11/Xlib.h presence... yes
checking for X11/Xlib.h... yes
checking X11/Xatom.h usability... yes
checking X11/Xatom.h presence... yes
checking for X11/Xatom.h... yes
checking X11/Xutil.h usability... yes
checking X11/Xutil.h presence... yes
checking for X11/Xutil.h... yes
checking X11/extensions/Xrender.h usability... yes
checking X11/extensions/Xrender.h presence... yes
checking for X11/extensions/Xrender.h... yes
checking X11/Xresource.h usability... yes
checking X11/Xresource.h presence... yes
checking for X11/Xresource.h... yes
checking for evas_engine_gl_xlib... yes
checking for XCreateColormap... yes
checking for XRenderCreatePicture... yes
checking for GL/gl.h... (cached) yes
checking whether pthread_create() is supported... yes
checking for glXCreateContext in -lGL... yes
checking whether OpenGL XLib rendering backend will be built... yes
checking whether to build OpenGL Xlib Engine... yes
checking whether SDL_GL_CONTEXT_MAJOR_VERSION is declared... yes
checking whether to enable BMP image loader... yes
checking whether BMP image loader will be built... yes
checking whether to enable Eet image loader... yes
checking whether Eet image loader will be built... yes
checking whether to enable Generic image loader... yes
checking whether Generic image loader will be built... yes
checking whether to enable Gif image loader... yes
checking gif_lib.h usability... yes
checking gif_lib.h presence... yes
checking for gif_lib.h... yes
checking for DGifOpenFileName in -lgif... yes
checking whether Gif image loader will be built... yes
checking whether to enable ICO image loader... yes
checking whether ICO image loader will be built... yes
checking whether to enable JPEG image loader... yes
checking jpeglib.h usability... yes
checking jpeglib.h presence... yes
checking for jpeglib.h... yes
checking for jpeg_CreateDecompress in -ljpeg... yes
checking whether JPEG image loader will be built... yes
checking whether to enable JP2K image loader... no
checking whether JP2K image loader will be built... no
checking whether to enable PMAPS image loader... yes
checking whether PMAPS image loader will be built... yes
checking whether to enable PNG image loader... yes
checking for PNG... yes
checking whether PNG image loader will be built... yes
checking whether to enable PSD image loader... yes
checking whether PSD image loader will be built... yes
checking whether to enable Tga image loader... no
checking whether Tga image loader will be built... no
checking whether to enable Tiff image loader... yes
checking tiffio.h usability... yes
checking tiffio.h presence... yes
checking for tiffio.h... yes
checking for TIFFReadScanline in -ltiff... yes
checking whether Tiff image loader will be built... yes
checking whether to enable WBMP image loader... yes
checking whether WBMP image loader will be built... yes
checking whether to enable WEBP image loader... no
checking whether WEBP image loader will be built... no
checking whether to enable XPM image loader... yes
checking whether XPM image loader will be built... yes
checking whether to enable TGV image loader... static
checking whether TGV image loader will be built... yes
checking whether to enable DDS image loader... static
checking whether DDS image loader will be built... yes
checking for EVAS... yes
checking size of Eina_Unicode... 0
checking for struct sigaction... yes
checking for siglongjmp... yes
checking for lround in -lm... yes
configure: Finished Evas checks
configure: Start Evas_Cxx checks
configure: Finished Evas_Cxx checks
configure: Start Embryo checks
configure: Finished Embryo checks
configure: Start Ecore checks
checking for ECORE... yes
checking for sys/wait.h that is POSIX.1 compatible... yes
checking sys/socket.h usability... yes
checking sys/socket.h presence... yes
checking for sys/socket.h... yes
checking for arpa/inet.h... yes
checking for langinfo.h... yes
checking for features.h... yes
checking for netinet/in.h... (cached) yes
checking for netinet/tcp.h... yes
checking for sys/prctl.h... yes
checking for sys/resource.h... yes
checking for sys/timerfd.h... yes
checking for sys/un.h... yes
checking for net/if.h... yes
checking for isfinite... yes
checking for mallinfo... yes
checking for timerfd_create... yes
checking for clock_gettime... yes
checking for malloc_info... yes
checking for ucontext... yes
checking for setjmp... yes
configure: Finished Ecore checks
configure: Start Ecore_Cxx checks
configure: Finished Ecore_Cxx checks
configure: Start Ecore_Con checks
checking for ECORE_CON... yes
checking ws2tcpip.h usability... no
checking ws2tcpip.h presence... no
checking for ws2tcpip.h... no
checking netdb.h usability... yes
checking netdb.h presence... yes
checking for netdb.h... yes
checking for struct ipv6_mreq... yes
configure: Finished Ecore_Con checks
configure: Start Ecore_Ipc checks
checking winsock2.h usability... no
checking winsock2.h presence... no
checking for winsock2.h... no
configure: Finished Ecore_Ipc checks
configure: Start Ecore_File checks
configure: Finished Ecore_File checks
configure: Start Ecore_Input checks
configure: Finished Ecore_Input checks
configure: Start Ecore_Input_Evas checks
configure: Finished Ecore_Input_Evas checks
configure: Skipping Ecore_Cocoa checks (disabled)
configure: Skipping Ecore_FB checks (disabled)
configure: Skipping Ecore_Psl1ght checks (disabled)
configure: Start Ecore_SDL checks
checking for ECORE_SDL... yes
configure: Finished Ecore_SDL checks
configure: Skipping Ecore_Wayland checks (disabled)
configure: Start Eldbus checks
checking for ELDBUS... yes
configure: Finished Eldbus checks
configure: Start Eeze checks
checking Use old libudev API (before 199)... no
checking Use old libmount API (before 2.19.0)... no
checking Use libmount 2.19.0 API... no
checking Use new libmount API (newer than 2.19.0)... yes
checking for EEZE... yes
checking for mount... /bin/mount
checking for umount... /bin/umount
checking for eject... /usr/bin/eject
configure: Finished Eeze checks
configure: Skipping Ecore_Drm checks (disabled)
configure: Start Ecore_Audio checks
checking for ECORE_AUDIO... yes
configure: Finished Ecore_Audio checks
configure: Start Ecore_Audio_Cxx checks
configure: Finished Ecore_Audio_Cxx checks
configure: Skipping Ecore_Win32 checks (disabled)
configure: Start Ecore_Avahi checks
checking for AVAHI_CLIENT... yes
checking for ECORE_AVAHI... yes
configure: Finished Ecore_Avahi checks
configure: Start Ecore_X checks
checking whether MAXHOSTNAMELEN is declared... no
checking for header that defines MAXHOSTNAMELEN... sys/param.h
checking how to find X... (cached) already found
checking for X11/Xlib.h... (cached) yes
checking X11/Xcursor/Xcursor.h usability... yes
checking X11/Xcursor/Xcursor.h presence... yes
checking for X11/Xcursor/Xcursor.h... yes
checking for ECORE_X_XLIB... yes
checking for XOpenDisplay... yes
checking for XcursorImageLoadCursor... yes
checking for X11/extensions/XKB.h... yes
checking for XkbSetDetectableAutoRepeat in -lX11... yes
checking for X11/extensions/Xcomposite.h... yes
checking for XCompositeQueryExtension in -lXcomposite... yes
checking for X11/extensions/Xdamage.h... yes
checking for XDamageSubtract in -lXdamage... yes
checking for X11/extensions/dpms.h... yes
checking for DPMSQueryExtension in -lXext... yes
checking for X11/extensions/Xfixes.h... yes
checking for XFixesExpandRegion in -lXfixes... yes
checking for X11/extensions/Xinerama.h... yes
checking for XineramaQueryScreens in -lXinerama... yes
checking for X11/extensions/Xrandr.h... yes
checking for XRRGetScreenResourcesCurrent in -lXrandr... yes
checking for X11/extensions/Xrender.h... (cached) yes
checking for XRenderFindVisualFormat in -lXrender... yes
checking for X11/extensions/XTest.h... yes
checking for XTestFakeKeyEvent in -lXtst... yes
checking for X11/extensions/scrnsaver.h... yes
checking for XScreenSaverSelectInput in -lXss... yes
checking for X11/extensions/XInput2.h... yes
checking for XIQueryDevice in -lXi... yes
checking for dlopen... yes
checking for dlsym... yes
configure: Finished Ecore_X checks
configure: Start Ecore_Imf checks
configure: Finished Ecore_Imf checks
configure: Start Ecore_Imf_Evas checks
configure: Finished Ecore_Imf_Evas checks
configure: Start Ecore_Evas checks
configure: XCB-based OpenGL explicitly disabled
configure: Finished Ecore_Evas checks
configure: Start Eio checks
checking for kevent... no
configure: Finished Eio checks
configure: Start Efreet checks
configure: Finished Efreet checks
configure: Skipping EPhysics checks (disabled)
configure: Start Edje checks
checking for EDJE... yes
checking for sys/wait.h... (cached) yes
configure: Finished Edje checks
configure: Start Edje_Cxx checks
configure: Finished Edje_Cxx checks
configure: Start Emotion checks
checking for EMOTION_MODULE_XINE... yes
checking whether V4L2_CAP_VIDEO_CAPTURE is declared... yes
configure: Finished Emotion checks
configure: Start Ethumb checks
configure: Finished Ethumb checks
configure: Start Ethumb_Client checks
configure: Finished Ethumb_Client checks
configure: Start Elua checks
checking for ELUA... yes
configure: Finished Elua checks
configure: Start Elocation checks
configure: Finished Elocation checks
configure: Skipping Ecore_Buffer checks (disabled)
checking that generated files are newer than configure... done
configure: creating ./config.status
config.status: creating Makefile
config.status: creating data/Makefile
config.status: creating doc/Makefile
config.status: creating doc/Doxyfile
config.status: creating doc/previews/Makefile
config.status: creating src/Makefile
config.status: creating src/benchmarks/eina/Makefile
config.status: creating src/benchmarks/eo/Makefile
config.status: creating src/benchmarks/evas/Makefile
config.status: creating src/examples/eina/Makefile
config.status: creating src/examples/eina_cxx/Makefile
config.status: creating src/examples/eet/Makefile
config.status: creating src/examples/eo/Makefile
config.status: creating src/examples/evas/Makefile
config.status: creating src/examples/ecore/Makefile
config.status: creating src/examples/ecore_avahi/Makefile
config.status: creating src/examples/eio/Makefile
config.status: creating src/examples/eldbus/Makefile
config.status: creating src/examples/ephysics/Makefile
config.status: creating src/examples/edje/Makefile
config.status: creating src/examples/emotion/Makefile
config.status: creating src/examples/ethumb_client/Makefile
config.status: creating src/examples/elua/Makefile
config.status: creating src/examples/eolian_cxx/Makefile
config.status: creating src/examples/elocation/Makefile
config.status: creating src/lib/eina/eina_config.h
config.status: creating src/lib/ecore_x/ecore_x_version.h
config.status: creating src/lib/efl/Efl_Config.h
config.status: creating spec/efl.spec
config.status: creating pc/evil.pc
config.status: creating pc/escape.pc
config.status: creating pc/eina.pc
config.status: creating pc/eina-cxx.pc
config.status: creating pc/emile.pc
config.status: creating pc/eet.pc
config.status: creating pc/eet-cxx.pc
config.status: creating pc/eo.pc
config.status: creating pc/eo-cxx.pc
config.status: creating pc/eolian.pc
config.status: creating pc/eolian-cxx.pc
config.status: creating pc/efl.pc
config.status: creating pc/efl-cxx.pc
config.status: creating pc/evas-fb.pc
config.status: creating pc/evas-opengl-x11.pc
config.status: creating pc/evas-opengl-sdl.pc
config.status: creating pc/evas-opengl-cocoa.pc
config.status: creating pc/evas-psl1ght.pc
config.status: creating pc/evas-software-buffer.pc
config.status: creating pc/evas-software-x11.pc
config.status: creating pc/evas-software-gdi.pc
config.status: creating pc/evas-software-ddraw.pc
config.status: creating pc/evas-software-sdl.pc
config.status: creating pc/evas-wayland-shm.pc
config.status: creating pc/evas-wayland-egl.pc
config.status: creating pc/evas-drm.pc
config.status: creating pc/evas.pc
config.status: creating pc/evas-cxx.pc
config.status: creating pc/ecore.pc
config.status: creating pc/ecore-cxx.pc
config.status: creating pc/ecore-con.pc
config.status: creating pc/ecore-ipc.pc
config.status: creating pc/ecore-file.pc
config.status: creating pc/ecore-input.pc
config.status: creating pc/ecore-input-evas.pc
config.status: creating pc/ecore-cocoa.pc
config.status: creating pc/ecore-drm.pc
config.status: creating pc/ecore-fb.pc
config.status: creating pc/ecore-psl1ght.pc
config.status: creating pc/ecore-sdl.pc
config.status: creating pc/ecore-wayland.pc
config.status: creating pc/ecore-win32.pc
config.status: creating pc/ecore-x.pc
config.status: creating pc/ecore-evas.pc
config.status: creating pc/ecore-imf.pc
config.status: creating pc/ecore-imf-evas.pc
config.status: creating pc/ecore-audio.pc
config.status: creating pc/ecore-audio-cxx.pc
config.status: creating pc/ecore-avahi.pc
config.status: creating pc/ecore-buffer.pc
config.status: creating pc/ector.pc
config.status: creating pc/embryo.pc
config.status: creating pc/eio.pc
config.status: creating pc/eio-cxx.pc
config.status: creating pc/eldbus.pc
config.status: creating pc/efreet.pc
config.status: creating pc/efreet-mime.pc
config.status: creating pc/efreet-trash.pc
config.status: creating pc/eeze.pc
config.status: creating pc/ephysics.pc
config.status: creating pc/edje.pc
config.status: creating pc/edje-cxx.pc
config.status: creating pc/emotion.pc
config.status: creating pc/ethumb.pc
config.status: creating pc/ethumb_client.pc
config.status: creating pc/elocation.pc
config.status: creating pc/elua.pc
config.status: creating dbus-services/org.enlightenment.Ethumb.service
config.status: creating systemd-services/ethumb.service
config.status: creating po/Makefile.in
config.status: creating cmakeconfig/EflConfig.cmake
config.status: creating cmakeconfig/EflConfigVersion.cmake
config.status: creating cmakeconfig/EinaConfig.cmake
config.status: creating cmakeconfig/EinaConfigVersion.cmake
config.status: creating cmakeconfig/EioConfig.cmake
config.status: creating cmakeconfig/EioConfigVersion.cmake
config.status: creating cmakeconfig/EezeConfig.cmake
config.status: creating cmakeconfig/EezeConfigVersion.cmake
config.status: creating cmakeconfig/EoConfig.cmake
config.status: creating cmakeconfig/EoConfigVersion.cmake
config.status: creating cmakeconfig/EolianConfig.cmake
config.status: creating cmakeconfig/EolianConfigVersion.cmake
config.status: creating cmakeconfig/EolianCxxConfig.cmake
config.status: creating cmakeconfig/EolianCxxConfigVersion.cmake
config.status: creating cmakeconfig/EinaCxxConfig.cmake
config.status: creating cmakeconfig/EinaCxxConfigVersion.cmake
config.status: creating cmakeconfig/EoCxxConfig.cmake
config.status: creating cmakeconfig/EoCxxConfigVersion.cmake
config.status: creating cmakeconfig/EcoreCxxConfig.cmake
config.status: creating cmakeconfig/EcoreCxxConfigVersion.cmake
config.status: creating cmakeconfig/EvasCxxConfig.cmake
config.status: creating cmakeconfig/EvasCxxConfigVersion.cmake
config.status: creating cmakeconfig/EetCxxConfig.cmake
config.status: creating cmakeconfig/EetCxxConfigVersion.cmake
config.status: creating cmakeconfig/EetConfig.cmake
config.status: creating cmakeconfig/EetConfigVersion.cmake
config.status: creating cmakeconfig/EvasConfig.cmake
config.status: creating cmakeconfig/EvasConfigVersion.cmake
config.status: creating cmakeconfig/EcoreConfig.cmake
config.status: creating cmakeconfig/EcoreConfigVersion.cmake
config.status: creating cmakeconfig/EdjeConfig.cmake
config.status: creating cmakeconfig/EdjeConfigVersion.cmake
config.status: creating cmakeconfig/EldbusConfig.cmake
config.status: creating cmakeconfig/EldbusConfigVersion.cmake
config.status: creating cmakeconfig/EfreetConfig.cmake
config.status: creating cmakeconfig/EfreetConfigVersion.cmake
config.status: creating cmakeconfig/EthumbConfig.cmake
config.status: creating cmakeconfig/EthumbConfigVersion.cmake
config.status: creating cmakeconfig/EthumbClientConfig.cmake
config.status: creating cmakeconfig/EthumbClientConfigVersion.cmake
config.status: creating cmakeconfig/EmotionConfig.cmake
config.status: creating cmakeconfig/EmotionConfigVersion.cmake
config.status: creating cmakeconfig/EluaConfig.cmake
config.status: creating cmakeconfig/EluaConfigVersion.cmake
config.status: creating cmakeconfig/EmileConfig.cmake
config.status: creating cmakeconfig/EmileConfigVersion.cmake
config.status: creating config.h
config.status: executing depfiles commands
config.status: executing libtool commands
config.status: executing po-directories commands
config.status: creating po/POTFILES
config.status: creating po/Makefile



------------------------------------------------------------------------
efl 1.16.0
------------------------------------------------------------------------

Configuration...: [1;36mprofile=release os=linux-gnu[0m
  EFL API Set...: both
  CPU Extensions: x86_64 ([1;32m+mmx[0m [1;32m+sse3[0m)
  System Feature: [1;36mcoroutine=ucontext[0m [1;32m+inotify[0m [1;32m+atfile_source[0m [1;32m+ipv6[0m
  Threads.......: POSIX ([1;32m+spinlocks[0m [1;32m+barrier[0m [1;32m+affinity[0m [1;32m+setname[0m)
  Cryptography..: gnutls
  X11...........: xlib
  OpenGL........: full
  C++11.........: yes
Eina............: yes ([1;32m+systemd-journal[0m unwind=yes)
Eo..............: yes ([1;32m+eo-id[0m)
Eolian..........: yes ([1;32m+cxx[0m)
Emile...........: yes ([1;36mcrypto=gnutls[0m)
Eet.............: yes
Evas............: yes ([1;31m-lua-old[0m [1;32m+fontconfig[0m [1;31m-fribidi[0m [1;31m-harfbuzz[0m [1;32m+cserve[0m [1;31m-tile-rotate[0m [1;36mdither-mask=big[0m)
  Engines.......: [1;36mbuffer=static[0m [1;31m-fb[0m [1;31m-psl1ght[0m [1;31m-gl-cocoa[0m [1;32m+gl-sdl[0m [1;31m-software-gdi[0m [1;31m-software-ddraw[0m [1;31m-wayland-egl[0m [1;31m-wayland-shm[0m [1;31m-drm[0m [1;31m-gl-drm[0m [1;32m+software-xlib[0m [1;32m+gl-xlib[0m
  Image Loaders.: [1;32m+bmp[0m [1;32m+eet[0m [1;32m+generic[0m [1;32m+gif[0m [1;32m+ico[0m [1;32m+jpeg[0m [1;31m-jp2k[0m [1;32m+pmaps[0m [1;32m+png[0m [1;32m+psd[0m [1;31m-tga[0m [1;32m+tiff[0m [1;32m+wbmp[0m [1;31m-webp[0m [1;32m+xpm[0m [1;36mtgv=static[0m [1;36mdds=static[0m
Ecore...........: yes ([1;32m+systemd-daemon[0m [1;31m-glib[0m [1;31m-g-main-loop[0m)
Ecore_Con.......: yes ([1;31m-cares[0m [1;32m+local-sockets[0m [1;32m+abstract-sockets[0m [1;36mresolver=dns.c[0m [1;32m+systemd-daemon[0m)
Ecore_File......: yes
Ecore_IMF.......: yes ([1;31m-ibus[0m [1;31m-scim[0m [1;31m-xim[0m [1;31m-wayland[0m)
Ecore_X.........: xlib ([1;31m-xpresent[0m [1;31m-gesture[0m [1;32m+xinput2[0m [1;31m-xinput22[0m)
Ecore_SDL.......: yes
Ecore_Wayland...: no
IVI-Shell.......: no
Ecore_Buffer....: no ()
Ecore_FB........: no ()
Ecore_Audio.....: yes ([1;31m-alsa[0m [1;32m+pulseaudio[0m [1;32m+sndfile[0m [1;31m-coreaudio[0m)
Ecore_Avahi.....: yes ([1;32m+avahi-client[0m)
Ecore_Evas......: yes ([1;32m+extn[0m [1;32m+ews[0m [1;31m-fb[0m [1;31m-drm[0m [1;31m-gl-drm[0m [1;31m-psl1ght[0m [1;31m-opengl-cocoa[0m [1;32m+software-sdl[0m [1;32m+opengl-sdl[0m [1;31m-wayland-shm[0m [1;31m-wayland-egl[0m [1;31m-software-gdi[0m [1;31m-software-ddraw[0m [1;32m+software-x11[0m [1;32m+opengl-x11[0m)
Ector...........: yes
Eeze............: yes ([1;32m+libmount[0m [1;31m-tizen[0m)
EPhysics........: no
Edje............: yes ([1;31m-physics[0m [1;31m-multisense[0m [1;31m-lua-old[0m)
Emotion.........: yes ([1;32m+v4l2[0m [1;32m+xine[0m [1;31m-gstreamer[0m [1;31m-gstreamer1[0m [1;31m-libvlc[0m [1;36mgeneric=static[0m)
Ethumb..........: yes
Ethumb_Client...: yes
Elua............: yes
Tests...........: make check (inexplicitly enabled)
Examples........: make examples (make install-examples)
Documentation...: no
Compilation.....: make (or gmake)
  CPPFLAGS......: 
  CFLAGS........: -O2 -march=x86-64 -pipe
  CXXFLAGS......: -O2 -march=x86-64 -pipe -std=gnu++11
  LDFLAGS.......: -Wl,-O1 -Wl,--as-needed
  
Installation....: make install (as root if needed, with 'su' or 'sudo')
  prefix........: /usr
  dbus units....: /usr/share/dbus-1/services
  systemd units.: /usr/lib/systemd/user

_____________________________________________________________________

==-- WARNING --==

_____________________________________________________________________
_____________________________________________________________________
You have chosen to disable physics support. This disables lots of
core functionality and is effectively never tested. You are going
to find features that suddenly don't work and as a result cause
a series of breakages. This is simply not tested so you are on
your own in terms of ensuring everything works if you do this
_____________________________________________________________________
_____________________________________________________________________
Fribidi is used for handling right-to-left text (like Arabic,
Hebrew, Farsi, Persian etc.) and is very likely not a feature
you want to disable unless you know for absolute certain you
will never encounter and have to display such scripts. Also
note that we don't test with fribidi disabled so you may also
trigger code paths with bugs that are never normally used.
_____________________________________________________________________
_____________________________________________________________________
You disabled Gstreamer 1.x support. You likely don't want to do
this as it will heavily limit your media support options and render
some functionality as useless, leading to visible application bugs.
_____________________________________________________________________
_____________________________________________________________________
You disabled XIM input method support. This is the most basic and
core input method protocol supported in X11 and you almost certainly
want the support for it. Input methods allow for complex text input
like for Chinese, Japanese and Korean as well as virtual keyboards
on touch/mobile devices.
_____________________________________________________________________
_____________________________________________________________________
SCIM is a modern and very common input method framework and you
disabled support for it. You very likely want the support for
complex language input, so please reconsider this. Input methods
allow for complex text input like for Chinese, Japanese and Korean
as well as virtual keyboards on touch/mobile devices.
_____________________________________________________________________
_____________________________________________________________________
Multisense has been disabled. This causes Edje audio suport to
Simply not work, and will break applications and libraries
that rely on it with users then reporting bugs.
If you want to mute audio, there are APIs and policies to do
that, as opposed to compiling it out.
_____________________________________________________________________
_____________________________________________________________________

==-- WARNING --==

_____________________________________________________________________
>>> Source configured.
>>> Compiling source in /var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0 ...
make -j16 -s 
Making all in src
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_abi.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_abi.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_accessor.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_accessor.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_array.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_array.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_binshare.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_binshare.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_benchmark.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_benchmark.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_binbuf.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_binbuf.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_cow.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_cow.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_convert.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_convert.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_counter.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_counter.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_cpu.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_cpu.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_crc.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_crc.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_debug.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_debug.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_debug_bt.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_debug_bt.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_debug_bt_file.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_debug_bt_file.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_debug_chunk.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_debug_chunk.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_debug_monitor.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_debug_monitor.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_debug_proto.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_debug_proto.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_debug_thread.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_debug_thread.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_error.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_error.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_file_common.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_file_common.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_evlog.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_evlog.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_hamster.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_hamster.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_fp.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_fp.o
[01m[Klib/eina/eina_debug_monitor.c:[m[K In function ‘[01m[K_eina_debug_monitor[m[K’:
[01m[Klib/eina/eina_debug_monitor.c:242:29:[m[K [01;35m[Kwarning: [m[Kignoring return value of ‘[01m[Kwrite[m[K’, declared with attribute warn_unused_result [-Wunused-result]
                             write(_eina_debug_monitor_service_fd,
[01;32m[K                             ^[m[K
[01m[Klib/eina/eina_debug_monitor.c:244:29:[m[K [01;35m[Kwarning: [m[Kignoring return value of ‘[01m[Kwrite[m[K’, declared with attribute warn_unused_result [-Wunused-result]
                             write(_eina_debug_monitor_service_fd,
[01;32m[K                             ^[m[K
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_hash.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_hash.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_inlist.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_inlist.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_inarray.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_inarray.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_iterator.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_iterator.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_lalloc.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_lalloc.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_list.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_list.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_log.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_log.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_magic.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_magic.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_main.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_main.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_matrix.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_matrix.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_matrixsparse.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_matrixsparse.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_mempool.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_mempool.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_mmap.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_mmap.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_module.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_module.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_prefix.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_prefix.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_quad.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_quad.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_quadtree.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_quadtree.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_rbtree.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_rbtree.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_safety_checks.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_safety_checks.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_rectangle.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_rectangle.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_sched.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_sched.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_share_common.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_share_common.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_simple_xml_parser.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_simple_xml_parser.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_str.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_str.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_strbuf.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_strbuf.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_stringshare.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_stringshare.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_strbuf_common.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_strbuf_common.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_thread.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_thread.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_thread_queue.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_thread_queue.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_ustrbuf.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_ustrbuf.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_unicode.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_unicode.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_tiler.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_tiler.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_tmpstr.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_tmpstr.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_ustringshare.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_ustringshare.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_util.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_util.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_value.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_value.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_value_util.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_value_util.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_xattr.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_xattr.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_quaternion.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_quaternion.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_bezier.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_bezier.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c lib/eina/eina_file.c  -fPIC -DPIC -o lib/eina/.libs/lib_eina_libeina_la-eina_file.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c modules/eina/mp/one_big/eina_one_big.c  -fPIC -DPIC -o modules/eina/mp/one_big/.libs/lib_eina_libeina_la-eina_one_big.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c modules/eina/mp/pass_through/eina_pass_through.c  -fPIC -DPIC -o modules/eina/mp/pass_through/.libs/lib_eina_libeina_la-eina_pass_through.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eina -I../src/lib/eina -I../src/bindings/eina -I../src/bindings/eina -D_REENTRANT -DEFL_EINA_BUILD=1 -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eina\" -O2 -march=x86-64 -pipe -c modules/eina/mp/chained_pool/eina_chained_mempool.c  -fPIC -DPIC -o modules/eina/mp/chained_pool/.libs/lib_eina_libeina_la-eina_chained_mempool.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/eo_parser.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-eo_parser.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/eo_lexer.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-eo_lexer.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/eolian.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-eolian.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_fill.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_fill.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/eolian_database.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-eolian_database.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_class.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_class.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_class_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_class_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_function_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_function_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_function.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_function.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_function_parameter.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_function_parameter.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_function_parameter_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_function_parameter_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_type.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_type.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_type_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_type_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_implement.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_implement.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_implement_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_implement_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_constructor.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_constructor.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_constructor_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_constructor_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_event.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_event.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_event_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_event_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_expr.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_expr.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_expr_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_expr_api.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_var.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_var.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_validate.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_validate.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eolian -I../src/lib/eolian -I../src/bindings/eolian -I../src/bindings/eolian -I../src/lib/eina -I../src/lib/eina -DEFL_EOLIAN_BUILD=1 -DPACKAGE_DATA_DIR=\"/usr/share/eolian\" -O2 -march=x86-64 -pipe -c lib/eolian/database_var_api.c  -fPIC -DPIC -o lib/eolian/.libs/lib_eolian_libeolian_la-database_var_api.o
libtool: link: x86_64-pc-linux-gnu-gcc -shared  -fPIC -DPIC  lib/eina/.libs/lib_eina_libeina_la-eina_abi.o lib/eina/.libs/lib_eina_libeina_la-eina_accessor.o lib/eina/.libs/lib_eina_libeina_la-eina_array.o lib/eina/.libs/lib_eina_libeina_la-eina_benchmark.o lib/eina/.libs/lib_eina_libeina_la-eina_binbuf.o lib/eina/.libs/lib_eina_libeina_la-eina_binshare.o lib/eina/.libs/lib_eina_libeina_la-eina_convert.o lib/eina/.libs/lib_eina_libeina_la-eina_counter.o lib/eina/.libs/lib_eina_libeina_la-eina_cow.o lib/eina/.libs/lib_eina_libeina_la-eina_cpu.o lib/eina/.libs/lib_eina_libeina_la-eina_crc.o lib/eina/.libs/lib_eina_libeina_la-eina_debug.o lib/eina/.libs/lib_eina_libeina_la-eina_debug_bt.o lib/eina/.libs/lib_eina_libeina_la-eina_debug_bt_file.o lib/eina/.libs/lib_eina_libeina_la-eina_debug_chunk.o lib/eina/.libs/lib_eina_libeina_la-eina_debug_monitor.o lib/eina/.libs/lib_eina_libeina_la-eina_debug_proto.o lib/eina/.libs/lib_eina_libeina_la-eina_debug_thread.o lib/eina/.libs/lib_eina_libeina_la-eina_error.o lib/eina/.libs/lib_eina_libeina_la-eina_evlog.o lib/eina/.libs/lib_eina_libeina_la-eina_file_common.o lib/eina/.libs/lib_eina_libeina_la-eina_fp.o lib/eina/.libs/lib_eina_libeina_la-eina_hamster.o lib/eina/.libs/lib_eina_libeina_la-eina_hash.o lib/eina/.libs/lib_eina_libeina_la-eina_inarray.o lib/eina/.libs/lib_eina_libeina_la-eina_inlist.o lib/eina/.libs/lib_eina_libeina_la-eina_iterator.o lib/eina/.libs/lib_eina_libeina_la-eina_lalloc.o lib/eina/.libs/lib_eina_libeina_la-eina_list.o lib/eina/.libs/lib_eina_libeina_la-eina_log.o lib/eina/.libs/lib_eina_libeina_la-eina_magic.o lib/eina/.libs/lib_eina_libeina_la-eina_main.o lib/eina/.libs/lib_eina_libeina_la-eina_matrix.o lib/eina/.libs/lib_eina_libeina_la-eina_matrixsparse.o lib/eina/.libs/lib_eina_libeina_la-eina_mempool.o lib/eina/.libs/lib_eina_libeina_la-eina_mmap.o lib/eina/.libs/lib_eina_libeina_la-eina_module.o lib/eina/.libs/lib_eina_libeina_la-eina_prefix.o lib/eina/.libs/lib_eina_libeina_la-eina_quad.o lib/eina/.libs/lib_eina_libeina_la-eina_quadtree.o lib/eina/.libs/lib_eina_libeina_la-eina_rbtree.o lib/eina/.libs/lib_eina_libeina_la-eina_rectangle.o lib/eina/.libs/lib_eina_libeina_la-eina_safety_checks.o lib/eina/.libs/lib_eina_libeina_la-eina_sched.o lib/eina/.libs/lib_eina_libeina_la-eina_share_common.o lib/eina/.libs/lib_eina_libeina_la-eina_simple_xml_parser.o lib/eina/.libs/lib_eina_libeina_la-eina_str.o lib/eina/.libs/lib_eina_libeina_la-eina_strbuf.o lib/eina/.libs/lib_eina_libeina_la-eina_strbuf_common.o lib/eina/.libs/lib_eina_libeina_la-eina_stringshare.o lib/eina/.libs/lib_eina_libeina_la-eina_thread.o lib/eina/.libs/lib_eina_libeina_la-eina_thread_queue.o lib/eina/.libs/lib_eina_libeina_la-eina_tiler.o lib/eina/.libs/lib_eina_libeina_la-eina_tmpstr.o lib/eina/.libs/lib_eina_libeina_la-eina_unicode.o lib/eina/.libs/lib_eina_libeina_la-eina_ustrbuf.o lib/eina/.libs/lib_eina_libeina_la-eina_ustringshare.o lib/eina/.libs/lib_eina_libeina_la-eina_util.o lib/eina/.libs/lib_eina_libeina_la-eina_value.o lib/eina/.libs/lib_eina_libeina_la-eina_value_util.o lib/eina/.libs/lib_eina_libeina_la-eina_xattr.o lib/eina/.libs/lib_eina_libeina_la-eina_quaternion.o lib/eina/.libs/lib_eina_libeina_la-eina_bezier.o lib/eina/.libs/lib_eina_libeina_la-eina_file.o modules/eina/mp/chained_pool/.libs/lib_eina_libeina_la-eina_chained_mempool.o modules/eina/mp/one_big/.libs/lib_eina_libeina_la-eina_one_big.o modules/eina/mp/pass_through/.libs/lib_eina_libeina_la-eina_pass_through.o   -Wl,--as-needed -lsystemd -lpthread -lm -ldl -lrt -lunwind-generic -lunwind  -O2 -march=x86-64 -Wl,-O1 -Wl,--gc-sections -Wl,--no-copy-dt-needed-entries   -Wl,-soname -Wl,libeina.so.1 -o lib/eina/.libs/libeina.so.1.16.0
libtool: link: (cd "lib/eina/.libs" && rm -f "libeina.so.1" && ln -s "libeina.so.1.16.0" "libeina.so.1")
libtool: link: (cd "lib/eina/.libs" && rm -f "libeina.so" && ln -s "libeina.so.1.16.0" "libeina.so")
libtool: link: ( cd "lib/eina/.libs" && rm -f "libeina.la" && ln -s "../libeina.la" "libeina.la" )
libtool: link: x86_64-pc-linux-gnu-gcc -shared  -fPIC -DPIC  lib/eolian/.libs/lib_eolian_libeolian_la-eo_lexer.o lib/eolian/.libs/lib_eolian_libeolian_la-eo_parser.o lib/eolian/.libs/lib_eolian_libeolian_la-eolian.o lib/eolian/.libs/lib_eolian_libeolian_la-eolian_database.o lib/eolian/.libs/lib_eolian_libeolian_la-database_fill.o lib/eolian/.libs/lib_eolian_libeolian_la-database_class.o lib/eolian/.libs/lib_eolian_libeolian_la-database_class_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_function.o lib/eolian/.libs/lib_eolian_libeolian_la-database_function_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_function_parameter.o lib/eolian/.libs/lib_eolian_libeolian_la-database_function_parameter_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_type.o lib/eolian/.libs/lib_eolian_libeolian_la-database_type_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_implement.o lib/eolian/.libs/lib_eolian_libeolian_la-database_implement_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_constructor.o lib/eolian/.libs/lib_eolian_libeolian_la-database_constructor_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_event.o lib/eolian/.libs/lib_eolian_libeolian_la-database_event_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_expr.o lib/eolian/.libs/lib_eolian_libeolian_la-database_expr_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_var.o lib/eolian/.libs/lib_eolian_libeolian_la-database_var_api.o lib/eolian/.libs/lib_eolian_libeolian_la-database_validate.o   -Wl,-rpath -Wl,/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0/src/lib/eina/.libs -Wl,--as-needed lib/eina/.libs/libeina.so -lsystemd -lm -ldl -lrt -lunwind-generic -lunwind -lpthread  -O2 -march=x86-64 -Wl,-O1 -Wl,--gc-sections -Wl,--no-copy-dt-needed-entries   -Wl,-soname -Wl,libeolian.so.1 -o lib/eolian/.libs/libeolian.so.1.16.0
libtool: link: (cd "lib/eolian/.libs" && rm -f "libeolian.so.1" && ln -s "libeolian.so.1.16.0" "libeolian.so.1")
libtool: link: (cd "lib/eolian/.libs" && rm -f "libeolian.so" && ln -s "libeolian.so.1.16.0" "libeolian.so")
libtool: link: ( cd "lib/eolian/.libs" && rm -f "libeolian.la" && ln -s "../libeolian.la" "libeolian.la" )
libtool: link: x86_64-pc-linux-gnu-gcc -std=gnu99 -O2 -march=x86-64 -pipe -Wl,-O1 -o bin/eolian/.libs/eolian_gen bin/eolian/bin_eolian_eolian_gen-common_funcs.o bin/eolian/bin_eolian_eolian_gen-eo_generator.o bin/eolian/bin_eolian_eolian_gen-impl_generator.o bin/eolian/bin_eolian_eolian_gen-legacy_generator.o bin/eolian/bin_eolian_eolian_gen-types_generator.o bin/eolian/bin_eolian_eolian_gen-docs_generator.o bin/eolian/bin_eolian_eolian_gen-main.o -fvisibility=hidden -fdata-sections -ffunction-sections -Wl,--gc-sections -fno-strict-aliasing -Wl,--no-copy-dt-needed-entries  -Wl,--as-needed lib/eina/.libs/libeina.so lib/eolian/.libs/libeolian.so /var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0/src/lib/eina/.libs/libeina.so -lsystemd -lm -ldl -lrt -lunwind-generic -lunwind -lpthread
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_root_node.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_root_node.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_canvas3d_eet.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_canvas3d_eet.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_node.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_node.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_filter_mixin.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_filter_mixin.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_object_vg.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_object_vg.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_gradient_radial.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_gradient_radial.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_gradient_linear.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_gradient_linear.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_shape.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_shape.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_gradient.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_gradient.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/lz4/lz4hc.c  -fPIC -DPIC -o static_libs/lz4/.libs/lib_evas_libevas_la-lz4hc.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_container.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_container.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/rg_etc2.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_evas_libevas_la-rg_etc2.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/lz4/lz4.c  -fPIC -DPIC -o static_libs/lz4/.libs/lib_evas_libevas_la-lz4.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/canvas/evas_vg_utils.c  -fPIC -DPIC -o lib/evas/canvas/.libs/lib_evas_libevas_la-evas_vg_utils.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/etc2_encoder.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_evas_libevas_la-etc2_encoder.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/rg_etc1.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_evas_libevas_la-rg_etc1.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eet\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eet -I../src/lib/eet -I../src/bindings/eet -I../src/bindings/eet -I../src/lib/emile -I../src/lib/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EET_BUILD=1 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/rg_etc2.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_eet_libeet_la-rg_etc2.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eet\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eet -I../src/lib/eet -I../src/bindings/eet -I../src/bindings/eet -I../src/lib/emile -I../src/lib/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EET_BUILD=1 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/etc2_encoder.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_eet_libeet_la-etc2_encoder.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/eet\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eet -I../src/lib/eet -I../src/bindings/eet -I../src/bindings/eet -I../src/lib/emile -I../src/lib/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EET_BUILD=1 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/rg_etc1.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_eet_libeet_la-rg_etc1.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/efl -I../src/lib/evas/canvas -I../src/lib/evas/canvas/render2 -I../src/lib/evas/common -I../src/lib/evas/cserve2 -I../src/lib/evas/file -I../src/lib/evas/include -I../src/static_libs/libunibreak -I../src/lib/evas/canvas -I../src/modules/evas/engines/software_generic -I../src/modules/evas/engines/gl_generic -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/evas\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I/usr/include/freetype2 -I/usr/include/luajit-2.0 -I../src/lib/evas -I../src/lib/evas -I../src/bindings/evas -I../src/bindings/evas -I../src/lib/ector -I../src/lib/ector -I../src/lib/emile -I../src/lib/emile -I../src/lib/efl -I../src/lib/efl -I../src/lib/eina -I../src/lib/eina -I../src/lib/eet -I../src/lib/eet -I../src/lib/eo -I../src/lib/eo -DEFL_EVAS_BUILD=1 -DEFL_GFX_FILTER_BETA -I../src/static_libs/rg_etc -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/evas/common/evas_convert_rgb_32.c  -fPIC -DPIC -o lib/evas/common/.libs/lib_evas_common_libevas_convert_rgb_32_la-evas_convert_rgb_32.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/efl -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/efreet\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -DDATA_DIR=\"/usr/share\" -DLOCALE_DIR=\"/usr/share/locale\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/efreet -I../src/lib/efreet -I../src/bindings/efreet -I../src/bindings/efreet -I../src/lib/ecore_ipc -I../src/lib/ecore_ipc -I../src/lib/emile -I../src/lib/emile -I../src/lib/eina -I../src/lib/eina -I../src/lib/eo -I../src/lib/eo -I../src/lib/ecore_file -I../src/lib/ecore_file -I../src/lib/ecore -I../src/lib/ecore -I../src/lib/eet -I../src/lib/eet -DEFL_EFREET_BUILD=1 -O2 -march=x86-64 -pipe -c lib/efreet/efreet_mime.c  -fPIC -DPIC -o lib/efreet/.libs/lib_efreet_libefreet_mime_la-efreet_mime.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/efl -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/efreet\" -DPACKAGE_BUILD_DIR=\"/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0\" -DDATA_DIR=\"/usr/share\" -DLOCALE_DIR=\"/usr/share/locale\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/efreet -I../src/lib/efreet -I../src/bindings/efreet -I../src/bindings/efreet -I../src/lib/ecore_ipc -I../src/lib/ecore_ipc -I../src/lib/emile -I../src/lib/emile -I../src/lib/eina -I../src/lib/eina -I../src/lib/eo -I../src/lib/eo -I../src/lib/ecore_file -I../src/lib/ecore_file -I../src/lib/ecore -I../src/lib/ecore -I../src/lib/eet -I../src/lib/eet -DEFL_EFREET_BUILD=1 -O2 -march=x86-64 -pipe -c lib/efreet/efreet_trash.c  -fPIC -DPIC -o lib/efreet/.libs/lib_efreet_libefreet_trash_la-efreet_trash.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/emile/emile_compress.c  -fPIC -DPIC -o lib/emile/.libs/lib_emile_libemile_la-emile_compress.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/emile/emile_main.c  -fPIC -DPIC -o lib/emile/.libs/lib_emile_libemile_la-emile_main.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/emile/emile_image.c  -fPIC -DPIC -o lib/emile/.libs/lib_emile_libemile_la-emile_image.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/ecore_evas -I../src/lib/ecore_evas -I../src/bindings/ecore_evas -I../src/bindings/ecore_evas -I../src/lib/emile -I../src/lib/emile -I../src/lib/eina -I../src/lib/eina -I../src/lib/eo -I../src/lib/eo -I../src/lib/efl -I../src/lib/efl -I../src/lib/evas -I../src/lib/evas -I../src/lib/eet -I../src/lib/eet -I../src/lib/ecore -I../src/lib/ecore -I../src/lib/ecore_input -I../src/lib/ecore_input -I../src/lib/ecore_input_evas -I../src/lib/ecore_input_evas -DEFL_ECORE_EVAS_BUILD=1 -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/ecore_ipc -I../src/lib/ecore_ipc -I../src/bindings/ecore_ipc -I../src/bindings/ecore_ipc -I../src/lib/eina -I../src/lib/eina -I../src/lib/eo -I../src/lib/eo -I../src/lib/ecore -I../src/lib/ecore -I../src/lib/ecore_con -I../src/lib/ecore_con -DEFL_ECORE_IPC_BUILD=1 -I../src/modules/evas/engines/buffer -I../src/modules/ecore_evas/engines/extn -O2 -march=x86-64 -pipe -c modules/ecore_evas/engines/extn/ecore_evas_extn_buf.c  -fPIC -DPIC -o modules/ecore_evas/engines/extn/.libs/modules_ecore_evas_engines_extn_module_la-ecore_evas_extn_buf.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/ecore_evas -I../src/lib/ecore_evas -I../src/bindings/ecore_evas -I../src/bindings/ecore_evas -I../src/lib/emile -I../src/lib/emile -I../src/lib/eina -I../src/lib/eina -I../src/lib/eo -I../src/lib/eo -I../src/lib/efl -I../src/lib/efl -I../src/lib/evas -I../src/lib/evas -I../src/lib/eet -I../src/lib/eet -I../src/lib/ecore -I../src/lib/ecore -I../src/lib/ecore_input -I../src/lib/ecore_input -I../src/lib/ecore_input_evas -I../src/lib/ecore_input_evas -DEFL_ECORE_EVAS_BUILD=1 -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/ecore_ipc -I../src/lib/ecore_ipc -I../src/bindings/ecore_ipc -I../src/bindings/ecore_ipc -I../src/lib/eina -I../src/lib/eina -I../src/lib/eo -I../src/lib/eo -I../src/lib/ecore -I../src/lib/ecore -I../src/lib/ecore_con -I../src/lib/ecore_con -DEFL_ECORE_IPC_BUILD=1 -I../src/modules/evas/engines/buffer -I../src/modules/ecore_evas/engines/extn -O2 -march=x86-64 -pipe -c modules/ecore_evas/engines/extn/ecore_evas_extn.c  -fPIC -DPIC -o modules/ecore_evas/engines/extn/.libs/modules_ecore_evas_engines_extn_module_la-ecore_evas_extn.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/rg_etc1.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_emile_libemile_la-rg_etc1.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/rg_etc2.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_emile_libemile_la-rg_etc2.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/rg_etc/etc2_encoder.c  -fPIC -DPIC -o static_libs/rg_etc/.libs/lib_emile_libemile_la-etc2_encoder.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/lz4/lz4.c  -fPIC -DPIC -o static_libs/lz4/.libs/lib_emile_libemile_la-lz4.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c static_libs/lz4/lz4hc.c  -fPIC -DPIC -o static_libs/lz4/.libs/lib_emile_libemile_la-lz4hc.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/static_libs/rg_etc -DPACKAGE_BIN_DIR=\"/usr/bin\" -DPACKAGE_LIB_DIR=\"/usr/lib64\" -DPACKAGE_DATA_DIR=\"/usr/share/emile\" -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/emile -I../src/lib/emile -I../src/bindings/emile -I../src/bindings/emile -I../src/lib/eina -I../src/lib/eina -DEFL_EMILE_BUILD=1 -I../src/static_libs/lz4 -O2 -march=x86-64 -pipe -c lib/emile/emile_cipher_gnutls.c  -fPIC -DPIC -o lib/emile/.libs/lib_emile_libemile_la-emile_cipher_gnutls.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eo -I../src/lib/eo -I../src/bindings/eo -I../src/bindings/eo -I../src/lib/eina -I../src/lib/eina -DEFL_EO_BUILD=1 -O2 -march=x86-64 -pipe -c lib/eo/eo.c  -fPIC -DPIC -o lib/eo/.libs/lib_eo_libeo_la-eo.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eo -I../src/lib/eo -I../src/bindings/eo -I../src/bindings/eo -I../src/lib/eina -I../src/lib/eina -DEFL_EO_BUILD=1 -O2 -march=x86-64 -pipe -c lib/eo/eo_ptr_indirection.c  -fPIC -DPIC -o lib/eo/.libs/lib_eo_libeo_la-eo_ptr_indirection.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eo -I../src/lib/eo -I../src/bindings/eo -I../src/bindings/eo -I../src/lib/eina -I../src/lib/eina -DEFL_EO_BUILD=1 -O2 -march=x86-64 -pipe -c lib/eo/eo_base_class.c  -fPIC -DPIC -o lib/eo/.libs/lib_eo_libeo_la-eo_base_class.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/eo -I../src/lib/eo -I../src/bindings/eo -I../src/bindings/eo -I../src/lib/eina -I../src/lib/eina -DEFL_EO_BUILD=1 -O2 -march=x86-64 -pipe -c lib/eo/eo_class_class.c  -fPIC -DPIC -o lib/eo/.libs/lib_eo_libeo_la-eo_class_class.o
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/efl -I../src/lib/efl -I../src/bindings/efl -I../src/bindings/efl -I../src/lib/eo -I../src/lib/eo -I../src/lib/eina -I../src/lib/eina -DEFL_EFL_BUILD=1 -DEFL_GFX_FILTER_BETA -O2 -march=x86-64 -pipe -c lib/efl/interfaces/efl_interfaces_main.c  -fPIC -DPIC -o lib/efl/interfaces/.libs/lib_efl_libefl_la-efl_interfaces_main.o
[01m[Klib/emile/emile_cipher_gnutls.c:[m[K In function ‘[01m[Kemile_cipher_server_listen[m[K’:
[01m[Klib/emile/emile_cipher_gnutls.c:345:13:[m[K [01;31m[Kerror: [m[K‘[01m[KEMILE_SSLv3[m[K’ undeclared (first use in this function)
        t != EMILE_SSLv3 &&
[01;32m[K             ^[m[K
[01m[Klib/emile/emile_cipher_gnutls.c:345:13:[m[K [01;36m[Knote: [m[Keach undeclared identifier is reported only once for each function it appears in
[01m[Klib/emile/emile_cipher_gnutls.c:[m[K In function ‘[01m[Kemile_cipher_server_connect[m[K’:
[01m[Klib/emile/emile_cipher_gnutls.c:385:12:[m[K [01;31m[Kerror: [m[K‘[01m[KEMILE_SSLv3[m[K’ undeclared (first use in this function)
       case EMILE_SSLv3:
[01;32m[K            ^[m[K
Makefile:24986: recipe for target 'lib/emile/lib_emile_libemile_la-emile_cipher_gnutls.lo' failed
make[4]: *** [lib/emile/lib_emile_libemile_la-emile_cipher_gnutls.lo] Error 1
make[4]: *** Waiting for unfinished jobs....
libtool: compile:  x86_64-pc-linux-gnu-gcc -std=gnu99 -DHAVE_CONFIG_H -I. -I.. -I../src/lib/efl -I../src/lib/efl -Wall -Wextra -Wpointer-arith -Wno-missing-field-initializers -fvisibility=hidden -fdata-sections -ffunction-sections -I../src/lib/efl -I../src/lib/efl -I../src/bindings/efl -I../src/bindings/efl -I../src/lib/eo -I../src/lib/eo -I../src/lib/eina -I../src/lib/eina -DEFL_EFL_BUILD=1 -DEFL_GFX_FILTER_BETA -O2 -march=x86-64 -pipe -c lib/efl/interfaces/efl_gfx_shape.c  -fPIC -DPIC -o lib/efl/interfaces/.libs/lib_efl_libefl_la-efl_gfx_shape.o
[01m[Klib/emile/emile_image.c:[m[K In function ‘[01m[K_emile_jpeg_data[m[K’:
[01m[Klib/emile/emile_image.c:1601:27:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kopts[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    Emile_Image_Load_Opts *opts = NULL;
[01;32m[K                           ^[m[K
[01m[Klib/emile/emile_image.c:1607:28:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kptr_rotate[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    uint32_t *ptr2 = NULL, *ptr_rotate = NULL;
[01;32m[K                            ^[m[K
[01m[Klib/emile/emile_image.c:1608:14:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kptrag[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    uint16_t *ptrag = NULL, *ptrag_rotate = NULL;
[01;32m[K              ^[m[K
[01m[Klib/emile/emile_image.c:1608:29:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kptrag_rotate[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    uint16_t *ptrag = NULL, *ptrag_rotate = NULL;
[01;32m[K                             ^[m[K
[01m[Klib/emile/emile_image.c:1609:13:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kptrg[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    uint8_t *ptrg = NULL, *ptrg_rotate = NULL;
[01;32m[K             ^[m[K
[01m[Klib/emile/emile_image.c:1609:27:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kptrg_rotate[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    uint8_t *ptrg = NULL, *ptrg_rotate = NULL;
[01;32m[K                           ^[m[K
[01m[Klib/emile/emile_image.c:1611:8:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kregion[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    int region = 0;
[01;32m[K        ^[m[K
[01m[Klib/emile/emile_image.c:1620:14:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kline_done[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    Eina_Bool line_done = EINA_FALSE;
[01;32m[K              ^[m[K
[01m[Klib/emile/emile_image.c:1621:14:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kptrg_free[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    Eina_Bool ptrg_free = EINA_FALSE;
[01;32m[K              ^[m[K
[01m[Klib/emile/emile_image.c:1622:14:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kptrag_free[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    Eina_Bool ptrag_free = EINA_FALSE;
[01;32m[K              ^[m[K
[01m[Klib/emile/emile_image.c:1623:14:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kr[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    Eina_Bool r = EINA_FALSE;
[01;32m[K              ^[m[K
[01m[Klib/emile/emile_image.c:[m[K In function ‘[01m[K_emile_jpeg_head[m[K’:
[01m[Klib/emile/emile_image.c:1359:27:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kopts[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    Emile_Image_Load_Opts *opts = NULL;
[01;32m[K                           ^[m[K
[01m[Klib/emile/emile_image.c:1367:8:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kdegree[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    int degree = 0;
[01;32m[K        ^[m[K
[01m[Klib/emile/emile_image.c:1368:14:[m[K [01;35m[Kwarning: [m[Kvariable ‘[01m[Kchange_wh[m[K’ might be clobbered by ‘[01m[Klongjmp[m[K’ or ‘[01m[Kvfork[m[K’ [-Wclobbered]
    Eina_Bool change_wh = EINA_FALSE;
[01;32m[K              ^[m[K
Makefile:35520: recipe for target 'all-recursive' failed
make[3]: *** [all-recursive] Error 1
Makefile:12505: recipe for target 'all' failed
make[2]: *** [all] Error 2
Makefile:2461: recipe for target 'all-recursive' failed
make[1]: *** [all-recursive] Error 1
Makefile:1609: recipe for target 'all' failed
make: *** [all] Error 2
 [31;01m*[0m ERROR: dev-libs/efl-1.16.0::sabayon-tools failed (compile phase):
 [31;01m*[0m   emake failed
 [31;01m*[0m 
 [31;01m*[0m If you need support, post the output of `emerge --info '=dev-libs/efl-1.16.0::sabayon-tools'`,
 [31;01m*[0m the complete build log and the output of `emerge -pqv '=dev-libs/efl-1.16.0::sabayon-tools'`.
 [31;01m*[0m The complete build log is located at '/var/tmp/portage/dev-libs/efl-1.16.0/temp/build.log'.
 [31;01m*[0m The ebuild environment file is located at '/var/tmp/portage/dev-libs/efl-1.16.0/temp/environment'.
 [31;01m*[0m Working directory: '/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0'
 [31;01m*[0m S: '/var/tmp/portage/dev-libs/efl-1.16.0/work/efl-1.16.0'
```
