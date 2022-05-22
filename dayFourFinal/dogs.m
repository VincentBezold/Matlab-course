classdef dogs
    properties
        name
        age
    end
    methods (Static)
        function name = compareAge(dog1, dog2)
            if dog1.age < dog2.age
                name = dog2.name;
            end
        end
    end
end