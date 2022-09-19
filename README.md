# README  
- This `repo` is intended to gather sripts to use in your favourite terminal and have some fun while learning ***shell scripting***  
- The content of this repo came from one of my favourites tech youtubers [NetworkChuck](https://www.youtube.com/c/NetworkChuck), please if you like his content follow him becuase he really does great stuff for beginners  
  
## Environment  
***`OS:`*** macOS Monterrey  
***`Shell:`*** zsh  
## NOTES:  
If you are a total beginner and  want to execute the scripts, please check that the files have the permissions to execute them from the terminal. To do that, first list the files in the directory with the following command:
`$ ls -la elder_ring.sh` 
This will output something similar like the following:
`-rw-r--r--  ... ... Sep 19 23:36 elder_ring.sh`  
The **important** part is the beginning part where the permissions for the file are described. [Check this webpage for more info about file permissions](https://kb.iu.edu/d/abdb). Basically what you should do is to change the file to be executable from your user at least. To do that run the following command:  
`$ chmod u+x elder_ring.sh`  
This command change the `user` (`u`) permissions on the file making it executable `+x`. And the output should be something like:  
`-rwxr--r--  ... ... elder_ring.sh`  
Where the execute permissions is added, `x` appears now in the output of the `$ ls` command.  
  
Also note that all the spaces are created to give more visual clarity for reading the code.