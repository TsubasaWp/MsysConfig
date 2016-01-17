(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("2da65cb7074c176ca0a33f06bcc83ef692c9175e41b6370f5e94eb5811d6ee3a" default)))
 '(tool-bar-mode nil)
 '(transient-mark-mode (quote (only . t))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Meslo LG L" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))
 
;;----------------------------------------------------------------------------
;; font: 要把汉字设置成英文字体的两倍宽，不然org-mode里面的table对不齐
;;----------------------------------------------------------------------------

(dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family "Microsoft Yahei" :size 16)))


;;----------------------------------------------------------------------------
;; org-page
;;----------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/elpa/ht")
(add-to-list 'load-path "~/.emacs.d/elpa/dash")
(add-to-list 'load-path "~/.emacs.d/elpa/simple-httpd")
(add-to-list 'load-path "~/.emacs.d/elpa/org-page")  
(require 'org-page)
(setq op/repository-directory "D:/Git/Org")   ;; the repository location
(setq op/site-domain "http://tsubasawp.github.io/")         ;; your domain
;;; the configuration below you should choose one, not both
(setq op/personal-disqus-shortname "Tsubasa")    ;; your disqus commenting system
(setq op/personal-duoshuo-shortname "Tsubasa")  ;; your duoshuo commenting system