
#!/bin/bash

txt=$(tac $1 2>/dev/null)
echo $txt | rev>$2

