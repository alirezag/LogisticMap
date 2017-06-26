require 'nn'
require 'LogisticMap'
require 'optim'

N = 2; -- number of nodes
T = 200; -- number of time steps or layers
a = 3.9; -- gain of the logistic map.

net = nn.Sequential();
L = nn.Linear(2,2);
-- hand crafting the weight matrix.
L.weight:zero()
L.weight[{{1},{2}}] = 1;
L.weight[{{2},{1}}] = 1;
L.bias:zero();


-- just for our test, instead of building a RNN 
-- we are building a very long FF net.
for t=1,T do  
    net:add(L:clone('weight')) -- clone each layer because it is a RNN
    net:add(nn.LogisticMap(a));
end

-- initial condition
input = torch.rand(1,2);

-- run the network 
net:forward(input);

-- put out a trace of the output of each ReLU.
--  (similar to saving the state of an equivalent RNN at each time step )
log = optim.Logger('rnnstate.log')
log:setNames{'x1'};

for ni=2,T*2,2 do 
    log:add{net.modules[ni].output[1][1]}
end


