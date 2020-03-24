Filtre général
Feature/Bugs QA/WI : Fix version = 7.4.1

Substasks : label = onboard

Dans Backlog si statut New

Ajout au board :
- Passer en candidate (sauf BLT)
- Label onboard pour BLT

Candidate + Accepted : Column TODO

Please Test : Test on branch for features + test on master for bug
If several fix versions on a bug, create a backport to XXX subtask
Separate smoke test and demo video

Done state no more visible

Team is here the 7.4.1 Release Kanban board you can start to use : https://jira.talendforge.org/secure/RapidBoard.jspa?rapidView=580
It should include leftovers from 7.3 + new 7.4 items
Small updates :
- There is a backlog view (https://jira.talendforge.org/secure/RapidBoard.jspa?rapidView=580&view=planning.nodetail&issueLimit=100) to manage priorities and items to be added to the board. Will be used by Carlos and I
- Columns :
  - Candidate and Accepted states merged in TODO column to lighten the board
  - Columns / State mappping : I will describe in a wiki page to have a ref explaining our current process


  - Plz test column is supposed to contain test on branch for features and test on master for bugs
  - Final check / Done column will be mainly used for feature where we will have subtasks : test on master, demo video.




https://jira.talendforge.org/browse/TBD-9989
