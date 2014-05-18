# lita-chm

[![Build Status](https://travis-ci.org/carlosparamio/lita-chm.png?branch=master)](https://travis-ci.org/carlosparamio/lita-chm)
[![Code Climate](https://codeclimate.com/github/carlosparamio/lita-chm.png)](https://codeclimate.com/github/carlosparamio/lita-chm)
[![Coverage Status](https://coveralls.io/repos/carlosparamio/lita-chm/badge.png)](https://coveralls.io/r/carlosparamio/lita-chm)

**lita-chm** is a handler for [Lita](http://lita.io/) that shows a short history lesson of the day from the [Computer History Museum](http://www.computerhistory.org/).

## Installation

Add lita-chm to your Lita instance's Gemfile:

``` ruby
gem "lita-chm"
```

## Usage

```
You: Lita: today in computer history|tdih|chm
Lita: May 18, 1998
United States Justice Department Files Antitrust against Microsoft
The United States Department of Justice and twenty US states filed a set of civil actions against Microsoft Corporation. The plaintiffs alleged that Microsoft abused monopoly power regarding operating system and Web browser sales. The central issue was whether it was monopolistic of Microsoft to bundle Internet Explorer software with its Windows operating system. This practice was alleged to have been responsible for Microsoft's victory in the “browser wars” because every Windows user had a copy of Internet Explorer. It was further alleged that this unfairly restricted the market for competing web browsers (such as Netscape Navigator or Opera), which were slow to download over a modem or had to be purchased at a store. The case was tried before U.S. District Court Judge Thomas Penfield Jackson. Joel I. Klein was the lead prosecutor. David Boies initially represented the Department of Justice.
```

## License

[MIT](http://opensource.org/licenses/MIT)