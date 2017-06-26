local LogisticMap, parent = torch.class('nn.LogisticMap', 'nn.Module')


function LogisticMap:__init(a)
   parent.__init(self)
   self.a = a or 1;
end 

function LogisticMap:updateOutput(input)
   self.output = self.a*input:cmul(1-input);
   return self.output
end

function LogisticMap:updateGradInput(input, gradOutput)
   self.gradInput = self.a*(1-2*input):cmul(gradOutput);
   return self.gradInput
end