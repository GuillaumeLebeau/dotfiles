### _please file bugs and requests in the github issues!_
i have terrible memory so if you tell me something on irc or reddit i'll probably forget about it

![scrot of current desktop](screenshot.png)
## installed software
Not all of this is required for the configuration, it's just the list of software that I personally use and recommend.

### interface
+ **bspwm** _window manager_  chosen because it's easily configured and doesn't get in the way of productivity
+ **sxhxd** _hotkey daemon_  default for bspwm and I have no reason to change it
+ **rxvt-unicode-256xresources** _terminal emulator_  lightweight, extensible with perl
  + **urxvt-clipboard**  makes urxvt play nice with the x clipboard
  + **urxvt-resize-font**  enables on the fly font resizing.  very useful for small screens
  + **urxvt-vtwheel**  better scrolling support
+ **lemonbar-xft** _status bar_ easy to use panel with a tiny footprint, with xft patch
+ **feh** _image viewer and background setter_  it's simple and does everything you need
+ **unclutter-xfixes** _X cursor hider_  the cursor is useless for a keyboard driven config, so hide it
+ **redshift-minimal** _screen temperature daemon_  reduces eye strain in reduced light

### internet
+ **weechat** _irc client_  extensible irc client with great community support
+ **mutt** _mail client_  fast and well supported console email client
  + **msmtp**  _mtp client_  sends email
  + **offlineimap** _imap client_  syncs email
  + **elinks** _web browser_ formats html emails
+ **firefox** _web browser_  golden standard web browser
  + **vimperator**  browse with just your keyboard, adds a great status line / combobar
  + **greasemonkey**  userscript manager
    + **appchan x**  makes browsing halfchan somewhat pleasurable
	+ **viewtubeplus**  tries to force html5 on video sites
  + **stylish**  user styles manager
    + **twily's powerline firefox css**  makes the tab bar usable
  + **noscript**  block javascript from running automatically
  + **https everywhere**  force https where possible
  + **ublock origin**  ad and nuisance blocker
+ **w3m** _web browser_  console web browser, used for image previews in ranger
+ **rtorrent** _download manager_  trimmed down bittorrent client

### media
+ **mpd** _music player_  gold standard music player daemon
+ **ncmpcpp** _music player_  fast and configurable mpd client
+ **mpc** _music player_  minimal mpd client used by the panel script
+ **mpv** _video player_  do-it-all video player for streaming and playing local media

### office
+ **libreoffice** _office suite_  as good as it gets without running ms office in wine
+ **zathura** _document viewer_  lightweight extensible document viewer with a vim-like interface
  + **poppler** _pdf rendering lib_  much faster than mupdf
  + **zathura-cb** _comic book plugin_  for reading manga with zathura
+ **scrot** _screenshotter_  simple

### programming
+ **vim** _text editor_  the one true text editor
  + **vim-plug** _plugin manager_  lightweight and less finicky than other managers
  + **vim-airline** _status bar_  replaces the standard vim status bar with some useful eye candy
  + **vim-numbertoggle**  smart relative line-number toggling
  + **vim-gitgutter**  shows git diffs
  + **vim-trailing-whitespace**  highlights spaces where they shouldn't be
  + **auto-pairs**  spawns matched brackets / quotes
  + **nerdtree**  in-editor file browser
  + **gruvbox** _colour scheme_  low contrast colour scheme that's easy on the eyes

### utilities
+ **zsh** _shell_ very powerful shell that remains compatible with bash
+ **tmux** _terminal multiplexer_  will save your life when X11 quits working
+ **dmenu** _dynamic menu_ application launcher (will be replaced with rofi later)
+ **ranger** _file manager_  extensible file manager that can use w3m for image previews
+ **pacaur** _aur helper_  yaort is for losers
+ **htop** _task manager_  beautified and more useful top
+ **progress** tool to show the progress of coreutils basic commands
+ **tlp** _power management_  fire and forget power manager
+ **powertop** _power management_  great for identifying sources of energy waste

### fonts / themes
+ **infinality** _text rendering_  improves appearence of text
  + **infinality-bundle** _standard fonts_  basic fonts for apps that need it
  + **infinality-bundle-fonts** _more fonts_  fonts to play with
+ **source code pro for powerline** _monospace font_  primary font used in the system, extremely legible
+ **source code sans** _sans serif font_  font used for web browsing that retains the legibility of source code pro
+ **arc-darker** _gtk theme_  flat gtk theme with dark highlights
+ **paper** _icon theme_  flat and simple icon theme

### included scripts and tools
+ **testpl**  simple alias to check that a powerline patched font is set up and configured correctly
+ **classify**  classification banners using lemonbar
+ **rfetch**  system info tool with a weird octopus
+ **extract**  alias to extract most archives
+ **fuck**  yeah, you forgot to sudo

## notes
many settings are optomised for power saving, the sleep timers on the panel script should be shortened for use on systems where responsiveness is valued over power consumption.

the panel design is evolving fairly rapidly, so updating will probably break your customisations.  i'm working through a few papers right now to try to design it as intuitive and useful as possible.  for reference:

1. Carroll, J.M., Mack, R.L., & Kellogg, W.A. Interface metaphors and user interface design. In M. Helander (Ed.), Handbook of Human-Computer Interaction, Elsevier Science Publishers B.V., 1988.
2. Erickson, T.D. Working with interface metaphors. In B. Laurel (Ed.), The Art of Human- Computer Interface Design, Addison-Wesley Publishing Co., Inc. 1990.
3. Gentner, D. Structure mapping: A theoretical framework for analogy. Cognitive Science, 7, 155-170.
4. Grudin, J. The case against user interface consistency. Communications of the ACM, vol. 32, number 10, 1164-1173, 1989.
5. Mountford, S.J. Tools and techniques for creative design. In B. Laurel (Ed.), The Art of Human-Computer Interface Design, Addison-Wesley Publishing Co., Inc. 1990.
6. Rideout, T., & Lundell, J. Hewlett Packard's Usability Engineering Program. In M. E. Wiklund (Ed.), Usability in Practice. AP Professional, 1994. 
