cosa=fopen('Untitled.m');
Q=textscan(cosa,'%s');
Q=Q{1};
tabla=['FFFFFFFF';'FFFFFFFF'];
contAux=1;
for iQ=1:length(Q)
    aux=Q{iQ};
    if ~strcmp(aux,'FFFFFFFF') && length(aux)==8 
        tabla(contAux,:)=aux;
        contAux=contAux+1;
    end
end



for i1=1:length(tabla)
    aux=tabla(i1,:);
    for i2=1:length(tabla)
        auxVec(i2)=strcmp(aux,tabla(i2,:));
    end
    frecs(i1)=sum(auxVec);
end

plot(frecs)
[maax,indice]=max(frecs);
codigo=tabla(indice,:)
legend(strcat('codigo=',codigo,' frec=',num2str(maax)));