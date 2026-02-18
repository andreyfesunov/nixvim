# lualine - statusline plugin
{
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        section_separators = {
          left = "";
          right = "";
        };
        component_separators = {
          left = "|";
          right = "|";
        };
      };
      sections = {
        lualine_a = [
          {
            __unkeyed-1 = "buffers";
            mode = 2;
            symbols = {
              modified = " ●";
              alternate_file = "";
            };
          }
        ];
        lualine_b = [{__unkeyed-1 = "";}];
        lualine_c = [{__unkeyed-1 = "";}];
        lualine_x = [{__unkeyed-1 = "";}];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
    };
  };
}
