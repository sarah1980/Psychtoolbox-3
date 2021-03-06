function number = GetEchoNumber(window,msg,x,y,textColor,bgColor,varargin)
% number = GetEchoNumber(window,msg,x,y,textColor,bgColor, [untilTime=inf], [KbCheck args...])
% 
% Get a number typed at the keyboard. Entry is terminated by
% <return> or <enter>. Typed characters are displayed on the screen.
% Useful for i/o in a Screen window. Equivalent to
% "number=str2num(GetEchoString(...))".
%
% Returns the empty matrix if no number is entered. Returns a
% column vector with multiple numbers if more than one number
% is entered.
%
% See also: GetNumber, GetString, GetEchoString
%
% 2/4/97  dhb	 Wrote it.
% 3/15/97 dgp  Replaced sscanf by str2num, which copes better with nonnumeric input,
%	             returning an empty matrix instead of a null string.
% 3/15/97 dgp  Call GetEchoString instead of doing the work here.
% 3/18/97 dhb  Got rid of obsolete 's' interface.
% 10/22/10  mk  Switch to use of KbGetChar for keyboard input.

string = GetEchoString(window,msg,x,y,textColor,bgColor,1,varargin{:});
number = str2num(string); %#ok<ST2NM>
