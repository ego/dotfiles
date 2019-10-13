# Emacs

Use emacsclient
alias e='emacsclient --no-wait'


The function load-theme will first disable the active themes, before loading the new one:
```elisp
(defun disable-all-themes ()
  "disable all active themes."
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

(defadvice load-theme (before disable-themes-first activate)
  (disable-all-themes))
```
To disable themes use `(disable-all-themes)`


* [spacemacs/python](http://develop.spacemacs.org/layers/+lang/python/README.html)
* [spacemacs/layers](http://spacemacs.org/layers/LAYERS.html)
* [spacemacs/doc](http://spacemacs.org/doc/DOCUMENTATION.html)
* [Anaconda - code navigation](https://github.com/pythonic-emacs/anaconda-mode)
* [Tabs for emacs](https://github.com/ema2159/centaur-tabs)
* [treemacs](https://github.com/Alexander-Miller/treemacs)
* [Emacs config ladicle](https://ladicle.com/post/config/#screenshot)
* [Centaur Emacs](https://github.com/seagle0128/.emacs.d/tree/master/lisp)
* [Emacs nasy](https://github.com/nasyxx/emacs.d/)
* [Generate and change color-schemes on the fly](https://github.com/dylanaraps/pywal)
