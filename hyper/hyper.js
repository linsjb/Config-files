// for advanced config flags please refer to https://hyper.is/#cfg

module.exports = {
  config: {
    updateChannel: "stable",
    fontSize: 14,
    fontFamily: '"Hack Nerd Font", Fira Code',
    //fontFamily: 'Fira Code',
    fontWeight: "normal",
    fontWeightBold: "bold",
    lineHeight: 1,
    letterSpacing: 0,
    cursorColor: "rgba(248,28,229,0.8)",
    cursorAccentColor: "#000",
    cursorShape: "beam",
    cursorBlink: false,

    foregroundColor: "#fff",
    backgroundColor: "#000",
    selectionColor: "rgba(248,28,229,0.3)",
    borderColor: "#333",
    css: "",
    termCSS: "",

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: "",
    showWindowControls: "",
    padding: "12px 14px",

    colors: {
      black: "#000000",
      red: "#C51E14",
      green: "#1DC121",
      yellow: "#C7C329",
      blue: "#0A2FC4",
      magenta: "#C839C5",
      cyan: "#20C5C6",
      white: "#C7C7C7",
      lightBlack: "#686868",
      lightRed: "#FD6F6B",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#6A76FB",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF",
    },
    shell: "",

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ["--login"],

    env: {
      LANG: "sv_SE.UTF-8",
    },

    bell: false,
    copyOnSelect: false,
    defaultSSHApp: true,
  },

  plugins: [
    "hyper-statusline",
    "hyper-quit",
    "hypercwd",
    "hyper-one-dark",
    "hyper-aura-theme"
  ],

  localPlugins: [],
  keymaps: {},
};
