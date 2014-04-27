
local pautil = require "lib.portaudioutil"

local sampleRate = 44100
local framesPerBuffer = 1024
local numChannels = 2

local function audiofun(inp, out, size, nchans)
  for i = 0, size*nchans-1 do
    out[i] = inp[i]
  end
end

local function waitfun()
  print("Press Enter to stop")
  io.read()
end

pautil.callback(sampleRate, framesPerBuffer, numChannels, audiofun, waitfun)
