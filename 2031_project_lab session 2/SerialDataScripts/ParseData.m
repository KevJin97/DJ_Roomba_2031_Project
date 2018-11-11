% read the whole serial buffer into an array
rawbytes = fread(s, s.bytesavailable);

% interpret the raw data as 16-bit 2's comp
sonardata = rawbytes(1:2:720).*256 + rawbytes(2:2:720);
