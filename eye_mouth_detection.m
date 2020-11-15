I=imread('Image.JPG');
%TO DETECT MOUTH
MouthDetect=vision.CascadeObjectDetector('Mouth','MergeThreshold',16);
BB=step(MouthDetect,I);
figure,imshow(I);
hold on;
for i=1:size(BB,1)
    rectangle('Position',BB(i,:),'LineWidth',4,'LineStyle','-','EdgeColor','r');
end
%TO DETECT EYES
EyeDetect=vision.CascadeObjectDetector('EyePairBig');
BB=step(EyeDetect,I);
figure,imshow(I);
hold on;
for i=1:size(BB,1)
    rectangle('Position',BB,'LineWidth',4,'LineStyle','-','EdgeColor','b');
end