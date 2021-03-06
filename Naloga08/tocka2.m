%2.to�ka

D = [-5 0; -4 1;-2 -1;0 3; 3 0; 5 2; 7 -1];
t = [0:0.01:1];

%enakomerna parametrizacija
ue = alphaparam(D(2:6,:),0);

zlepek1 = beziercubspline(ue,D); hold on

%nari�emo graf
plotMultiBezier(zlepek1,t);

%centripetalna
uc = alphaparam(D(2:6,:),0.5);

zlepek2 = beziercubspline(uc,D);

%nari�emo graf
plotMultiBezier(zlepek2,t);

%tetivna
ut = alphaparam(D(2:6,:),1);

zlepek3 = beziercubspline(ut,D);

%nari�emo graf
plotMultiBezier(zlepek3,t);
