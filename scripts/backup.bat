echo Adding files into commit...
	cd ../
	git add * -A
echo Adding Commit message...
	git commit -m "Server Backup `date +'%Y-%m-%d %H:%M:%S'`"
echo Pushing Commits to the 1.8.9 Branch...
	git push -u origin master
echo BACKUP COMPLETED!
pause
exit
