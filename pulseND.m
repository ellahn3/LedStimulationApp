
 function [] = pulseND(currND, newND)
 
 global sND
 
 if currND>newND
     numPulses=12+(newND-currND);
 else numPulses=newND-currND;
 end
 
 for i=1:numPulses
     sND.outputSingleScan (1);
     pause(0.1)
     sND.outputSingleScan (0);
     pause(1)
     sND.outputSingleScan (0);
 end
 end
 