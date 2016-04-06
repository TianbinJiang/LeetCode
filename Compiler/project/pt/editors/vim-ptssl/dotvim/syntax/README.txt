Installing PT and S/SL syntax colouring in Vim 6.x-7.x
------------------------------------------------------

To install PT Pascal and S/SL source file colouring for all users 
on your system:

   0. In what follows, 

     $VIM refers to the directory home of Vim on your system, 
          usually /usr/share/vim, /usr/local/share/vim, 
          /opt/share/vim or similar, and

      $NN refers to the version of Vim you are running,
          currently either 62 or 72 in standard distributions.

   1. Edit the file "$VIM/vim$NN/filetype.vim" 
      and insert the contents of the file "filetype-ptssl.vim"
      from this directory right after the entry for Pascal files.
      Make sure that the lines are not split by your editor 
      when adding them.

   2. Copy the files "pt.vim" and "ssl.vim" in this directory 
      into the directory $VIM/syntax.

   3. Check that syntax highlighting is enabled in Vim,
      by making sure that your default terminal type is "ansi"
      by checking for or adding the line "syntax enable"
      to the $VIM/vimrc global file or .vimrc file in your 
      own home directory.

   4. Edit files named "something.pt" and "soemthing.ssl" to test.
