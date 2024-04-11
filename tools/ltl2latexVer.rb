#!/bin/ruby
a = ['s/<>/\\\\Diamond/g',
     's/\\[\\]/\\\\square/g',
     's/\\n/\\\\\\\\\\n/g',
     's/\~/\\\\neg/g',
     's/\\/\\\/\\\\wedge/g',
     's/\\\\\//\\\\vee/g',
     's/U/\\\\mathcal{U}/g',
     's/W/\\\\mathcal{W}/g',
     's/\\bO\\b/\\\\bigcirc/g',
     's/->/\\\\rightarrow/g',
     's/um0/ubm_0/g',
     's/um1/ubm_1/g',
     's/um2/ubm_2/g',
     's/um3/ubm_3/g',
     's/um4/ubm_4/g',
     's/\\.\\.\\./\\\\ldots/g']

cmd =  "sed '#{a.join(' ; ')}' secprop.txt > secpropLatex.txt"
p cmd
system(cmd)
