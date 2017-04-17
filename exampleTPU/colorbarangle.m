function [ax,p] = colorbarangle(cmap,pos,dlabel,cax)

ax = axes('Position',pos);
p = pie(ones(1,360));shading flat
hold on;
tstrind = 2:2:length(p);
for i=1:numel(tstrind)
    if ismember(360-i,dlabel)
        set(p(tstrind(i)),'str',[num2str(360-i) '°']);
        plot([0 cosd(i+90)],[0 sind(i+90)],'k-');
    else
        delete(p(tstrind(i)));
    end
end

cmapA = cmap(1,:);
cmapB = cmap(end,:);

dcaxA = cax(1)-0;
dcaxB = 360-cax(2);
caxrange = cax(2)-cax(1);

Ncmap = size(cmap,1);

nPadA = round(Ncmap * dcaxA / caxrange);
nPadB = round(Ncmap * dcaxB / caxrange);

cmapuse = [repmat(cmapB,nPadB,1);flipud(cmap);repmat(cmapA,nPadA,1)];

colormap(ax,flipud(cmapuse))

end