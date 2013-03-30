fuck200A
========

A simple shell script to allow people to get around the mandatory logging of your "time management" for the ECE200A course

USAGE
=====

-change the $user and $pw variables to fit your own (if anyone wants to make them be passed as arguments send me a patch but I'm lazy)
-using the curl command specified on the website, find a "context" that is necessary to create tasks within projects. Change the $context variable to one of the context ids
  Command is:
  
     curl -u username:p4ssw0rd -H "Content-Type: text/xml" http://ece.uwaterloo.ca:3000/contexts.xml

    Returns a contexts in xml:
      <context>
    <created-at type="datetime">2013-01-27T03:39:58+00:00</created-at>
    <hide type="boolean">false</hide>
    <id type="integer">2876</id> <--------------this is the number you want
    <name>Self-Development</name>
    <position type="integer">3</position>
    <updated-at type="datetime">2013-01-27T03:39:58+00:00</updated-at>
    </context>



-run the script, and have all your "projects logged", show how good you are at time management my logging over 2000 tasks in one keystroke!
