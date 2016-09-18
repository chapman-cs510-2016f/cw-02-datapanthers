#!/bin/bash

echo -e "Hello world.\n"

exit 0

### INSTRUCTOR COMMENTS
# Note, echo puts a newline by default already, so your code puts two newlines.
# Also, you can omit the exit 0 at the end of a Bash script as implicit.
# Following UNIX philosophy, only do things when they are useful: if the default
# is to exit 0, then you don't need to call exit 0.
