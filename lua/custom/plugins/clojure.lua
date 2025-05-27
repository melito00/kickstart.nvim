return {
  {
    'Olical/conjure',
    ft = { 'clojure' },
    config = function()
      require('conjure.main').main()
      require('conjure.mapping')['on-filetype']()
    end,
  },
}
