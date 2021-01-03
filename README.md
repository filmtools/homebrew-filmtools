
# homebrew-filmtools

**CLI tools for analysing developed photo film · MacOS**



## Requirements

Make sure to have the [Homebrew](https://brew.sh/) package manager for MacOS installed. The [installation instructions](https://brew.sh/) may look weird to first-timers, but it's really done in a minute. 

**Optional, but recommended:** Make this *homebrew-filmtools* *tap* and its included tools available to your local Homebrew ecosystem. Quoted from Homebrew docs: 
> `brew` will be able to work on those formulae as if they were in Homebrew's canonical repository. You can install and uninstall them with `brew [un]install`, and the formulae are automatically updated when you run brew update.

To install the tap, open your terminal and enter this command:

```bash
$ brew tap filmtools/filmtools
```



## Install all formulae

To install all programs provided by this tap, open your terminal and type:


```bash
$ brew install filmcurve negdiv.sh
```


## Install single formulae


### Experimental: [filmcurve](https://github.com/filmtools/filmcurve) 

Finds exposure zone for a given film density (or vice versa).

[Documentation](https://github.com/filmtools/filmcurve) &middot; [Usage](https://github.com/filmtools/filmcurve#usage) &middot; [Examples](https://github.com/filmtools/filmcurve#examples)

```bash
# with tap installed:
$ brew install filmcurve

# ...or without having this tap installed:
$ brew install filmtools/filmtools/filmcurve
```



### Antti Penttala's [negdiv.sh](https://github.com/filmtools/negdiv.sh)

Orange mask removal for color negatives, as authored by Antti Penttala in 2015. 

[Documentation](https://github.com/filmtools/negdiv.sh) &middot; [Usage](https://github.com/filmtools/negdiv.sh#usage) &middot; [Example](https://github.com/filmtools/negdiv.sh#example)

```bash
# with tap installed:
$ brew install negdiv.sh

# ...or without having this tap installed:
$ brew install filmtools/filmtools/negdiv.sh
```
