README.md: guessinggame.sh
	touch README.md
	echo "# Guessing game Project" >> README.md
	echo "## Project Info :" >> README.md
	echo "Number of lines in programm:" >> README.md
	wc -l guessinggame.sh >> README.md
	echo "Time of 'make' execution:" >> README.md
	echo $@: `date` >> README.md
