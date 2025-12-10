*** Test Cases ***
#Forloop1
#          FOR      ${i}        IN RANGE     1  10
#           Log To Console      ${i}

#           END

         
#forloop2
#            FOR    ${i}    IN    1 2 3 4 5 6 7 8    #single space  output 1 2 3 4 5 6 7 8
#            Log To Console    ${i}
#
 #           END

 # suppose will give double space
# forloop3

 #           FOR   ${i}      IN      1  2  3  4  5  6  7  8
 #           Log To Console    ${i}

 #           END         #output will be one by on e by  8 lines


#CreateList

#forloop3withlist
 #          @{items}    Create List     1  2  3  4  5  6  7
 #          FOR    ${i}     IN      @{items}
 #           Log To Console    ${i}
#
 #           END

#ForloopString
#            FOR    ${i}    IN    Raju  rajesh  dinesh  mangal
 #           Log To Console    ${i}
                 
  #          END
  
#CreateList
 #           @{items}        Create List         raju  atul  mangesh  dinesh
 #           
 #           FOR    ${i}     IN      ${items}
  #          Log To Console    ${i}
                 
  #          END
Forloop5

  
            @{items}        Create List     1  2  3  4  5  6  7
            FOR    ${i}    IN    @{items}
            Log To Console    ${i}
            Exit For Loop If   ${i}==4

            

            
                 
          END
       