# mini-starter - package for start screen
{ lib, ... }: {
  plugins.mini-starter = {
    enable = true;
    settings = {
      autoopen = true;
      content_hooks = [
        (lib.nixvim.mkRaw ''require("mini.starter").gen_hook.adding_bullet()'')
        (lib.nixvim.mkRaw ''
          require("mini.starter").gen_hook.indexing('all', { 'Builtin actions' })'')
        (lib.nixvim.mkRaw
          ''require("mini.starter").gen_hook.aligning('center', 'center')'')
      ];
      evaluate_single = true;
      header = ''
                                   ___________ _
                              __/   .::::.-'-(/-/)
                            _/:  .::::.-' .-'\/\_`,
                           /:  .::::./   -._-.  d\|
                            /: (""""/    '.  (__/||
                             \::).-'  -._  \/ \\/\|
                     __ _ .-'`)/  '-'. . '. |  (i_O
                 .-'      \       -'      '\|
            _ _./      .-'|       '.  (    \\
         .-'   :      '_  \         '-'\  /|/
        /      )\_      '- )_________.-|_/^\
        (   .-'   )-._-:  /        \(/\'-._ `.
         (   )  _//_/|:  /          `\()   `\_\
          ( (   \()^_/)_/             )/      \\
           )     \\ \(_)             //        )\
                 _o\ \\\            (o_       |__\
                 \ /  \\\__          )_\
                       ^)__\
      '';
      items = [
        (lib.nixvim.mkRaw
          ''require("mini.starter").sections.builtin_actions()'')
        (lib.nixvim.mkRaw
          ''require("mini.starter").sections.recent_files(10, false)'')
        (lib.nixvim.mkRaw
          ''require("mini.starter").sections.recent_files(10, true)'')
        (lib.nixvim.mkRaw
          ''require("mini.starter").sections.sessions(5, true)'')
      ];
    };
  };
}
