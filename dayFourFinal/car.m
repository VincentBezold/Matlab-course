classdef car
    properties
        color
        type
        price
        period
    end
    methods (Static)
        function period = payBackTime(price, rate)
            period = price / rate;
        end
    end
end