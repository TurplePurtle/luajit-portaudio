
local pautil = require "lib.portaudioutil"

local sampleRate = 44100
local framesPerBuffer = 1024
local numChannels = 2

local numSeconds = 3
local i = numSeconds*sampleRate/framesPerBuffer

pautil.blocking(sampleRate, framesPerBuffer, numChannels, function(a, b, n, nc)
  for i = 0, n*nc-1 do
    b[i] = a[i]
  end
  
  i = i - 1
  return i <= 0
end)
