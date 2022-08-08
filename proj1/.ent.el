;;; .ent.el --- local ent config file -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

;; project settings
(setq ent-project-home (file-name-directory (if load-file-name load-file-name buffer-file-name)))
(setq ent-project-name "report-generator")
(setq ent-clean-regexp "~$\\|\\.tex$")
(setq ent-project-orgfile "ReportGenerator.org")

(require 'ent)

(ent-tasks-init)

(task 'format '() "format code" '(lambda 
                                   (&optional 
                                    x)
                                   "bb format"))

(task 'kibit '() "lint with kibit" '(lambda 
                                      (&optional 
                                       x)
                                      "bb kibit"))


(task 'kondo '() "lint with kondo" '(lambda 
                                      (&optional 
                                       x)
                                      "bb kondo"))

(task 'eastwood '() "lint with eastwood" '(lambda 
                                            (&optional 
                                             x)
                                            "bb eastwood"))

(task 'runtest '() "run tests" '(lambda 
                                      (&optional 
                                       x)
                                      "bb test"))

(task 'libupdate '() "search for new libs versions" '(lambda 
                                                       (&optional 
                                                        x)
                                                       "clojure -Tantq outdated" ))


(task 'tree '() "display dependance tree" '(lambda (&optional x) "clojure -Stree"))

(provide '.ent)
;;; .ent.el ends here

;; Local Variables:
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
