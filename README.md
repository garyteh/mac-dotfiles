# Installation
```shell
git clone --bare <git-repo-url> $HOME/.cfg
git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

# Helpful commands
## Find all MANPATH from brew
It will uniquely print by the order: libexec, share, gnuman, man
```shell
find -L /usr/local/opt -type d -not -type l \( -name 'gnuman' -o -name 'man' \) | sort -t'/' -k5 | sort -t'/' -k5,5 -u
```

# Colours

This uses [Base16](https://github.com/chriskempson/base16).

| Decimal	| Hexadecimal	| Colour 			| Description 															|
| --------- | ------------- | ----------------- | --------------------------------------------------------------------- |
| color00	| base00		| Black				| Default Background 													|
| color01	| base08		| Red				| Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted 	|
| color02	| base0B		| Green				| Strings, Inherited Class, Markup Code, Diff Inserted 					|
| color03	| base0A		| Yellow			| Classes, Markup Bold, Search Text Background 							|
| color04	| base0D		| Blue				| Functions, Methods, Attribute IDs, Headings 							|
| color05	| base0E		| Magenta			| Keywords, Storage, Selector, Markup Italic, Diff Changed 				|
| color06	| base0C		| Cyan				| Support, Regular Expressions, Escape Characters, Markup Quotes 		|
| color07	| base05		| White				| Default Foreground, Caret, Delimiters, Operators 						|
| color08	| base03		| Bright_Black		| Comments, Invisibles, Line Highlighting 								|
| color09	| base09		| Bright_Red		| Integers, Boolean, Constants, XML Attributes, Markup Link Url 		|
| color10	| base0B		| Bright_Green		|																		|
| color11	| base0A		| Bright_Yellow		|																		|
| color12	| base0D		| Bright_Blue		|																		|
| color13	| base0E		| Bright_Magenta	|																		|
| color14	| base0C		| Bright_Cyan		|																		|
| color15	| base07		| Bright_White		| Light Background (Not often used) 									|
| color16	| base09		| -					|																		|
| color17	| base0F		| -					| Deprecated, Opening/Closing Embedded Language Tags					|
| color18	| base01		| -					| Lighter Background (Used for status bars)								|
| color19	| base02		| -					| Selection Background													|
| color20	| base04		| -					| Dark Foreground (Used for status bars)								|
| color21	| base06		| -					| Light Foreground (Not often used)										|

# Reference 
- https://www.atlassian.com/git/tutorials/dotfiles
- https://github.com/chriskempson/base16