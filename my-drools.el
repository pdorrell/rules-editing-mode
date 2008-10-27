;;; This is some sample code of how to use drools-mode.el

;;; Author Philip Dorrell. Email: http://www.1729.com/email.html

;;; Permission is hereby granted, free of charge, to any person obtaining a copy
;;; of this software and associated documentation files (the "Software"), to deal
;;; in the Software without restriction, including without limitation the rights
;;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;;; copies of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;; 
;;; The above copyright notice and this permission notice shall be included in
;;; all copies or substantial portions of the Software.
;;; 
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;;; THE SOFTWARE.

(autoload 'drools-mode "drools-mode")

(defun set-extension-mode (extension mode)
  (setq auto-mode-alist
	(cons (cons (concat "\\" extension "\\'") mode)
	      auto-mode-alist) ) )

(set-extension-mode ".drl" 'drools-mode)
(set-extension-mode ".dslr" 'drools-mode)

(add-hook 'drools-mode-hook 'my-drools-hook)

(defun drools-return-and-indent()
  (interactive)
  (newline) (indent-for-tab-command) )

(defun my-drools-hook ()
  (setq indent-tabs-mode nil)
  (local-set-key [?\C-m] 'drools-return-and-indent) )
