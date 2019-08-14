psddelta=zeros(40960,259);
psdalpha=zeros(40960,259);
psdbeta=zeros(40960,259);
psdgamma=zeros(40960,259);
psdhighalpha=zeros(40960,259);
psdhighbeta=zeros(40960,259);
psdlowalpha=zeros(40960,259);
psdlowbeta=zeros(40960,259);
psdmidbeta=zeros(40960,259);
psdtheta=zeros(40960,259);
for i=1:40960
    
    ans=pwelch(delta(i,:),384,320);
    psddelta(i,1:257)=ans.';
    
    ans=pwelch(alpha(i,:),384,320);
    psdalpha(i,1:257)=ans.';
    
    ans=pwelch(beta(i,:),384,320);
    psdbeta(i,1:257)=ans.';
    
    ans=pwelch(gamma(i,:),384,320);
    psdgamma(i,1:257)=ans.';
    
    ans=pwelch(highalpha(i,:),384,320);
    psdhighalpha(i,1:257)=ans.';
    
    ans=pwelch(highbeta(i,:),384,320);
    psdhighbeta(i,1:257)=ans.';
    
    ans=pwelch(lowaplha(i,:),384,320);
    psdlowalpha(i,1:257)=ans.';
    
    ans=pwelch(lowbeta(i,:),384,320);
    psdlowbeta(i,1:257)=ans.';
    
    ans=pwelch(midbeta(i,:),384,320);
    psdmidbeta(i,1:257)=ans.';
    
    ans=pwelch(delta(i,:),384,320);
    psdtheta(i,1:257)=ans.';
    
    
end
csvwrite('psddelta.csv',psddelta);
csvwrite('psdaplha.csv',psdaplha);
csvwrite('psdbeta.csv',psdbeta);
csvwrite('psdgamma.csv',psdgamma);
csvwrite('psdhighalpha.csv',psdhighalpha);
csvwrite('psdhighbeta.csv',psdhighbeta);
csvwrite('psdlowalpha.csv',psdlowalpha);
csvwrite('psdlowbeta.csv',psdlowbeta);
csvwrite('psdmidbeta.csv',psdmidbeta);
csvwrite('psdtheta.csv',psdtheta);