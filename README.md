# shell-scripts

Some shell scripts of varying complexity and varying utility that I've written over the years. Mostly written in Perl, with some things in Python, PHP, and Tcl and a few actual shell scripts (usually so I don't have to remember a command's arguments).

## Summary

| Name | Notes |
| -- | -- |
| `catalogue` | Creates an XHTML catalogue of music in a directory tree if the directories follow a particular naming format. I wrote this approximately one million years ago back when I used Winamp but updated it to kind of, sort of work for iTunes libraries as well. |
| `cdf` | Changes the current working directory to that of the frontmost Finder window (which I find more convenient than drag-and-drop most of the time). |
| `changeext` | Changes the file extension for all files in the current directory from the first argument to the second. |
| `checkcommits` | Tags (in the Finder) all subdirectories in the given directory (or the current working directory if no argument given) whose git repositories contain uncommitted changes. I intended to use this with a Folder Action, but it turns out that Folder Actions that fire upon opening a folder don't work very well. |
| `checksum` | Gets CRC32 and MD5 checksums of file (or all files in directory if none specified). |
| `collatepdfs` | I scanned in all of my college notes with a one-sided scanner, with all of the front pages in a file called "front.pdf" and all of the back pages in a file called "back.pdf", then used this script to merge them into a single file. Requires [PDFtk](https://www.pdflabs.com/tools/pdftk-server/). |
| `delds` | Recursively deletes stupid ".DS\_Store" files. |
| `exifgps` | Reads the EXIF GPS coordinates for the given images (or all images in the current directory if no arguments are given). Displays nothing if no GPS data is found. Requires the [exifread](https://pypi.org/project/ExifRead/) module for Python. |
| `filetime` | Saves all of the file modification times in the current directory to a file so they can be restored later. I use this to make minor modifications to very old files so I don't lose the mtime, which I like to preserve because it gives me an idea of the age of the file. |
| `imgsize` | Displays the dimensions of the given images (or all images in the current directory if no arguments are given). Requires the [Pillow](https://pypi.org/project/Pillow/) module for Python. |
| `ip` | Shows the LAN and WAN IP addresses. Boldly assumes that the computer only has one active network connection. |
| `lowercase` | Renames all files in the current directory to lowercase (unless there is a space in the file name). Meant for case-insensitive file systems, so it doesn't check for file collisions. Mostly used to make old all-caps 8.3 file names stop yelling at me. |
| `mkcue` | Generates a cue sheet for an ISO image with separate audio files. Meant for Sega CD and Saturn games (but probably works for other images), which were once often distributed in this way but need a cue sheet to be burned or played in some emulators. |
| `openlog` | Shows all of the log files in a specified directory and opens the selected one in `tail`. Useful for Apache servers with several virtual hosts and a bunch of log files (or at least, that's what I use it for). |
| `sortalpha` | Sorts files into directories according to the first letter of their file names. |
| `text2time` | Takes a time/date format and converts it to a Unix timestamp using PHP's [strtotime](https://www.php.net/strtotime) function, which is itself a wrapper around the GNU date utility and its ability to parse free format date/time strings. Redundant on systems with a GNU userland but handy on BSD/Mac systems. |
| `undo` | Reopens the last visited folder in the Finder. |
| `unixify` | Converts Windows line breaks to Unix for all text files in the current directory. |
| `unixtime` | Takes a Unix timestamp and displays it in a human-readable date/time format. If not given an argument, it shows the current time. |
| `update` | Runs the [common commands](https://guide.macports.org/chunked/using.common-tasks.html) for updating MacPorts and its packages and cleaning up outdated packages so I don't have to memorize them. |
| `zipall` | Zips each file provided (or all files in the current directory if no arguments are given) into a separate zip file. |
| `zipfolder` | Creates a new zip archive with the contents of the current directory. I use this because the Finder's built-in "Compress" function annoyingly adds "__MACOSX" folders and ".DS\_Store" files everywhere. |

## Authors

- J.C. Fields <jcfields@jcfields.dev>

## License

- [MIT license](https://opensource.org/licenses/mit-license.php)
