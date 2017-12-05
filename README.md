
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



## Installation

To install all programs, open your terminal and type:


```bash
$ brew install ndeviation
```


# Formulae

## Scripts for you


### [ndeviation](https://github.com/filmtools/ndeviation) 

Calculates 'N' deviation for a series of exposures and film densities, commonly referred to as push and pull processing. Requires Python.

  
[Documentation](https://github.com/filmtools/ndeviation) &middot; 
[Usage](https://github.com/filmtools/ndeviation#usage) &middot; 
[Examples](https://github.com/filmtools/ndeviation#examples)

```bash
# with tap installed:
$ brew install ndeviation

# ...or without having tap installed:
$ brew install filmtools/filmtools/ndeviation
```




## Helpers and dependencies

You do not need to install these tools manually, as they are needed by the tools above and thus are installed automatically.


### curvefit

Finds X (or Y) value for a given Y (or X, resp.) by polynomial interpolation. [Documentation](https://github.com/filmtools/curvefit)

```bash
# with tap installed:
$ brew install curvefit

# ...or without having tap installed:
$ brew install filmtools/filmtools/curvefit
```



