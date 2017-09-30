# Shortcuts to move faster in Bash command line
(Shamelessly copied from [Huiming Teo])

Some content extracted from the **"Command Line Editing"** section in [the bash manual]. Apparently the bash manual is a well-written documentation and we should read it more often.

## Basic moves

* Move back one charecter: `Ctrl` + `b`
* Move forward one character: `Ctrl` + `f`
* Delete current character: `Ctrl` + `d`
  * (careful, this also signals to end the running program, so if there are no characters it exits the current `Bash`)
* Delete previous character: `Backspace`
* Undo: `Ctrl` + `-`


## Moving faster

* Move to the start of line: `Ctrl` + `a`
* Move to the end of line: `Ctrl` + `e`
* Move forward a word: `Meta` + `f`
* Move backward a word: `Meta` + `b`
  * (a word contains alphabets and digits, no symbols)

**What is Meta?** `Meta` is your `Alt` key, normally. For **Mac OSX users, you need to enable it yourself**. Open _Terminal > Preferrences > Settings > Keyboard_, and enable _Use option as meta key_. `Meta` key, by convention, is used for operations on word.


## Cut and paste ('kill and yank' for old schoolers)

* Cut from cursor to the end of line: `Ctrl` + `k`
* Cut from cursor to the end of word: `Meta` + `d`
* Cut from cursor to the start of word: `Meta` + `Backspace`
* Cut from cursor to previous whitespace: `Ctrl` + `w`
* Paste the last cut text: `Ctrl` + `y`
* Loop through and paste previously cut text: `Meta` + `y`
  * (use it after `Ctrl` + `y`)
* Loop through and paste the last argument of previous commands: `Meta` + `.`


## Search the command history

* Search as you type: `Ctrl` + `r` and type the search term
  * Repeat `Ctrl` + `r` to loop through results
* Search the last remembered search term `Ctrl` + `r` twice
* End the search at current history entry: `Ctrl` + `j`
* Cancel the search and restore original line: `Ctrl` + `g`


## Need more?

* A comprehensive [bash editing mode cheatsheet] by Peteris Krumin
* **Vim users!** Do you know you can switch to Vi-style editing mode? Check it at [vi-style cheatsheet]
* Bash command line editing is actually handled by **GNU Readline Library**. So just dive into [readline manual] for everything else.


[Huiming Teo]:http://teohm.com/blog/shortcuts-to-move-faster-in-bash-command-line/ 
[bash editing mode cheatsheet]: http://www.catonmat.net/blog/bash-emacs-editing-mode-cheat-sheet
[vi-style cheatsheet]: http://www.catonmat.net/blog/bash-vi-editing-mode-cheat-sheet/
[readline manual]: http://www.gnu.org/software/readline/#Documentation