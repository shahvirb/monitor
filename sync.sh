#!/bin/bash

DIR_GIT=~/gitsource/monitor/
DIR_DOCKSTARTER=~/.docker/compose/
FILES=(.env docker-compose.override.yml)

for f in ${FILES[@]}; do
	a=$DIR_GIT$f
	b=$DIR_DOCKSTARTER$f
	case $1 in
		in)
			cp $b $a
			echo "cp $b $a"
			;;
		out)
			cp $a $b
			echo "cp $a $b"
			;;

	esac
done
