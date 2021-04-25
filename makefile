all: README.md 

README.md: guessinggame.sh
	echo "## Project Title -- The Unix Workbench course Week 4 assignment" > README.md
	echo "**For Sean Kross -- Johns Hopkins University on [coursera.org](https://www.coursera.org/)." >> README.md
	echo -n "\n**Make date for README.md**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md
