function rosmsgOut = Vector3Stamped(slBusIn, rosmsgOut)
%#codegen
%   Copyright 2021 The MathWorks, Inc.
    rosmsgOut.Header = bus_conv_fcns.ros.busToMsg.std_msgs.Header(slBusIn.Header,rosmsgOut.Header(1));
    rosmsgOut.Vector = bus_conv_fcns.ros.busToMsg.geometry_msgs.Vector3(slBusIn.Vector_,rosmsgOut.Vector(1));
end
