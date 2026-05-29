#View current main group
id
id -gn #only the main group name

#Create a file and see which group inherits
touch ~/test_grupo_heredado.txt
ls -la ~/test_grupo_heredado.txt
##The group is the user's primary grou