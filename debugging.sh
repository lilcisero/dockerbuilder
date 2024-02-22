docker run -i -t ubuntu /bin/bash

#  this gave you an error message you are debugging looks like it is a problem with the docker dameon

docker login localhost:8080

# it will then prompt for username and password but 

# To run the docker login command non-interactively, you can set the --password-stdin flag to provide a password through STDIN. Using STDIN prevents the password from ending up in the shell's history, or log-files.

# The following example reads a password from a file, and passes it to the docker login command using STDIN:

cat ~/my_password.txt | docker login --username foo --password-stdin