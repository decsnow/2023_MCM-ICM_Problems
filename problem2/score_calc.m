score=(1:359);
for i=1:359
    score(i)=0;
    for j=1:5
        for k=1:26
if letters(i,j)==lut1(k,1)
    score(i)=score(i)+double(lut1(k,2));
end
        end
    end
end
