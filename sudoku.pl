solve(Sudoku) :-
 Sudoku = [[C11,C12,C13,C14],
		   [C21,C22,C23,C24],
 	 	   [C31,C32,C33,C34],
 		   [C41,C42,C43,C44]],
    
 valid([C11,C12,C21,C22]),
 valid([C11,C12,C13,C14]),
 valid([C11,C21,C31,C41]),
        
 valid([C13,C14,C23,C24]),
 valid([C21,C22,C23,C24]), 
 valid([C12,C22,C32,C42]),
       
 valid([C31,C32,C41,C42]),
 valid([C31,C32,C33,C34]),
 valid([C13,C23,C33,C43]),
    
 valid([C33,C34,C43,C44]),
 valid([C41,C42,C43,C44]),
 valid([C14,C24,C34,C44]).

valid(Array) :- integers(Ints), permutation(Array, Ints).

integers([1,2,3,4]). 

		problem(1,P) :- 
		P =[[_,2,4,3],
		    [_,_,1,2],
		    [_,_,_,1],
		    [_,_,3,4]].