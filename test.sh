#!/bin/bash
echo "this is test"
        FILTER="example/"
        CHANGED_FILES=$(git diff HEAD HEAD~ --name-only)
        COUNT=0


        echo "Checking for file changes..."
        for FILE in $CHANGED_FILES
        do
          if [[ $FILE == *$FILTER* ]]; then
            echo "MATCH:  ${FILE} changed"
            VAR=VAR+$FILE
            echo "$VAR"
            COUNT=$(($COUNT+1))
          else
            echo "IGNORE: ${FILE} changed"
          fi
        done