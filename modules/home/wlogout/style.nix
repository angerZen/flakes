{...}: {
  programs.wlogout.style = ''
      window {
        font-family: JetBrainsMono Nerd Font;
        font-size: 14pt;
        color: #CED7F4; /* text */
        background-color: rgba(31, 31, 31, 0.7);
    }
    button {
        background-repeat: no-repeat;
        background-position: center;
        background-size: 50%;
        border: none;
        background-color: rgba(30, 30, 46, 0);
        margin: 5px;
        transition: box-shadow 0.2s ease-in-out, background-color 0.2s ease-in-out;
    }
    button:hover {
        background-color: rgba(49, 50, 68, 0.5);
    }
    button:focus {
        background-color: #595959;
        color:#1F1F1F;
    }
    #lock {
        background-image: image(url("./assets/lock.png"));
    }
    #lock:focus {
        background-image: image(url("./assets/lock-hover.png"));
    }
    #logout {
        background-image: image(url("./assets/logout.png"));
    }
    #logout:focus {
        background-image: image(url("./assets/logout-hover.png"));
    }
    #suspend {
        background-image: image(url("./assets/sleep.png"));
    }
    #suspend:focus {
        background-image: image(url("./assets/sleep-hover.png"));
    }

    #shutdown {
        background-image: image(url("./assets/power.png"));
    }
    #shutdown:focus {
        background-image: image(url("./assets/power-hover.png"));
    }
    #reboot {
        background-image: image(url("./assets/restart.png"));
    }
    #reboot:focus {
        background-image: image(url("./assets/restart-hover.png"));
    }

  '';
}
