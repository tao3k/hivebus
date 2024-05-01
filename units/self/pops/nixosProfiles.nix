{
  omnibus,
  inputs,
  projectRoot,
}:
(omnibus.pops.nixosProfiles.addLoadExtender {
  load = {
    src = projectRoot + /units/nixosProfiles;
    inputs = {
      inputs = inputs;
    };
  };
})
