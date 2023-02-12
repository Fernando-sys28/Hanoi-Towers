% Call the move operation with the number of disks
hanoi(N) :- move(N,left,right,center).

move(0,_,_,_):-!.
% Define the move operation
move(1,LEFT,RIGHT,_) :-
    write('Move top disk from '),
    write(LEFT),
    write(' to '),
    write(RIGHT),
    nl.
move(N,LEFT,RIGHT,CENTER) :-
    N>1,
    M is N-1,
    move(M,LEFT,CENTER,RIGHT),
    move(1,LEFT,RIGHT,_),
    move(M,CENTER,RIGHT,LEFT).
