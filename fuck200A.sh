#!/bin/bash

usr="usr"
pw="pw"
base="fuck this course"
t_base="this is pointless"
#you must change this variable to a context that exists under your username
context="2873"

for i in {3..200}
do
	p_name=${base}${i}
	p_loc=$(curl -u ${usr}:${pw} -H "Content-Type: text/xml" -d "<project><name>${p_name}</name></project>" http://ece.uwaterloo.ca:3000/projects.xml -i \
|grep "Location"|sed 's/^.*\///g')
	#|sed 's/.xml//g'
	echo "-----PROJECT ID:------"
	echo ${p_loc}
	for j in {1..50}
	do
		t_name=${t_base}${j}
		curl -u ${usr}:${pw} -H "Content-Type: text/xml" \
-d "<todo><description>${t_name}</description><context_id>${context}</context_id><project_id>${p_loc}</project_id></todo>" http://ece.uwaterloo.ca:3000/todos.xml -i
	done

		 	
done
 


