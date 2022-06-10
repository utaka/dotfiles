#!/usr/bin/env perl

$pdf_mode     = 3;
$latex        = 'uplatex --kanji=utf8 -synctex=1 -halt-on-error';
$latex_silent = 'uplatex -halt-on-error -interaction=batchmode';
$bibtex       = 'upbibtex';
$dvipdf       = 'dvipdfmx %O -o %D %S';
$makeindex    = 'mendex %O -o %D %S';
$out_dir      = './build';

