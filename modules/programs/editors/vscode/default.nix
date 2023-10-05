{
  pkgs,
  inputs,
  ...
}: {
  home-manager.users.angerzen = {
    programs.vscode = {
      enable = true;
      # package = pkgs.vscodium;
      userSettings = {
        "window.titleBarStyle" = "custom";
        "editor.cursorBlinking" = "expand";
        "editor.cursorSmoothCaretAnimation" = "on";
        "editor.cursorStyle" = "line";
        "editor.fontFamily" = "FiraCode";
        "editor.fontSize" = 12;
        "editor.lineHeight" = 1.3;
        "editor.minimap.enabled" = false;
        "editor.mouseWheelZoom" = false;
        "tabnine.experimentalAutoImports" = true;
        "terminal.integrated.fontFamily" = "FiraCode";
        "editor.fontLigatures" = true;
        "terminal.integrated.fontSize" = 12;
        "window.menuBarVisibility" = "hidden";
        "window.zoomLevel" = 1;
        "workbench.colorTheme" = "Wal";
        "workbench.iconTheme" = "catppuccin-mocha";
        "workbench.productIconTheme" = "material-product-icons";
        "workbench.sideBar.location" = "left";
        "workbench.startupEditor" = "none";
        "workbench.statusBar.visible" = false;
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nil";
        "[typescriptreact]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };
        "[typescript]" = {
          "editor.defaultFormatter" = "esbenp.prettier-vscode";
        };
      };
      keybindings = [
        {
          "key" = "ctrl+shift+s";
          "command" = "editor.action.formatDocument";
          "when" = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
        }
        {
          "key" = "shift+ctrl+down";
          "command" = "editor.action.insertCursorBelow";
          "when" = "editorTextFocus";
        }
        {
          "key" = "shift+ctrl+up";
          "command" = "editor.action.insertCursorAbove";
          "when" = "editorTextFocus";
        }
        {
          "key" = "shift+alt+down";
          "command" = "editor.action.copyLinesDownAction";
          "when" = "editorTextFocus";
        }
        {
          "key" = "shift+alt+up";
          "command" = "editor.action.copyLinesUpAction";
          "when" = "editorTextFocus";
        }
      ];
      extensions = with pkgs.vscode-extensions;
        [
          kamadorueda.alejandra
          bbenoist.nix
          jnoortheen.nix-ide
          pkief.material-product-icons
          catppuccin.catppuccin-vsc-icons
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            publisher = "dlasagno";
            name = "wal-theme";
            version = "1.1.2";
            sha256 = "vO9FjzA3+5VTgnBY12eawPCfDzKap07Tgf5jqz/IgN0=";
          }
        ];
    };
    home.packages = with pkgs; [
      inputs.alejandra.defaultPackage.${system}
    ];
  };
}
