{
  omnibus,
  inputs,
  projectRoot,
}:
omnibus.pops.load {
  src = projectRoot + /hosts;
  inputs = {
    inherit (inputs) nixos-unstable;
    inputs = inputs;
  };
}
