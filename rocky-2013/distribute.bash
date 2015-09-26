for i in * ; do 
    if [[ -d $i ]] ; then 
        cd $i 
        cp ../clean ../run .
        chmod u+x clean run
        cd .. 
    fi
done
