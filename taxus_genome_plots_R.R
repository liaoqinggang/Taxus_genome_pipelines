#plot genes on Chrs.

plot(62:100,type = "n",xlim = c(0,40),ylim = c(0,1100000000),las=1,axes = F,xlab = '',ylab = '')
#chr1
lines(x=c(0,0),y=c(0,1052277571),lwd=5,col="black",type = "h")
#chr2
lines(x=c(3,3),y=c(0,995865175),lwd=5)
#chr3
lines(x=c(6,6),y=c(0,958316394),lwd=5)
#chr4
lines(x=c(9,9),y=c(0,950298798),lwd=5)
#chr5
lines(x=c(12,12),y=c(0,904642436),lwd=5)
#chr6
lines(x=c(15,15),y=c(0,909132773),lwd=5)
#chr7
lines(x=c(18,18),y=c(0,786775274),lwd=5)
#chr8
lines(x=c(21,21),y=c(0,774176834),lwd=5)
#chr9
lines(x=c(24,24),y=c(0,770396028),lwd=5)
#chr10
lines(x=c(27,27),y=c(0,681618719),lwd=5)
#chr11
lines(x=c(30,30),y=c(0,660890931),lwd=5)
#chr12
lines(x=c(33,33),y=c(0,412525553),lwd=5)
gene_onbar=read.table("genes_onbar2_withoutna.txt",header = 1)

gene_onbar=read.table("groups position-329.txt",header = 1)
chr_pos=c()
#for points
#points(x = p450_pos$chr_pos,y = p450_pos$gene_pos,pch=1,cex=1,col=p450_pos$color)
for (i in c(1:length(gene_onbar$chr))) {
chr_pos[i]=gene_onbar$chr[i]*3-3+0.5
}
gene_onbar$chr_pos=chr_pos
gene_onbar_red=subset(gene_onbar,color2=="red")
gene_onbar_blue=subset(gene_onbar,color2=="blue")
gene_onbar_black=subset(gene_onbar,color2=="black")
for (i in c(1:length(gene_onbar_blue$chr))) {
  
lines(x = c(gene_onbar_blue$chr_pos[i],gene_onbar_blue$chr_pos[i]+1),y = c(gene_onbar_blue$position[i],gene_onbar_blue$position[i]),
      col=as.character(gene_onbar_blue$color2[i]))
}
for (i in c(1:length(gene_onbar_red$chr))) {
lines(x = c(gene_onbar_red$chr_pos[i],gene_onbar_red$chr_pos[i]+1),y = c(gene_onbar_red$position[i],gene_onbar_red$position[i]),
      col=as.character(gene_onbar_red$color2[i]))
}
for (i in c(1:length(gene_onbar_black$chr))) {
  lines(x = c(gene_onbar_black$chr_pos[i],gene_onbar_black$chr_pos[i]+0.5),y = c(gene_onbar_black$position[i],gene_onbar_black$position[i]),
        col=as.character(gene_onbar_black$color2[i]))
}

lines(x=c(gene_onbar$chr_pos[55],gene_onbar$chr_pos[55]+0.5),y=
        c(gene_onbar$position[55],gene_onbar$position[55]),col="skyblue4",
      lwd=2)

lines(x=c(gene_onbar$chr_pos[142],gene_onbar$chr_pos[142]+0.5),y=
        c(gene_onbar$position[142],gene_onbar$position[142]),col="pink",
      lwd=2)

#

#tf and transfermase
gene_onbar=read.table("tf_and_transfermase.pos.withoutna.txt",header = 1)
chr_pos=c()

for (i in c(1:length(gene_onbar$chr))) {
  chr_pos[i]=gene_onbar$chr[i]*3-3+0.5
}
gene_onbar$chr_pos=chr_pos
gene_onbar_AP2=subset(gene_onbar,color=="AP2")
gene_onbar_bHLH=subset(gene_onbar,color=="bHLH")
gene_onbar_MYB=subset(gene_onbar,color=="MYB")
gene_onbar_WRKY=subset(gene_onbar,color=="WRKY")
gene_onbar_NAC=subset(gene_onbar,color=="NAC")
gene_onbar_transfer=subset(gene_onbar,color=="transfer")
for (i in c(1:length(gene_onbar_AP2$chr))) {
  
  lines(x = c(gene_onbar_AP2$chr_pos[i],gene_onbar_AP2$chr_pos[i]+1),y = c(gene_onbar_AP2$position[i],gene_onbar_AP2$position[i]),
        col="red")
}

for (i in c(1:length(gene_onbar_bHLH$chr))) {
  lines(x = c(gene_onbar_bHLH$chr_pos[i],gene_onbar_bHLH$chr_pos[i]+1),y = c(gene_onbar_bHLH$position[i],gene_onbar_bHLH$position[i]),
        col="blue")
}

for (i in c(1:length(gene_onbar_MYB$chr))) {
  lines(x = c(gene_onbar_MYB$chr_pos[i],gene_onbar_MYB$chr_pos[i]+0.5),y = c(gene_onbar_MYB$position[i],gene_onbar_MYB$position[i]),
        col="green")
}

for (i in c(1:length(gene_onbar_WRKY$chr))) {
  lines(x = c(gene_onbar_WRKY$chr_pos[i],gene_onbar_WRKY$chr_pos[i]+1),y = c(gene_onbar_WRKY$position[i],gene_onbar_WRKY$position[i]),
        col="orange")
}

for (i in c(1:length(gene_onbar_NAC$chr))) {
  lines(x = c(gene_onbar_NAC$chr_pos[i],gene_onbar_NAC$chr_pos[i]+0.5),y = c(gene_onbar_NAC$position[i],gene_onbar_NAC$position[i]),
        col="black")
}
####
for (i in c(1:length(gene_onbar_transfer$chr))) {
  lines(x = c(gene_onbar_transfer$chr_pos[i],gene_onbar_transfer$chr_pos[i]+0.5),y = c(gene_onbar_transfer$position[i],gene_onbar_transfer$position[i]),
        col="orange")
}
####
#group

gene_group=read.table("groups position-329.txt",header = T)

chr_pos=c()

for (i in c(1:length(gene_group$chr))) {
  chr_pos[i]=gene_group$chr[i]*3-3+0.5
}
gene_group$chr_pos=chr_pos

for (i in c(1:length(gene_group$chr))) {
  
  lines(x = c(gene_group$chr_pos[i],gene_group$chr_pos[i]+1),y = c(gene_group$s[i],gene_group$s[i]),
        col="red")
}

####



lines(x=c(gene_onbar$chr_pos[55],gene_onbar$chr_pos[55]+0.5),y=
        c(gene_onbar$position[55],gene_onbar$position[55]),col="skyblue4",
      lwd=2)

lines(x=c(gene_onbar$chr_pos[142],gene_onbar$chr_pos[142]+0.5),y=
        c(gene_onbar$position[142],gene_onbar$position[142]),col="pink",
      lwd=2)



###
#know_gene=read.table("knowset_genes_in_taxus.position.txt",header = 1)
chr_pos=c()
for (i in c(1:length(know_gene$gene_id))) {
chr_pos[i]=know_gene$chr[i]*3-3+0.25
}
know_gene$chr_pos=chr_pos

#points(x=know_gene$chr_pos[1:14],y=know_gene$gene_pos[1:14],pch=1,cex=1,col="orange")
for (i in c(1:14)) {
lines(x=c(know_gene$chr_pos[i],know_gene$chr_pos[i]+0.5),y=c(know_gene$gene_pos[i],know_gene$gene_pos[i]),
      col="orange")
}
for (i in c(18:20)){
lines(x=c(know_gene$chr_pos[i],know_gene$chr_pos[i]+0.5),y=c(know_gene$gene_pos[i],know_gene$gene_pos[i]),
      col="blue")
}
#points(x=know_gene$chr_pos[15],y=know_gene$gene_pos[15],pch=1,cex=1,col="green")
lines(c(know_gene$chr_pos[15],know_gene$chr_pos[15]+0.5),
      y=c(know_gene$gene_pos[15],know_gene$gene_pos[15]),col="darkgreen")
#know_gene$gene_pos[17]=16093291
#points(x=know_gene$chr_pos[16:17],y=know_gene$gene_pos[16:17],pch=1,cex=1,col="red")
lines(c(know_gene$chr_pos[16],know_gene$chr_pos[16]+0.5),
      y=c(know_gene$gene_pos[16],know_gene$gene_pos[16]),col="green")
lines(c(know_gene$chr_pos[17],know_gene$chr_pos[17]+0.5),
      y=c(know_gene$gene_pos[17],know_gene$gene_pos[17]),col="green")

#plot known genes homologues position
#lines plot
homo=read.table("know_id_422_homogenes.position",header = 1)
chr_pos=c()
for (i in c(1:length(homo$ID))) {
  chr_pos[i]=as.numeric(homo$chr[i])*3-3+0.25
}
homo$chr_pos=chr_pos
for (i in c(1:length(homo$ID))) {
  lines(x=c(homo$chr_pos[i],homo$chr_pos[i]+0.5),y=c(homo$start[i],homo$start[i]),
        col="grey")
}



#P450 classification plot

tabe=read.table("P450_class.csv",sep='\t',header = 1)
tabe_fa=table(tabe$families)
tabe_fa=as.data.frame(tabe_fa)
tabe_fa=tabe_fa[order(tabe_fa$Freq),]
barplot(tabe_fa$Freq,names.arg = tabe_fa$Var1,cex.names = 0.5,border = F,las=2)



#heatmap based on the gene number

tabe_expr=read.table("../转录组部分/expr_ave.tab",header = 1,row.names = 1)
all_p450=read.table("taxus_p450.position",header = 1)
all_cyp725=taxus_p450$gene_id[which(taxus_p450$family=="CYP725")]
know_and_p450=c(as.vector(know_gene$gene_id),as.vector(all_cyp725))
know_and_p450_expr=tabe_expr[which(rownames(tabe_expr) %in% know_and_p450),]
pheatmap(log2(know_and_p450_expr+1),border=F,color = colorRampPalette(colors = c("darkblue","white","red"))(100),
        cellwidth = 8,cellheight = 2,fontsize_row = 4)

know_and_p450_expr[which(rownames(know_and_p450_expr)=="ctg7747_gene.2"),]
know_and_p450_expr=tabe_expr[which(rownames(tabe_expr) %in% know_and_p450),]

##element plot
library(xlsx)

ath_p450=read.xlsx2(file = "5species_2_allp450.tab.class.xlsx",sheetIndex = "Ath",header = 1)
ath_p450_freq=as.data.frame(table(ath_p450$family))
p450_hist=as.data.frame(row.names = c("others","CYP725","CYP716","CYP728"),x = c(282,0,3,0))
taxus_p450=read.xlsx2(file="5species_2_allp450.tab.class.xlsx",sheetIndex = "taxus",header = 1)
taxus_p450_freq=as.data.frame(table(taxus_p450$family))

p450_hist$taxus=c(592,83,14,29)
p450_hist$ginkgo=c(351,8,5,2)
colnames(p450_hist)=c("ath","taxus","ginkgo")
p450_hist$atr=c(219,0,8,3)
p450_hist$pta=c(783,1,25,0)
p450_hist$smo=c(400,0,20,0)
p450_hist=p450_hist[,-7]
p450_hist=t(p450_hist)
p450_hist=as.data.frame(p450_hist)
p450_hist$class=c(1,2,3,4,5,6)
a=c(p450_hist$others,p450_hist$CYP725,p450_hist$CYP716,
      p450_hist$CYP728)
b=c(p450_hist$class,p450_hist$class,p450_hist$class,
    p450_hist$class)
p450_hist_plot=data.frame(b,a)
library(ggplot2)
library(scales)
library(RColorBrewer)
ggplot(p450_hist_plot,aes(x=b,y=a,fill=a))+geom_bar(stat="identity")+labs(x="",y="Relative Abundance")+
  scale_fill_manual(values=c("pink","blue", "orange","red"))


#LTR insertion time #Taxus diversity rate 7.34573e-10

LTR=read.table("all.mod.pass.list",header =  1)
head(LTR$Insertion_Time)                    
h=hist(LTR$Insertion_Time*3,breaks = c(seq(from=0,to=50e+06,by = 4e+06)))# Gly 2.2x10e-9 Ang 1.8x10e-8;
h$density=h$counts/sum(h$counts)*100
plot(h,freq = F)
summary(LTR$Insertion_Time*8.181818)
length(LTR$Insertion_Time[LTR$Insertion_Time>2000000])
length(LTR$Insertion_Time[LTR$Insertion_Time>2000000])
LTR=read.table("all_v2.fa.pass.list")
hist(LTR$V12[LTR$V12>0])

LTR_d=read.table("all_second_ltrseq.ltr.family.diversity")
LTR_copia=LTR_d$V7[LTR_d$V5=="Copia"]
LTR_gypsy=LTR_d$V7[LTR_d$V5=="Gypsy"]
LTR_unknown=LTR_d$V7[LTR_d$V5=="unknown"]
qplot(V7/(2*100*7.34573e-10),data = LTR_d,geom = "histogram",bins=46,
      fill=V5,alpha=I(0.8),xlim = c(0,16e+7),position = position_dodge())

qplot(V7/(2*100*7.34573e-10),data = LTR_d,geom = "histogram",breaks=1,
      fill=V5,alpha=I(0.8),xlim = c(0,16e+7),position = position_dodge())

h1=hist(LTR_copia/(2*100*7.34573e-10),breaks = seq(from=0,to=16e+7,by=4e+6))
h2=hist(LTR_gypsy/(2*100*7.34573e-10),breaks = seq(from=0,to=16e+7,by=4e+6))
h3=hist(LTR_unknown/(2*100*7.34573e-10),breaks = seq(from=0,to=16e+7,by=4e+6))
sum(h3$counts[16:40])
ltr_c=data.frame(h1$counts[1:30],h2$counts[1:30],h3$counts[1:30],seq(1:30))
ltr_c=data.frame(h1$counts[1:30],h2$counts[1:30],h3$counts,seq(from=1,to=79,by=2))

colnames(ltr_c)=c("h1","h2","h3","c")
ltr_c=gather(ltr_c,variable,value,-c) 
ggplot(data=ltr_c,aes(x=c,y=value,fill=variable))+
  geom_col(position = position_dodge(0.81),width = 0.8)

ggplot(data=ltr_c,aes(x=c*10,y=value,fill=variable))+
  geom_col(position = "dodge",width =2)

#insert time = D/2xr

h=hist(LTR_d$V7/(2*100*7.34573e-10),
       breaks = c(seq(from=0,to=120e+06,by = 4e+06)))
h$density=h$counts/sum(h$counts)*100
plot(h,freq = F)
library(ggplot2)

ltr_t_o=gather(ltr_t_o,variable,value,-c)
ggplot(data=ltr_t_o,aes(x=c,y=value,fill=variable))+geom_col(position = position_dodge())

#3950
length(LTR$Insertion_Time[LTR$Insertion_Time<2000000])
#9395
#LTR_osa
LTR_osa=read.table("osa_genome.fa.mod.pass.list",header = 1)
h=hist(LTR_osa$Insertion_Time,breaks =c(seq(from=0,to=8e+06,by = 4e+06)))
h$density=h$counts/sum(h$counts)*100
plot(h,freq = F)
summary(LTR_osa$Insertion_Time)
#LTR_gbi
LTR_gbi=read.table("gbi_all.fa.pass.list",header = 1)

h=hist((LTR_gbi$Insertion_Time[LTR_gbi$TE_type=="LTR"])[LTR_gbi$Insertion_Time>0]*8*3,
       breaks = c(seq(from=0,to=240e+06,by = 4e+06)))# Gly Ang 1.8x10e-8;#ltr_retriver:1.3e-8;
h$density=h$counts/sum(h$counts)*100
plot(h,freq = F)
summary(LTR_gbi$Insertion_Time*8.181818*3)

table(LTR_gbi$Insertion_Time)


