function result = myFunction(input)
  % Some code here that might cause an error
  result = input * 2; 
  if input < 0
    error('Input must be non-negative');  % This error handling might be insufficient
  end
end

% Example usage that could lead to unexpected behavior
input = -5; % Negative input will cause an error, but other errors might exist
result = myFunction(input);