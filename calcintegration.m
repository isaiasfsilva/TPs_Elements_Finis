function ret=calcintegration(fb,xg,xd,varargin)
        c=(xg+xd) / 2 ;
        y=feval(fb,[xg c xd], varargin{:});
        fxg=y(1);
        fc=y(2);
        fxd=y(3);
        ret = (xd-xg)*(fxg+4*fc+fxd)/6;
end;