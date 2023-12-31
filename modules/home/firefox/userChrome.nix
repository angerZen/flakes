{
  programs.firefox.profiles.default.userChrome = ''
       /******************** BEGIN PYWALFOX CUSTOM CSS ********************/
    #main-window {
        --pywalfox-font-size: 0.8rem;
        --pywalfox-font-size-sm: 0.6rem;
        --pywalfox-background: var(--lwt-accent-color);
        --pywalfox-background-light: var(--arrowpanel-background);
        --pywalfox-text: var(--arrowpanel-color);
        --pywalfox-text-focus: var(--toolbar-color);
        --pywalfox-unselected-tab-opacity: 0.8;
        --pywalfox-darker-background: rgba(0, 0, 0, 0.4);
        --pywalfox-padding: 4px 8px;
        font-size: 0.8rem !important;
      }

      /* Disable default appearance of certain elements to be able to override shadow DOM attributes */
      menupopup, menuseparator, button, search-textbox {
        -moz-appearance: none !important;
      }

      /* Override the default appearance of buttons and textboxes to match the pywalfox theme */
      button, search-textbox, menuseparator {
        background-color: var(--pywalfox-darker-background) !important;
      }

      /* Background color on hover in right-click context menus */
      menu[_moz-menuactive="true"], menuitem[_moz-menuactive="true"] {
        -moz-appearance: none !important;
        background-color: var(--pywalfox-background) !important;
        color: var(--pywalfox-text-focus) !important;
        /*padding: 4px 4px !important;*/
      }
      /* Separators in dropwdown menus */
      menuseparator {
        height: 1px;
      }

      /* Elements where we set appearance to none, we need to set padding manually */
      notification, button, search-textbox {
        padding: 4px 4px !important;
      }

      /* Fix background color of elements that can not be targeted via the Theme API */
      notification, menupopup {
        background: var(--pywalfox-background-light) !important;
        color: var(--pywalfox-text) !important;
      }

      /* Apply bold text to elements */
      textbox, panelview, .tabbrowser-tab, #sidebar-header,
      .findbar-container, toolbar[overflowable] > .customization-target {
        font-weight: bold !important;
      }

      /* Decrease opacity of unselected tabs to match the default Firefox theme */
      .tabbrowser-tab:not([visuallyselected="true"]) {
        opacity: var(--pywalfox-unselected-tab-opacity) !important;
      }

      /* Hide unnecessary borders */
      .sidebar-splitter, notification {
        border: 0px !important;
      }

      /* Change the background color of the resize splitter on the right side of the sidebar */
      .sidebar-splitter {
        background-color: transparent !important;
      }

      /* Smaller font size in panel dropdown menus */
      panelmultiview {
        font-size: 0.6rem !important;
      }

      /* Change the grey background color seen e.g. when opening a bookmark in a newtab */
      #tabbrowser-tabpanels {
        background-color: var(--pywalfox-background) !important;
      }

      /* Theme the status panel at the bottom */
      #statuspanel-label {
        background: var(--pywalfox-background-light) !important;
        border-color: var(--pywalfox-background) !important;
        color: var(--pywalfox-text) !important;
      }
      /********************* END PYWALFOX CUSTOM CSS *********************/


      @import "../../../../.cache/wal/colors.css";

      :root {
          /* global border radius */
          --uc-border-radius: 0px !important;
          --uc-temp-border-radius: 0px !important;

          /* dynamic url bar width settings */
          --uc-urlbar-width: clamp(250px, 50vw, 600px);

          /* dynamic tab width settings */
          --uc-active-tab-width: clamp(50px, 18vw, 220px);
          --uc-inactive-tab-width: clamp(50px, 15vw, 200px);

          /* if active always shows the tab close button */
          --show-tab-close-button: -moz-inline-box;
          /* DEFAULT: -moz-inline-box; */

          /* if active only shows the tab close button on hover*/
          --show-tab-close-button-hover: -moz-inline-box;
          /* DEFAULT: -moz-inline-box; */

          /* adds left and right margin to the container-tabs indicator */
          --container-tabs-indicator-margin: 0px;

      }

      /*---+---+---+---+---+---+---+
           | B | U | T | T | O | N | S |
           +---+---+---+---+---+---+---*/

      back-button,
      #forward-button,
      #urlbar-zoom-button,
      #PanelUI-button,
      #reader-mode-button,
      #tracking-protection-icon-container,
      .tab-secondary-label,
      #pageActionButton,
      #page-action-buttons,
      #urlbar-go-button,
      #star-button {
          display: none !important;
      }

      #identity-box.extensionPage
      #identity-icon[tooltiptext="Loaded by extension: Tabliss"],
      #urlbar[pageproxystate="invalid"] #identity-box #identity-icon,
      #tracking-protection-icon-container[hidden]
        ~ #identity-box[pageproxystate="valid"].notSecure:not(.chromeUI, .localResource)
        #identity-icon {
        display: none !important;
      }


      #identity-box.extensionPage
      #identity-icon[tooltiptext="Loaded by extension: Tabliss"],
      #urlbar[pageproxystate="invalid"] #identity-box #identity-icon,
      #tracking-protection-icon-container[hidden]
        ~ #identity-box[pageproxystate="valid"].notSecure:not(.chromeUI, .localResource)
        #identity-icon {
        fill-opacity: var(--urlbar-icon-fill-opacity) !important;
        list-style-image: url(chrome://userchrome/content/engines/google.svg) !important;
      }


      /* Hide Extension Name Unless Site Identity Area is Hovered */
      #identity-box.extensionPage:not(:hover) #identity-icon-labels {
        display: none !important;
      }
      #identity-box.extensionPage:hover #identity-icon-labels {
        display: none !important;
      }
      #identity-box.extensionPage #identity-icon-label {
        display: none !important;
      }

      window,
      #main-window,
      #toolbar-menubar,
      #TabsToolbar,
      #PersonalToolbar,
      #navigator-toolbox,
      #sidebar-box,
      #nav-bar {
          -moz-appearance: none !important;
          border: none !important;
          box-shadow: none !important;
      }

      /* grey out ccons inside the toolbar to make it
       * more aligned with the Black & White colour look */
      #PersonalToolbar toolbarbutton:not(:hover),
      #bookmarks-toolbar-button:not(:hover) {
          filter: grayscale(1) !important;
      }

      /* Show Window Control Button */
      .titlebar-buttonbox-container {
          display: none !important;
      }

      /* remove "padding" left and right from tabs */
      .titlebar-spacer {
          display: none !important;
      }

      /* remove gap after pinned tabs */
      #tabbrowser-tabs[haspinnedtabs]:not([positionpinnedtabs])>#tabbrowser-arrowscrollbox>.tabbrowser-tab[first-visible-unpinned-tab] {
          margin-inline-start: 0 !important;
      }

      /* remove tab shadow */
      .tabbrowser-tab>.tab-stack>.tab-background {
          box-shadow: none !important;
      }


      /* active tab background */
      .tabbrowser-tab[selected]>.tab-stack>.tab-background {
          border: 2px solid var(--color2) !important;
      }

      /* tab close button options */
      .tabbrowser-tab:not([pinned]) .tab-close-button {
          display: none !important;
      }

      .tabbrowser-tab:not([pinned]):hover .tab-close-button {
          display: -moz-inline-box !important
      }

      /* adaptive tab width */
      .tabbrowser-tab[selected][fadein]:not([pinned]) {
          max-width: var(--uc-active-tab-width) !important;
      }

      .tabbrowser-tab[fadein]:not([selected]):not([pinned]) {
          max-width: var(--uc-inactive-tab-width) !important;
      }

      /* container tabs indicator */
      .tabbrowser-tab[usercontextid]>.tab-stack>.tab-background>.tab-context-line {
          margin: -1px var(--container-tabs-indicator-margin) 0 var(--container-tabs-indicator-margin) !important;
          border-radius: var(--tab-border-radius) !important;
      }

      /* show favicon when media is playing but tab is hovered */
      .tab-icon-image:not([pinned]) {
          opacity: 1 !important;
      }

      /* Makes the speaker icon to always appear if the tab is playing (not only on hover) */
      .tab-icon-overlay:not([crashed]),
      .tab-icon-overlay[pinned][crashed][selected] {
          top: 5px !important;
          z-index: 1 !important;
          padding: 1.5px !important;
          inset-inline-end: -8px !important;
          width: 16px !important;
          height: 16px !important;
          border-radius: 0px !important;
      }


      .tab-icon-overlay:not([pinned], [sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) {
          margin-inline-end: 9.5px !important;
      }

      .tabbrowser-tab:not([image]) .tab-icon-overlay:not([pinned], [sharing], [crashed]) {
          top: 0 !important;
          padding: 0 !important;
          margin-inline-end: 5.5px !important;
          inset-inline-end: 0 !important;
      }

      #nav-bar {
          border: none !important;
          box-shadow: none !important;
      }

      /* remove border below whole nav */
      #navigator-toolbox {
          border-bottom: none !important;
      }


      /* transition to oneline */
      @media (min-width: 1000px) {
          /* move tabs bar over */
          #TabsToolbar {
              margin-left: var(--uc-urlbar-width) !important;

          }
          /* move entire nav bar  */
          #nav-bar {
              margin: calc((var(--urlbar-min-height) * -1) - 10px) calc(100vw - var(--uc-urlbar-width)) 0 0 !important;
         }
      }

  '';
}
