{
  programs.firefox.profiles.default.userChrome = ''
       @import "../../../../.cache/wal/colors.css";

    :root {
        /* global border radius */
        --uc-border-radius: 4px !important;
        --uc-temp-border-radius: 4px !important;

        /* dynamic url bar width settings */
        --uc-urlbar-width: clamp(250px, 50vw, 600px);

        /* dynamic tab width settings */
        --uc-active-tab-width: clamp(50px, 18vw, 220px);
        --uc-inactive-tab-width: clamp(50px, 15vw, 200px);

        /* if active always shows the tab close button */
        --show-tab-close-button: none;
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

    #back-button,
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


    /* No need to change anything below this comment.
     * Just tweak it if you want to tweak the overall layout. c: */
    :root {
        --uc-theme-colour: var(--background);
        --uc-hover-colour: linear-gradient(rgba(255, 255, 255, 0.06),
        rgba(255, 255, 255, 0.06)),
      var(--background);
        --uc-inverted-colour: var(--foreground);

        --button-bgcolor: var(--uc-theme-colour) !important;
        --button-hover-bgcolor: var(--uc-hover-colour) !important;
        --button-active-bgcolor: var(--uc-hover-colour) !important;

        --toolbar-bgcolor: var(--uc-theme-colour) !important;
        --toolbarbutton-hover-background: var(--uc-hover-colour) !important;
        --toolbarbutton-active-background: var(--uc-hover-colour) !important;
        --toolbarbutton-border-radius: var(--uc-border-radius) !important;
        --lwt-toolbar-field-focus: var(--uc-theme-colour) !important;
        --toolbarbutton-icon-fill: var(--uc-inverted-colour) !important;
        --toolbar-field-focus-background-color: var(--background) !important;
        --toolbar-field-color: var(--uc-inverted-colour) !important;
        --toolbar-field-focus-color: var(--uc-inverted-colour) !important;

        --tabs-border-color: var(--uc-theme-colour) !important;
        --tab-border-radius: var(--uc-temp-border-radius) !important;
        --lwt-text-color: var(--uc-inverted-colour) !important;
        --lwt-tab-text: var(--uc-inverted-colour) !important;

        --lwt-sidebar-background-color: var(--uc-hover-colour) !important;
        --lwt-sidebar-text-color: var(--uc-inverted-colour) !important;

        --arrowpanel-border-color: var(--uc-theme-colour) !important;
        --arrowpanel-border-radius: var(--uc-border-radius) !important;
        --arrowpanel-background: var(--uc-theme-colour) !important;
        --arrowpanel-color: var(--inverted-colour) !important;

        --autocomplete-popup-highlight-background: var(--uc-inverted-colour) !important;
        --autocomplete-popup-highlight-color: var(--uc-inverted-colour) !important;
        --autocomplete-popup-hover-background: var(--uc-inverted-colour) !important;

        --tab-block-margin: 2px !important;

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
        background: var(--uc-theme-colour) !important;

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

    /* tab background */
    .tabbrowser-tab>.tab-stack>.tab-background {
        background: var(--uc-theme-colour) !important;
    }

    /* active tab background */
    .tabbrowser-tab[selected]>.tab-stack>.tab-background {
        background: var(--uc-hover-colour) !important;
        border: 2px solid var(--color2) !important;
    }

    /* tab close button options */
    .tabbrowser-tab:not([pinned]) .tab-close-button {
        display: var(--show-tab-close-button) !important;
    }

    .tabbrowser-tab:not([pinned]):hover .tab-close-button {
        display: var(--show-tab-close-button-hover) !important
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
        border-radius: 4px !important;
    }

    /* style and position speaker icon */
    .tab-icon-overlay:not([sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) {
        stroke: transparent !important;
        background: transparent !important;
        opacity: 1 !important;
        fill-opacity: 0.8 !important;
        color: currentColor !important;
        stroke: var(--uc-theme-colour) !important;
        background-color: var(--uc-theme-colour) !important;
    }

    /* change the colours of the speaker icon on active tab to match tab colours */
    .tabbrowser-tab[selected] .tab-icon-overlay:not([sharing], [crashed]):is([soundplaying], [muted], [activemedia-blocked]) {
        stroke: var(--uc-hover-colour) !important;
        background-color: var(--uc-hover-colour) !important;
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

    .tab-icon-overlay:not([crashed])[soundplaying]:hover,
    .tab-icon-overlay:not([crashed])[muted]:hover,
    .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover {
        color: currentColor !important;
        stroke: var(--uc-inverted-colour) !important;
        background-color: var(--uc-inverted-colour) !important;
        fill-opacity: 0.95 !important;
    }

    .tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[soundplaying]:hover,
    .tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[muted]:hover,
    .tabbrowser-tab[selected] .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover {

        color: currentColor !important;
        stroke: var(--uc-inverted-colour) !important;
        background-color: var(--uc-inverted-colour) !important;
        fill-opacity: 0.95 !important;

    }

    /* speaker icon colour fix */
    #TabsToolbar .tab-icon-overlay:not([crashed])[soundplaying],
    #TabsToolbar .tab-icon-overlay:not([crashed])[muted],
    #TabsToolbar .tab-icon-overlay:not([crashed])[activemedia-blocked] {
        color: var(--uc-inverted-colour) !important;
    }

    /* speaker icon colour fix on hover */
    #TabsToolbar .tab-icon-overlay:not([crashed])[soundplaying]:hover,
    #TabsToolbar .tab-icon-overlay:not([crashed])[muted]:hover,
    #TabsToolbar .tab-icon-overlay:not([crashed])[activemedia-blocked]:hover {
        color: var(--uc-theme-colour) !important;
    }

    #nav-bar {
        border: none !important;
        box-shadow: none !important;
        background: transparent !important;
        background: var(--uc-theme-colour) !important;
    }

    /* remove border below whole nav */
    #navigator-toolbox {
        border-bottom: none !important;
        background: var(--uc-theme-colour) !important;
    }

    #urlbar,
    #urlbar * {
        box-shadow: none !important;
    }
    #urlbar {
        background: var(--uc-theme-colour) !important;
    }

    #urlbar-background {
        border: 0px solid var(--uc-hover-colour) !important;
    }

    #urlbar[focused="true"]>#urlbar-background,
    #urlbar:not([open])>#urlbar-background {
        background: transparent !important;
    }

    #urlbar[open]>#urlbar-background {
        background: var(--uc-theme-colour) !important;
    }

    .urlbarView-row:hover>.urlbarView-row-inner,
    .urlbarView-row[selected]>.urlbarView-row-inner {
        background: var(--uc-hover-colour) !important;
    }

    /* transition to oneline */
    @media (min-width: 1000px) {
        /* move tabs bar over */
        #TabsToolbar {
            margin-left: var(--uc-urlbar-width) !important;
        }
        /* move entire nav bar  */
        #nav-bar {
            margin: calc((var(--urlbar-min-height) * -1) - 8px) calc(100vw - var(--uc-urlbar-width)) 0 0 !important;
        }
    }
  '';
}
