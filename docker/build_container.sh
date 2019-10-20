cd $1
docker build . -t registry.git.rwth-aachen.de/achinrichs/latex-templates:$1 
docker push -t registry.git.rwth-aachen.de/achinrichs/latex-templates:$1
