{
  description = "A Flutter development environment";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };
      in
      {
        # This is the development environment that `nix develop` will use
        devShell = pkgs.mkShell {
          # These are the packages that will be available in the shell
          buildInputs = with pkgs; [
            # C++ compiler and build tools required by Flutter
            clang
            cmake
            ninja

            # Used by CMake to find libraries
            pkg-config

            # Libraries required for the Linux Flutter embedder
            gtk3
            webkitgtk_4_1
            xorg.libX11
            util-linux.dev
            xorg.libXdmcp
            xorg.libXtst
            sysprof
            libepoxy
            android-studio
            pre-commit
          ];

          shellHook = ''
            export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath [ pkgs.libepoxy ]}:$LD_LIBRARY_PATH
          '';
        };
      }
    );
}
