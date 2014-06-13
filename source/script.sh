STATUS=`defaults read com.apple.finder AppleShowAllFiles`
QUERY="{query}"
if [ "$QUERY" == "off" ];
then
	if [ $STATUS == NO ];
	then
		defaults write com.apple.finder AppleShowAllFiles YES
		killall Finder
		echo "Show Hidden Files Now"
	fi
	echo "Already Show Hidden Files"
else
	if [ "$QUERY" == "on" ];
	then
		if [ $STATUS == YES ];
		then
			defaults write com.apple.finder AppleShowAllFiles NO
			killall Finder
			echo "Hide Hidden Files Now"
		fi
		echo "Already Hide Hidden Files"
	else
	    if [ "$QUERY" == "" ];
	    then
		    if [ "$STATUS" == "YES" ];
		    then
			    echo "Finder Show Hidden Files Now"
	    	else
		    	echo "Finder Don't Show Hidden Files Now"
            fi
        fi
    fi
fi
