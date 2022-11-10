#!/bin/bash
i=1; premier=0
until [ $premier -eq 100 ]
	do
          nombresDeDiviseurs=0
          for (( j=1; j<=i; j++ ))
             	 do 
             	    if [ $(( $i%$j )) -eq 0 ]
             	      then
             	          nombresDeDiviseurs=$(( $nombresDeDiviseurs+1 ))
             	    fi
             	 done   
           if [ $nombresDeDiviseurs -eq 2 ]
             then
                 echo $i
             	  premier=$(( $premier+1 ))
           fi
           i=$(( $i+1 )) 	       		
        done
