function decision = StringToDecision(userString)
%{
Alyssa Rose       2-3-18
 Takes in string to determine decision of user:
 all forms of yes = 1
 all forms of no = 0
 other strings = -1
 non strings = -2
%}

%converts input to lower case, and retrieves first
%letter to check for ischar
stringLower= lower(userString);
stringAnswer = stringLower(1);

decision = 0;
if strcmp(stringLower, 'yes') || strcmp(stringLower, 'y')
    decision = 1;
elseif strcmp(stringLower, 'no') || strcmp(stringLower,'n')
    decision = 0;
elseif ischar(stringAnswer) ~= 1
    decision = -2;
else 
    decision = -1;
end
    