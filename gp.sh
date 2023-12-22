#!/bin/bash

DEFAULT_COMMIT_MESSAGE='Exercise finished or redone'

git add .

if [[ ${#} == 0 ]]
then
	git commit -m "${DEFAULT_COMMIT_MESSAGE}"
else
	git commit -m "Exercise ${@} has been finished"
fi

git push

