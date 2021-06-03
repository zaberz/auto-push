#!/bin/bash

git_origin_arr=(
	)

DATE=$(date +%s)
curPwd=$(cd "$(dirname "$0")"; pwd) 


log() {
	echo $* >> ${curPwd}'/log'
}

for context in ${git_origin_arr[*]}
do
	cd ${context}
	git status | grep "nothing to commit" > /dev/null 2>&1
	if [[ $? != 0 ]]; then
		log "提交新的Commit:"${context}_${DATE}
		git add .
		git commit -m "auto update"
		git push 
	else
		log "没有更改"${context}
	fi



done
