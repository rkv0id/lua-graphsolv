graph = require "graphtn"
solver = require "bfs"

-- trip selection
io.write("Departure: ")
local dpt = io.read()
io.write("Destination: ")
local dst = io.read()

-- path solving
io.write("\n")
local path = solver.solve(graph.map,
                          graph.encoder[dpt],
                          graph.encoder[dst])
local cost = 0
for i=1,#path do
    cost = cost + path[i][2]
end

-- formatting output
io.write("Found Path: ")
io.write(graph.decoder[path[1][1]])
for i=2,#path do
    io.write('--('..path[i][2]..')--'..graph.decoder[path[i][1]])
end
io.write('\n')

io.write("Total Distance: "..cost)
io.write('\n')