{
  omnibus,
  inputs,
  projectRoot,
  root,
}:
omnibus.pops.load {
  src = projectRoot + /hosts;
  inputs = {
    inherit (inputs) nixos-unstable;
    inputs = inputs;
  };
}
