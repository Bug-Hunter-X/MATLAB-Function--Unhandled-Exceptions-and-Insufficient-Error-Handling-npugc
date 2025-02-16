function result = myFunctionImproved(input)
  % Input validation: Check if input is numeric and non-negative
  if ~isnumeric(input) || input < 0
    error('Input must be a non-negative number.');
  end

  % Main computation with additional error handling
  try
    result = input * 2; 
  catch e
    % Handle any unexpected errors
    warning('An unexpected error occurred: %s', e.message);
    result = NaN; % Or any other appropriate default value
  end
end

% Example Usage
input1 = 5; 
result1 = myFunctionImproved(input1); % Expected result: 10
input2 = -5; 
result2 = myFunctionImproved(input2); % Expected error: 'Input must be a non-negative number.'
input3 = 'abc';
result3 = myFunctionImproved(input3); %Expected error: 'Input must be a non-negative number.'