# udemy-dl for Windows
A windows utility to download videos from udemy for personal offline use, based on <https://github.com/gaganpreet/udemy-dl>.

For Windows (XP, Vista, 7, 8, 10) 32 & 64 bit

### Usage

Simply call `udemy-dl.exe` with the full URL to the course page.
```
udemy-dl.exe https://www.udemy.com/COURSE_NAME
```
`udemy-dl.exe` will ask for your udemy username (email address) and password then start downloading the videos.

By default, `udemy-dl.exe` will create a subdirectory based on the course name.  If you wish to have the files downloaded to a specific location, use the `-o \path\to\directory\` parameter.

If you wish, you can include the username/email and password on the command line using the -u and -p parameters.

```
udemy-dl.exe -u user@domain.com -p $ecRe7w0rd https://www.udemy.com/COURSE_NAME
```

For information about all available parameters, use the `--help` parameter
```
udemy-dl.exe --help
```

### Advanced Usage

```
usage: udemy-dl.exe [-h] [-u USERNAME] [-p PASSWORD]
                    [--lecture-start LECTURE_START]
                    [--lecture-end LECTURE_END] [-o OUTPUT_DIR] [-v]
                    link

Fetch all the videos for a udemy course

positional arguments:
  link                  Link for udemy course

optional arguments:
  -h, --help            show this help message and exit
  -u USERNAME, --username USERNAME
                        Username/Email
  -p PASSWORD, --password PASSWORD
                        Password
  --lecture-start LECTURE_START
                        Lecture to start at (default is 1)
  --lecture-end LECTURE_END
                        Lecture to end at (default is last)
  -o OUTPUT_DIR, --output-dir OUTPUT_DIR
                        Output directory
  -v, --version         Display the version of udemy-dl and exit
```


### Upadating

For updating, run `update.cmd` in the same folder of `udemy-dl.exe` and `curl.exe`

### Downloader 
By default `udemy-dl.exe` uses `aria2c.exe`, and if it is missing `curl.exe` and will use built in `wget` function to download the video file. You can delete `area2c.exe` if it is not working or wants to use `curl.exe`.

### Versioning 
This tool will use  MINOR and PATCH version of <https://github.com/gaganpreet/udemy-dl>, as MAJOR and MINOR versions, and its own changes as PATCH version. Which will be custom appraoch with <http://semver.org/>.

For example `v 0.1.7` of `udemy-dl` will be used in `v 1.7.X` of `udemy-dl.exe`.