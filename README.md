# sabayon-tools
This is my Sabayon overlay, it was originally intended for Atom with ebuilds to install Atom from binary packages. It has since been expanded to include extra packages. To add this overlay run (as root):
```sh
layman -a sabayon-tools
```

## ebuilds
### [Atom][7]
[app-editors/atom-bin][17] is designed to install Atom from official Debian package releases. I do not use [app-editors/atom][18] to build binaries because it is more likely to generate build errors and takes over an hour.

### [FFMpegThumbs-MattePaint][1]
[kde-apps/ffmpegthumbs-mattepaint][2] is a program that when installed (and enabled by going to **Control**&rarr;**Configure Dolphin...**&rarr;**General**&rarr;**Previews** and selecting in the "Show previews for:" box, "Video Files (ffmpegthumbs-mattepaint)") should allow video file thumbnailing (or previews) in Dolphin.

### [Onboard][3]
[app-accessibility/onboard][4] is an on-screen virtual keyboard that is developed for Ubuntu, although via the [`unity-gentoo`][5] and [`lif`][6] overlays it has also been ported to Gentoo-based platforms, such as Sabayon. I use it primarily when my cat jumps on me for scratches, which leaves me just one hand spare to use my laptop. I touch-type fairly well with two hands but poorly with just one, so onboard can help improve my one-handed typing performance.

### [wkhtmltopdf][15]
[media-gfx/wkhtmltopdf][19] is a command-line tool for converting HTML webpages to PDF format.

## Binary packages
Using these tools I also build a SPM `tbz2` package that I upload to my dropbox. You can install these packages, after you download them, of course, by running (as root):
```sh
mv <PACKAGE> /var/lib/entropy/smartpackages/amd64
equo i -av <PACKAGE>
```
although it is important to ensure their file extension is `.tbz2`, downloading from my dropbox will likely give you a file name ending with `?dl=1`, which you will need to remove in order to install the binary with `equo`.
### List of binaries I have made
* [Atom][7]: [atom-bin-1.2.2][8]
* [mdocml][20]: [mdocml-1.13.3][21]
* [Onboard][3]: [onboard-1.1.2][14]
* [Scilab][9]: [scilab-bin-5.5.2][10]
* [Unix RuneScape Client][11]:
 - [unix-runescape-client-4.3.4][12]
 - [unix-runescape-client-4.3.5][13]
* [wkhtmltopdf][15]: [wkhtmltopdf-0.12.2.4][16]

[1]: http://kde-apps.org/content/show.php/FFMpegThumbs-MattePaint?content=153902 "FFMpegThumbs-MattePaint Homepage"
[2]: https://github.com/fusion809/sabayon-tools/tree/master/kde-apps/ffmpegthumbs-mattepaint "kde-apps/ffmpegthumbs-mattepaint"
[3]: https://launchpad.net/onboard "Onboard Homepage at Launchpad"
[4]: https://github.com/fusion809/sabayon-tools/tree/master/app-accessibility/onboard "app-accessibility/onboard"
[5]: https://github.com/shiznix/unity-gentoo "unity-gentoo overlay"
[6]: https://github.com/killer2tester/gentoo-overlay-lif "lif overlay"
[7]: https://atom.io "Atom Homepage"
[8]: https://www.dropbox.com/s/sgs8tp42bscudh8/app-editors%3Aatom-bin-1.2.2.98b318676ff357a385e1a37384a608f3f3d238cd~9999.tbz2?dl=1 "atom-bin-1.2.2"
[9]: http://www.scilab.org/ "Scilab Homepage"
[10]: https://www.dropbox.com/s/yvchmmmh7p9xr4t/sci-mathematics%3Ascilab-bin-5.5.2.5b475dc664c2b92996a1ea93d1d9311582acc19c~9999.tbz2?dl=1 "scilab-bin-5.5.2.tbz2"
[11]: https://github.com/HikariKnight/rsu-client "RSU Client"
[12]: https://www.dropbox.com/s/vs3j3928jj7mil4/games-rpg%3Aunix-runescape-client-4.3.4.2058d145e7f2676d8e00a98be6f6cae8665568b4~9999.tbz2?dl=1 "unix-runescape-client-4.3.4"
[13]: https://www.dropbox.com/s/kn5cgn9eu69sc2g/games-rpg%3Aunix-runescape-client-4.3.5.29eacce023501ebb137ffc45952095220e909dc4~9999.tbz2?dl=1
[14]: https://www.dropbox.com/s/imh3i216vzbu89j/app-accessibility%3Aonboard-1.1.2.d834ceb46e7f23f9284240fade30e80019a22977~9999.tbz2?dl=1
[15]: http://wkhtmltopdf.org/
[16]: https://www.dropbox.com/s/egc667ie4d59p7d/media-gfx%3Awkhtmltopdf-0.12.2.4.bc0c8c3a63799f9ddfc7ab357d28a4abb9678085~9999.tbz2?dl=1
[17]: https://github.com/fusion809/sabayon-tools/tree/master/app-editors/atom-bin
[18]: https://github.com/fusion809/sabayon-tools/tree/master/app-editors/atom
[19]: https://github.com/fusion809/sabayon-tools/tree/master/media-gfx/wkhtmltopdf
[20]: http://mdocml.bsd.lv/
[21]: https://www.dropbox.com/s/ss8bw9entq93jqx/sys-apps%3Amdocml-1.13.3.747fa5621c1fb651ae9b5206f418d3cd23b178cc~9999.tbz2?dl=1
