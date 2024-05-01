{
  omnibus,
  inputs,
  projectRoot,
}:
(omnibus.pops.nixosModules.addLoadExtender {
  load = {
    src = projectRoot + /units/nixosModules;
    inputs = {
      inputs = inputs;
    };
  };
})
