function height = geoidheight(latlong, geoidname, geoiddir)
%GEOIDHEIGHT  Compute geoid height
%
%   height = GEOIDHEIGHT(latlong)
%   height = GEOIDHEIGHT(latlong, geoidname, geoiddir)
%
%   This is a legacy function to replace a compiled interface function of
%   the same name.  This now calls GEOID_HEIGHT which is implemented as
%   native Matlab code.
%
%   latlong is an M x 2 matrix
%       latitude = latlong(:,1) in degrees
%       longitude = latlong(:,2) in degrees
%   geoidname is the name of the geoid; choices are (default egm96-5)
%       egm84-30  egm84-15
%       egm96-15  egm96-5
%       egm2008-5 egm2008-2_5 egm2008-1
%   geoiddir is the directory containing the geoid models (default empty
%       string meaning system default)
%
%   height is an M x 1 matrix
%       geoidheight = height(:,1) height of geoid in meters
%
%   See also GEOID_HEIGHT.

% Copyright (c) Charles Karney (2015) <charles@karney.com>.
%
% This file was distributed with GeographicLib 1.42.

  if nargin < 2
    geoidname = '';
  elseif nargin < 3
    geoiddir = '';
  end
  height = geoid_height(latlong(:,1), latlong(:,2), geoidname, geoiddir);
end