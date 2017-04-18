# Gremlin 3 on Neo4j 2.3 Quick Installer

This is a curl / bash installer for Gremlin 3.2.0 on Neo4j.

## Features

This script installs Gremlin 3.2.0-incubating and Neo4j 2.3.10, in the local repository, in the folder 'neo4j'.   Gremlin is installed as a plug-in.

This scripts works on OSX, at the moment.

## Execution

  ``` sh
	$ curl -sL https://raw.github.com/exakat/gremlin3neo4j | sh
  ```
  
    
## Pre-requisite

For OSX : 

* [Java 8](http://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html), SE runtime
* [Homebrew](https://brew.sh/)
* [curl](https://curl.haxx.se/)


## Support for other plate-forms
This repository aims at offering the install scripts for various plate-forms. If yours is missing, read the current scripts and see what must be adapted. Then, provide it as PR. 
