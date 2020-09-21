# Generated by: toolbox make-shell terraform-minimal pre-commit terraform-docs tflint
let
  toolboxSrc = builtins.fromJSON (builtins.readFile ./toolbox.json);
  toolbox = import (builtins.fetchTarball {
    url = "https://github.com/Caascad/toolbox/archive/${toolboxSrc.commit}.tar.gz";
    sha256 = toolboxSrc.sha256;
  }) {};
in with toolbox; pkgs.runCommand "deps" {
  buildInputs = [
    terraform-minimal pre-commit terraform-docs tflint
  ];
} ""