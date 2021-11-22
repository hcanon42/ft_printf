# ft_printf
(42 subject) A basic version of ft_printf

## Table of Content

* [Technologies](#technologies)
* [Description](#description)
* [Installation](#installation)
* [Usage](#usage)
* [Utility](#utility)
* [Contributing](#contributing)

## Technologies

Project is created with:
* gcc 9.3.0

## Description

The well known function done with only write() so it is quicker !

## Installation

Just pull the project in the repository where your project is !\
Then, compile your own project with "./libft/libft.a" added to the list of sources.\
This version of ft_printf only supports: 
* %c --> char
* %d --> int
* %i --> int
* %s --> string
* %x --> lowercase hex
* %X --> uppercase hex
* %u --> unsigned int
* %p --> pointer

## Usage

Classic 42 Makefile:
````sh
make add	#compiles everything and the library "libft.a"
make clean	#removes all the .o files
make erase	#removes all the .o files and the library "libft.a"
make reset	#cleans everything in the project and compiles everything again
````

## Utility

Very useful for debug and way easier to use than write() !

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.