{\rtf1\ansi\ansicpg936\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red252\green248\blue255;}
{\*\expandedcolortbl;;\csgray\c0;\cspthree\c99000\c98000\c100000;}
\paperw11900\paperh16840\margl1440\margr1440\vieww33400\viewh21000\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
\
\
\
\

\fs36 FILE=`ls *pep.fasta|sed \'91\'92s/fa//g`\
\
for i in $FILE\
do\
\cf2 \cb3 \CocoaLigature0 hmmsearch -E 1e-5 --domE 0.00001 --cpu 5 --noali --domtblout $\{i\}.pep.tbout --tblout $\{i\}.pep.txt PF00067.hmm $i\cf0 \cb1 \CocoaLigature1 \
\
done\
\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 \cb3 \CocoaLigature0 FILE=`ls *pep.tbout |sed 's/.tbout//g'`\
\
for i in $FILE\
do\
\
grep -v \\"#\\" $\{i\}.tbout | cut -d \\" \\" -f 1|sort -u > $\{i\}.p450.id\
perl filter_fasta_by_ids.pl -l $\{i\}.p450.id -f $\{i\} -o $\{i\}.p450.fa\
blastp -query $\{i\}.p450.fa -db all_p450_database_v2_db -outfmt 7 -max_target_seqs 1 -out $\{i\}_2_p450_database.tab\
python3.5 get_p450_family.py $\{i\}_2_p450_database.tab |sort -u > $\{i\}_2_p450_database.class\
cut -f 3 $\{i\}_2_p450_database.class|sort |uniq -c |sed \\"s/^[ ]*//g\\" > $\{i\}_2_p450_database.class.unique\
python3.5 get_p450_family_num.py $\{i\}_2_p450_database.class.unique all_ref_p450.class.txt  > $\{i\}_2_p450_database.class.unique.class\
\
done\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \cb1 \CocoaLigature1 \

\fs24 \
\
}