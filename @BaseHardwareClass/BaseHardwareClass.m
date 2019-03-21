% non functional example class to be used as basis for new hardware interfacing
% class, as they alls should have similar structure and content

classdef (Abstract) BaseHardwareClass < handle
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % Properties
  % see https://de.mathworks.com/help/matlab/matlab_oop/property-attributes.html
  % Property Validation
  % simple validation via build in property validation:
  % https://de.mathworks.com/help/matlab/matlab_oop/property-validator-functions.html
  % more complex cases can be done via get/set functions
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  properties
    verboseOutput(1,1) {mustBeNumericOrLogical} = true; % more detailed output to workspace...
  end

  % depended properties are calculated from other properties
  properties (Dependent = true)
    totalByteSize;
  end

  % things we don't want to accidently change but that still might be interesting
  properties(SetAccess = private)
  end

  % things we don't want to accidently change but that still might be interesting
  properties(Constant)
  end

  % same as constant but now showing up as property
  properties (Hidden=true)
  end


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % constructor, desctructor, save obj
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  methods
    % constructor, called when class is created
    function BC = BaseClass()
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function delete(BC)
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % when saved, hand over only properties stored in saveObj
    function SaveObj = saveobj(BC)
      SaveObj = BC; % just copy/save all for now
     end
  end


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  methods % short methods, which are not worth putting in a file
    % Done(BC);
  end

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  methods (Access = private)
  end

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  methods (Abstract)
  end % <<<<<<<< END SET?GET METHODS

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  methods % set / get methods
    %%===========================================================================
    function totalByteSize = get.totalByteSize(BC)
      totalByteSize = get_handle_class_size(BC);
    end
  end % <<<<<<<< END SET?GET METHODS

end % <<<<<<<< END BASE CLASS
