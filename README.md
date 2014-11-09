# line.vim

Vim "inner line" text object works on the text inside the line.
Leading and trailing whitespace is ignored.

### Text object

`_` (underscore) - "inner line"

### Examples

- `v_` visually selects all the text in a line, except the
  leading and trailing whitespace.

- `y_` yank "inner line".

- `d_` delete the whole line, but only "inner line" gets into the register.

### Why?

It's shorter to type than `^vg_` + operator.

### Installation

* Vundle<br/>
  `Plugin 'bruno-/vim-line'`

* Pathogen<br/>
  `git clone git://github.com/bruno-/vim-line.git ~/.vim/bundle/vim-line`

### License

[MIT](LICENSE.md)
