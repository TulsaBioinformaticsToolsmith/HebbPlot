

function w = trainOutstar( p0, p, alpha )
%
% Author: Hani Zakaria Girgis, PhD
% The Bioinformatics Toolsmith Laboratory
% The University of Tulsa
%
%trainOutstar This function learns a prototype
%   It uses the outstar hebb rule

w0 = ones(1, size(p0,2));
w = zeros(1, size(p0,2));

for i = 1:size(p0, 1)
a = satlins((p0(i, :) .* w0) + (p(i,:) .* w) );
w = w + alpha * (a - w) .* p(i, :);
end
end

