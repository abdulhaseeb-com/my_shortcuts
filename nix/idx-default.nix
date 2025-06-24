# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.neovim
    pkgs.pnpm 
    pkgs.sqlite
    
    # pkgs.nodePackages.nodemon
  ];
  # Sets environment variables in the workspace
  env = {};
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "tomi.xasnippets"
      "bradlc.vscode-tailwindcss"
      "oderwat.indent-rainbow"
      "esbenp.prettier-vscode"
      "kamikillerto.vscode-colorize"
      "dbaeumer.vscode-eslint"
      "VisualStudioExptTeam.vscodeintellicode"
      "GitHub.copilot"
      "ms-vscode-remote.remote-ssh"
      "PKief.material-icon-theme"
      "GitHub.vscode-pull-request-github"
      "formulahendry.auto-rename-tag"
      "redhat.vscode-yaml"
      "ecmel.vscode-html-css"
      "golang.Go"
      "donjayamanne.githistory"
      "mechatroner.rainbow-csv"
      "yzhang.markdown-all-in-one"
      "KevinRose.vsc-python-indent"
      "mhutchie.git-graph"
      "Dart-Code.flutter"
      "christian-kohler.npm-intellisense"
      "tomoki1207.pdf"
      "mtxr.sqltools"
    ];
    # Enable previews
    # previews = {
    #   enable = true;
    #   previews = {
    #     web = {
    #       # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
    #       # and show it in IDX's web preview panel
    #       command = ["npm" "run" "dev"];
    #       manager = "web";
    #       env = {
    #         # Environment variables to set for your server
    #         PORT = "$PORT";
    #       };
    #     };
    #   };
    # };
    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        # npm-install = "npm install";
        # Open editors for the following files by default, if they exist:
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
