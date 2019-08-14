
for k=1:1280
PSD(k,1:32)=avgpsddelta(1,1:32);
PSD(k,33:64)=avgpsdtheta(1,1:32);
PSD(k,65:96)=avgpsdlowalpha(1,1:32);
PSD(k,97:128)=avgpsdhighalpha(1,1:32);
PSD(k,129:160)=avgpsdalpha(1,1:32);
PSD(k,161:192)=avgpsdlowbeta(1,1:32);
PSD(k,193:224)=avgpsdmidbeta(1,1:32);
PSD(k,225:256)=avgpsdhighbeta(1,1:32);
PSD(k,257:288)=avgpsdbeta(1,1:32);
PSD(k,289:320)=avgpsdgamma(1,1:32);
end