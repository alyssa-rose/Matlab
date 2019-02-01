function stringOut = FlipEvensInString(stringIn)
%{ 
Alyssa Rose   2-3-18

Takes in string; characters in even numbered indices are 
flipped back to front and odd index characters are 
kept in normal order
%}

%extracts the characters in even numbered indices
flipArray = stringIn(2:2:end);
%stores even characters in new array, flipped here
flipArray(1:1:end) = flipArray(end:-1:1);
%flipped evens put back into original array
stringIn(2:2:end) = flipArray(1:1:end);
stringOut = stringIn;
end

    
