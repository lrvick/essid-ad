# essid-ad #

<http://github.com/lrvick/essid-ad>

[![TravisCI][travis-badge]][travis-status]
[![License][license-badge]][license]

[travis-badge]: https://travis-ci.org/lrvick/essid-ad.svg?branch=master
[travis-status]: https://travis-ci.org/lrvick/essid-ad
[license-badge]: https://img.shields.io/github/license/lrvick/essid-ad.svg
[license]: https://github.com/lrvick/essid-ad/blob/master/LICENSE.md

## About ##

This is project to turn cheap ESP8266 ESP-01 modules into simple wifi hotspots
with a configurable essid and web page. Intended use case is cheap disposable 
battery powered advertisements where the ESSID us a url.

## Requirements ##

  * [esp-01][1]
  * [esp-01 auto-resetting Programmer][2]
  * [3V FTDI adapter][3]

[1]: https://amzn.com/B00O34AGSU
[2]: https://amzn.com/B01DS24VG0
[3]: https://amzn.com/B012YUANZK


## Usage ##

1. Create authorized tag header file

    ```bash
    cp config.h.sample config.h
    vim config.h
    ```

2. Build

    ```bash
    make build
    ```

3. Upload to board

    ```bash
    make upload
    ```

4. Monitor

    ```bash
    make monitor
    ```
   Should see logging of board booting and client connections.


## Notes ##

  Use at your own risk. You may be eaten by a grue.

  Questions/Comments?

  You can find me on the web via:

  [Email](mailto://lance@lrvick.net) |
  [Blog](http://lrvick.net) |
  [Twitter](http://twitter.com/lrvick) |
  [Facebook](http://facebook.com/lrvick) |
  [Google+](http://plus.google.com/109278148620470841006) |
  [YouTube](http://youtube.com/lrvick) |
  [Last.fm](http://last.fm/user/lrvick) |
  [LinkedIn](http://linkedin.com/in/lrvick) |
  [Github](http://github.com/lrvick/)
