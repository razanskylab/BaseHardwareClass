function Print_Size(Obj)
  % convenience function to plot size in human readable string
  Obj.VPrintF('Total size of class is %sB.\n',...
    num_to_SI_string(Obj.totalByteSize));
end
