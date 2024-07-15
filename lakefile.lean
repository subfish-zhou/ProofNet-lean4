import Lake
open Lake DSL

package «proofNet-lean4» {
  -- add any package configuration options here
}

@[default_target]
lean_lib «ProofNetLean4» {
  -- add any library configuration options here
}

@[default_target]
lean_exe «proofNet-lean4» where
  root := `Main
  supportInterpreter := true

require mathlib from git
    "https://github.com/leanprover-community/mathlib4" @ "v4.6.0-rc1"
