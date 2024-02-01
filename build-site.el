;; Jan 2024
;;

(require 'ox-publish)

(setq org-html-validation-link nil         ;; don't show the validation link
      org-html-head-include-scripts nil    ;; use our own scripts
      org-html-include-default-style nil
      org-html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />")

(setq org-publish-project-alist
      (list (list "my-org-site"
                  :recursive t
                  :base-directory "./org"
                  :publishing-directory "./docs"
                  :publishing-function 'org-html-publish-to-html
                  :with-author nil
                  :with-creator nil
                  :with-toc nil
                  :section-numbers nil
                  :time-stamp-file nil)))

(org-publish-all t)

(message "build complete")

;;; build-site.el ends here
