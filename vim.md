# vim

### Move
| shortcut     	| Description 			     	|
|---------------|---------------------------------------|
| 0 $		| seart/end of column			|
| w b		| move left/right by word		|
| ctlr --> <--	|					|
| :0		| go to line 0				|
| :$		| go to last line			|
| :n		| got to nth line			|
| :%		| matching braces, ifdef, comments	|

### Delete
| shortcut     	| Description 			     	|
|---------------|---------------------------------------|
| dd/D		| delete entire line			|
| :%d		| truncate entire file			|
| dw/db		| delete word forward/backword		|
| Nx		| delete N characters forward		|
| dtC		| delete upto character C forward	|
| dTC		| delete upto character C backword	|
| d[n]d		| delete n lines from current pos	|
| :N,nd		| delete a range			|
| :.,$d		| delete current to end of file		|
| :0,.d		| delete from start to current		|
| d^		| delete upto first non space char	|


### Select
| shortcut     	| Description 			     	|
|---------------|---------------------------------------|


### Replace
| shortcut     	| Description 			     	|
|---------------|---------------------------------------|

### Search
| shortcut     	| Description 			     	|
|---------------|---------------------------------------|
| ?\<pattern\>	| search pattern			|
| /\<pattern\>	| n/N search forward/backword		|
| [I		| show lines with matchig word		|
|:set hlsearch	| highlight search			|
|:set ignorecase| search by ignoring case		|

### Insert tab

| option     		| Description 			     	|
|-----------------------|---------------------------------------|
| :set expandtab	| Insert space when tab key is pressed	|
| :set tabstop=2	| Insert 2 spaces for tab key		|
| :retab		| change all existing tab keys		|
| :set shiftwidth=2	| Number of space chars for indentation	|

### Default settings for .vimrc

```shell
:set expandtab
:set tabstop=2
:set shiftwidth=2
:colorscheme elflord
```

### Save with Sudo permissions

Following command redirects the write to tee. % is the current file name
```
:w! !sudo tee %
```

