all:  README.md

README.md:
	touch README.md
	echo "CB version of guessinggame.sh script" > README.md
	echo "The date and time at which make was run" >> README.md 
	echo `date --rfc-3339=seconds` >> README.md
	echo "Number of lines of guessinggame.sh script" >> README.md
	echo `wc -l < guessinggame.sh`| grep [^a-zA-Z] >> README.md