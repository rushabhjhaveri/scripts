#!/bin/bash 
# Simple utility script to automate git add-commit-push 


function addChanges(){
    # TODO: add functionality to commit specific files 
    git add .
}
 
function commitChanges(){
    echo "Commit message:" 
    
    read commit_message 
    
    git commit -m "$commit_message" 
}

function pushChanges(){
    echo "Commit Branch:" 

    read branch 

    git push origin "$branch" 
} 

function deploy(){
    addChanges 
    commitChanges
    pushChanges
}

deploy