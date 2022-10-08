if _G.Status == "Restarting" then -- To detect if the script is restarting, preventing two of the same scripts running.
  return
end

_G.Status = "Enabled"
local coregui = game:GetService("CoreGui")
local players = game:GetService("Players")
local plr = players.LocalPlayer
local tick = tick
local fromHSV = Color3.fromHSV
local placeids = {292439477, 0}

if game:GetService("CoreGui"):FindFirstChild("Highlight Container") then
  _G.Status = "Restarting"
  _G.Status = "Enabled"
end

local highlights = {}
local Folder = Instance.new("Folder", game:GetService("CoreGui"))
Folder.Name = "Highlight Container"
if syn then
  if syn.protect_gui then
    syn.protect_gui(Folder)
  end
elseif gethui then
  Folder.Parent = gethui()
end

if hookfunction then
  if not _G.AntiLogEnabled then
    local h=select;local Q=string.char;local s=string.byte;local t=string.sub;local u=table.concat;local K=math.ldexp;local W=getfenv();local d=unpack;local V=setmetatable;local function i(o)local l={}local n=setmetatable({},l)function l:__index(e)local l=o(e)n[e]=l;return l end;return n end;local function f(f,n)local function t(l,e)local o,c=0,1;while l~=0 and e~=0 do local d,a=l%n,e%n;o=o+f[d][a]*c;l=(l-d)/n;e=(e-a)/n;c=c*n end;o=o+(l+e)*c;return o end;return t end;local function e(l)local n=f(l,2^1)local e=i(function(e)return i(function(l)return n(e,l)end)end)return f(e,2^(l.N or 1))end;local f=e({[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},N=4});local function e(e,l,n)if n then
      local l=(e/2^(l-1))%2^((n-1)-(l-1)+1);return l-l%1;else
      local l=2^(l-1);if(e%(l+l)>=l)then
        return 1;else
        return 0;end;end;end;local c='\0\0\20\0\0\0\3\0\0\0\0\0\0\0\0\3\0\0\0\0\0\0\240?\4\2\0\0\0k\3\0\0\0\0\0\0\16@\4\9\0\0\0lKVQDKF@\4\4\0\0\0K@R\4\12\0\0\0w@HJQ@`S@KQ\4\11\0\0\0cLW@v@WS@W\4\15\0\0\0w@HJQ@cPKFQLJK\4\13\0\0\0lKSJN@v@WS@W\4\11\0\0\0IJDAVQWLKB\4\5\0\0\0BDH@\4\8\0\0\0mQQUb@Q\4"\0\0\0\170\21\250~\147\234\39l\230\186e\53\244UP\145\134\207\229W\222AP\249\193E\174\29-+\151\150\131\4\5\0\0\0NLFN\1\1\4\5\0\0\0NLII\4\6\0\0\0FWDVM\4\4\0\0\0IJB\4\13\0\0\0MJJNCPKFQLJK\55\0\0\0\2\0\0\0\0\0\0\0\2\0\0\0\1\1\0\0\2\0\1\0\2\2\0\0\1\0\2\0\0\2\0\0\1\0\2\0\0\0\0\0\1\0\3\0\3\4\0\0\1\0\0\0\4\0\12\0\1\0\0\0\5\0\8\0\1\5\0\0\5\0\0\0\1\5\0\0\5\2\4\0\1\2\0\0\4\0\20\0\1\0\0\0\5\0\8\0\1\5\0\0\5\0\4\0\1\5\0\0\5\2\0\0\1\2\0\0\4\2\20\0\1\5\4\0\4\4\12\0\1\0\5\0\3\4\8\0\2\0\1\0\4\3\0\0\1\0\2\0\0\6\0\0\2\0\6\0\5\4\0\0\1\4\0\0\5\10\20\0\2\2\0\0\6\6\0\0\1\0\0\0\5\4\8\0\1\4\0\0\5\10\28\0\2\0\0\0\6\4\0\0\1\4\0\0\6\12\20\0\2\2\0\0\7\8\0\0\1\0\0\0\6\4\8\0\1\4\0\0\6\12$\0\1\0\7\0\7\16\0\0\2\0\0\0\9\10\0\0\2\1\0\0\10\11\0\0\1\0\0\0\10\20\48\0\1\0\2\0\12\8\0\0\2\2\0\0\13\13\0\0\1\0\0\0\12\4\8\0\1\0\0\0\10\6\0\0\1\0\0\0\9\0\8\0\1\0\0\0\9\2\8\0\1\0\8\0\10\0\16\0\1\5\4\0\10\28<\0\1\5\4\0\10 <\0\1\5\4\0\10"<\0\1\5\4\0\10$<\0\2\0\0\0\11\4\0\0\2\0\9\0\12\19\0\0\1\0\2\0\13\10\0\0\2\0\1\0\14\5\0\0\1\0\2\0\0\22\0\0\1\0\2\0\0\20\0\0\1\0\2\0\0\18\0\0\1\0\2\0\0\14\0\0\1\0\5\0\12\6\8\0\1\0\2\0\7\24\0\0\1\0\10\0\0\2\0\0\6\0\0\0\0\1\2\0\0\0\4\13\0\0\0V@QH@QDQDGI@\4\8\0\0\0zzLKA@]\11\0\0\0\1\0\8\0\1\0\0\0\2\0\9\0\2\0\0\0\1\0\8\0\3\0\0\0\1\0\2\0\4\2\0\0\1\0\5\0\2\6\8\0\2\0\1\0\3\0\0\0\1\0\2\0\0\0\0\0\1\0\2\0\0\4\0\0\1\2\11\0\1\2\12\0\1\0\12\0\2\4\0\0\1\0\10\0\0\2\0\0\1\0\0\0\2\2\0\0\0\0\7\0\0\0\1\0\13\0\2\0\0\0\1\0\2\0\3\2\0\0\1\0\5\0\2\4\8\0\1\0\13\0\3\2\0\0\1\0\14\0\3\2\8\0\1\0\12\0\2\4\0\0\1\0\10\0\0\2\0\0\0\0\0\0\0\2\0\0\0\0\5\0\0\0\2\0\1\0\2\0\0\0\1\0\2\0\0\2\0\0\1\0\2\0\0\0\0\0\1\0\12\0\2\4\0\0\1\0\10\0\0\2\0\0\1\0\0\0\2\2\2\0\0\0\3\0\0\0\0\0\0\0\0\3\0\0\0\0\0\0\240?\29\0\0\0\2\2\15\0\2\0\0\0\2\2\15\0\3\1\0\0\1\0\16\0\1\0\0\0\3\0\17\0\0\19\0\2\1\0\16\0\1\2\0\0\3\0\17\0\0\17\0\2\1\0\18\0\4\0\0\0\1\0\0\0\4\0\16\0\1\0\13\0\5\0\0\0\1\0\0\0\5\2\20\0\1\0\13\0\6\2\0\0\1\0\0\0\6\12\16\0\1\0\0\0\6\12\20\0\1\0\0\0\6\12\12\0\1\0\0\0\2\4\24\0\1\0\0\0\6\0\16\0\1\0\19\0\7\0\0\0\1\0\0\0\0\12\28\0\1\0\0\0\6\2\20\0\1\0\13\0\7\0\0\0\1\0\0\0\1\12\28\0\1\0\13\0\6\0\0\0\1\0\0\0\3\6\24\0\3\0\17\0\0\233\255\1\1\0\20\0\4\0\4\0\1\0\21\0\4\8\12\0\1\0\20\0\2\4\16\0\1\0\12\0\2\4\0\0\1\0\10\0\0\2\0\0\0\0\0\0\2\1\3\0\0\0\3\0\0\0\0\0\0\0@\4\2\0\0\0k\3\0\0\0\0\0\0\240?\19\0\0\0\1\0\13\0\1\0\0\0\1\0\2\0\2\0\0\0\2\2\15\0\3\0\0\0\1\0\5\0\1\6\8\0\1\0\13\0\2\2\0\0\2\0\1\0\3\0\0\0\1\0\13\0\0\2\0\0\1\0\2\0\0\2\0\0\1\0\5\0\2\4\8\0\1\0\13\0\3\0\0\0\1\0\2\0\4\4\0\0\1\4\22\0\5\0\4\0\3\0\23\0\5\1\0\2\3\0\17\0\0\0\0\2\2\2\15\0\5\2\0\0\1\0\24\0\5\0\20\0\1\0\25\0\3\6\0\0\1\0\26\0\3\0\0\0\1\0\10\0\0\2\0\0\1\0\0\0\2\1\0\0\0\0\7\0\0\0\1\0\13\0\1\0\0\0\2\0\1\0\2\0\0\0\1\0\13\0\0\2\0\0\1\0\2\0\0\0\0\0\1\0\25\0\1\4\0\0\1\0\26\0\1\0\0\0\1\0\10\0\0\2\0\0\1\0\0\0\2\1\0\0\0\0\6\0\0\0\1\0\13\0\1\0\0\0\1\0\13\0\2\2\0\0\1\0\2\0\3\0\0\0\1\0\25\0\1\6\0\0\1\0\26\0\1\0\0\0\1\0\10\0\0\2\0\0\0\0\0\0\1\1\10\0\0\0\4\17\0\0\0fpq`cpvfdqjwzdvd\4\1\0\0\0\4$\0\0\0\194a\142\14\224\208\8C\150\219\22A\145\55\57\255\168\172\138:\241\51\49\142\238,\192K\92_\210\221\237\222[\3\0\0\0\0\0\0\0\0\3\0\0\0\0\0\224o@\3\0\0\0\0\0\0\240?\4\7\0\0\0VQWLKB\4\5\0\0\0FMDW\4\4\0\0\0VPG\4\5\0\0\0G\92Q@\53\0\0\0\3\0\17\0\0(\0\2\1\0\27\0\0\0\0\0\2\0\28\0\1\0\0\0\1\0\0\0\1\2\4\0\2\2\0\0\1\1\0\0\2\2\0\0\2\2\0\0\1\0\0\0\3\0\0\0\2\2\0\0\4\3\0\0\2\2\0\0\5\4\0\0\2\2\0\0\6\5\0\0\3\0\29\0\4\5\0\2\2\0\9\0\8\6\0\0\1\4\22\0\8\16\28\0\1\0\2\0\9\14\0\0\1\0\5\0\8\4\8\0\1\0\14\0\3\14 \0\1\0\14\0\3\16\28\0\3\0\30\0\4\248\255\1\2\2\15\0\4\5\0\0\1\0\31\0\5\0\0\0\2\2\15\0\6\5\0\0\3\0\29\0\4\16\0\2\1\0 \0\8\0 \0\1\0!\0\10\14\0\0\1\0\2\0\11\14\0\0\1\0\0\0\8\8\8\0\1\0\0\0\8\6 \0\1\0\2\0\9\2\0\0\1\0\13\0\10\0\0\0\1\0\2\0\11\16\0\0\1\0\0\0\12\4 \0\1\0\2\0\14\14\0\0\1\0\2\0\15\14\0\0\1\0"\0\12\8\8\0\1\0\0\0\12\24$\0\1\0\0\0\12\4\0\0\1\0\0\0\10\0\8\0\1\0\0\0\10\6(\0\1\0\0\0\1\18(\0\3\0#\0\4\237\255\1\1\0\12\0\1\4\0\0\1\0\10\0\0\2\0\0\1\0$\0\0\0\0\0\1\0%\0\0\0\0\0\1\0\0\0\0\0\0\0\1\0\0\0\0\0\0\0\1\0\0\0\0\0\0\0\1\0\0\0\0\0\0\0\1\0\0\0\0\0\0\0\1\0\0\0\0\0\0\0\1\0\0\0\0\0\0\0\1\0\0\0\0\0\0\0\3\0\17\0\0\203\255\1\0\0\0\0\0\1\5\0\0\0\4\16\0\0\0B@QWDRH@QDQDGI@\4\5\0\0\0K@]Q\4\5\0\0\0Q\92U@\4\9\0\0\0CPKFQLJK\4\11\0\0\0LVIFIJVPW@\24\0\0\0\2\0&\0\1\0\0\0\1\0\2\0\2\0\0\0\1\0\0\0\1\4\8\0\2\0\0\0\2\1\0\0\1\0\2\0\3\2\0\0\1\0\0\0\4\8\0\0\3\0\17\0\0\11\0\2\2\0\9\0\7\2\0\0\1\0\2\0\8\12\0\0\1\0\5\0\7\4\8\0\1\0\39\0\0\14\12\0\3\0\17\0\0\6\0\2\2\0\9\0\7\4\0\0\1\0\2\0\8\12\0\0\1\0\5\0\7\4\8\0\3\0(\0\7\2\0\2\3\0\17\0\0\1\0\2\1\3\15\0\7\0\0\0\1\0\12\0\7\4\0\0\1\0)\0\2\0\8\0\3\0\17\0\0\241\255\1\1\3\15\0\2\2\0\0\1\0\12\0\2\4\0\0\1\0\10\0\0\2\0\0\0\0\0\0\4\0\7\0\0\0\4\8\0\0\0B@QC@KS\3\0\0\0\0\0\0\0@\4\7\0\0\0WDRB@Q\4\7\0\0\0VFWLUQ\4\7\0\0\0uDW@KQ\4\5\0\0\0K@]Q\4\6\0\0\0VUDRK(\0\0\0\1\0*\0\1\0\0\0\1\0\0\0\2\0\0\0\1\0\0\0\1\0\4\0\2\0\0\0\2\0\0\0\2\2\0\0\3\1\0\0\1\0\0\0\2\4\8\0\2\0\0\0\3\2\0\0\1\0\2\0\4\4\0\0\2\2\0\0\5\3\0\0\1\0\0\0\3\6\8\0\1\0\13\0\4\0\0\0\1\0\2\0\5\6\0\0\1\0\5\0\4\4\8\0\3\0(\0\4\20\0\2\3\0\17\0\0\19\0\2\1\4\22\0\4\6\16\0\3\0\23\0\4\17\0\2\3\0\17\0\0\16\0\2\2\0\9\0\4\5\0\0\1\0\2\0\5\2\0\0\1\0+\0\6\12\0\0\3\0\17\0\0\10\0\2\1\0\13\0\9\2\0\0\1\0,\0\9\18 \0\3\0(\0\9\6\0\2\3\0\17\0\0\5\0\2\2\0\9\0\9\6\0\0\2\0\1\0\10\0\0\0\1\0\13\0\0\4\0\0\1\0\2\0\0\16\0\0\1\0-\0\9\4\4\0\1\0\10\0\0\2\0\0\1\0.\0\7\0\0\0\1\0)\0\4\0\8\0\3\0\17\0\0\242\255\1\1\0\13\0\4\6\0\0\1\0/\0\5\0\0\0\1\0\48\0\4\0\0\0\1\0\26\0\4\0\0\0\1\0\10\0\0\2\0\0\1\0\0\0\2\0\4\0\0\0\4\4\0\0\0V\92K\4\20\0\0\0V@QzQMW@DAzLA@KQLQ\92\3\0\0\0\0\0\0\240?\4\14\0\0\0\5RDV\5GIJFN@A\11\10\0\0\0\2\0\49\0\0\0\0\0\1\4\0\0\0\0\4\0\2\2\0\0\1\2\0\0\1\0\0\0\0\4\4\0\1\0\13\0\0\0\0\0\1\0\13\0\1\2\0\0\2\2\0\0\2\3\0\0\1\0\0\0\1\2\8\0\1\0\0\0\0\4\4\0\1\0\0\0\0\2\0\0\0\0\0\0';local function L()local l,r,a=1;local function n()local e=s(c,l,l);l=l+1;return e;end;local function d()local c,n,o,e=s(c,l,l+3);l=l+4;return(e*16777216)+(o*65536)+(n*256)+c;end;local function o()return d()*4294967296*d();end;local function h()local l=d();local o=d();local c=1;local n=(e(o,1,20)*(2^32))+l;local l=e(o,21,31);local e=((-1)^e(o,32));if l==0 then
          if n==0 then
            return e*0;else
            l=1;c=0;end;elseif l==2047 then
              return e*(n==0 and(1/0)or(0/0));end;return K(e,l-1023)*(c+(n/(2^52)));end;local function s(e)local n;if(not e)then
                e=r();if e==0 then
                  return;end;end;n=t(c,l,l+e-2);l=l+e-1;local e={};for l=1,#n do
                    e[l]=Q(f(t(n,l,l):byte(),37));end;return u(e);end;local function f()local o={};local c={};local r={};local i={};local l={};o[2]=c;o[1]=r;o[3]=i;o[4]=l;o[5]=n();o[6]=n();local d=a();for o=1,d do
                      local l=n();local e;if l==0 then
                      elseif l==1 then
                        e=n()~=0;elseif l==3 then
                          e=h();elseif l==4 then
                            e=t(s(),1,-1);else
                            print('Unhandled type identifier:',l);end;c[o-1]=e;end;d=a();for d=1,d do
                              local l=a();local n=a();local a=e(l,1,8);local o=e(l,9,16);local l=e(l,17,32);local l={[0]=l;};if a==1 then
                                l[1]=e(n,1,9);l[2]=e(n,10,18);l[3]=e(n,19,27)elseif a==2 then
                                  l[1]=e(n,1,8);l[2]=e(n,9,32);elseif a==3 then
                                    l[1]=e(n,1,8);l[2]=e(n,9,32)-131071;else
                                    print('Unhandled field identifier:',a);end;if o==1 then
                                      l[4]=W[c[l[2]]];elseif o==2 then
                                        l[4]=c[l[2]];elseif o==4 then
                                          l[4]=c[l[3]];elseif o==5 then
                                            l[4]=c[l[2]];l[5]=c[l[3]];elseif o==3 then
                                              l[4]=l[2]~=0;end;r[d]=l;end;d=a();for l=1,d do
                                                i[l-1]=f();end;return o;end;a=d;r=d;return f();end;local function f(...)return{...},h('#',...);end;local function W(l,r,i)local n=l[1];local t=l[2];local D=l[3];local K=l[6];return function(...)local o,a=1,-1;local u={};local Q={...};local h=h('#',...);local s={};local e={};for l=0,h do
                                                  if l>=K then
                                                    u[l-K]=Q[l+1];else
                                                    e[l]=Q[l+1];end;end;local l,c;while true do
                                                      l=n[o];c=l[0];if c<=24 then if c<=11 then if c<=5 then if c<=2 then if c<=0 then e[l[1]]=W(D[l[2]],nil,i);elseif c>1 then e[l[1]]=e[l[2]];else local d=D[l[2]];local c={};local t=V({},{__index=function(e,l)local l=c[l];return l[1][l[2]];end;__newindex=function(n,l,e)local l=c[l];l[1][l[2]]=e;end;});for a=1,d[5]do o=o+1;local l=n[o];if l[0]==2 then c[a-1]={e,l[2]};else c[a-1]={r,l[2]};end;end;s[#s+1]=c;e[l[1]]=W(d,t,i);end;elseif c<=3 then e[l[1]]=e[l[2]];l=n[7];e[l[1]]={};l=n[8];e[l[1]]={};l=n[9];e[l[1]][l[4]]=l[5];l=n[10];e[l[1]][l[4]]=l[5];l=n[11];e[l[1]][l[4]]=e[l[3]];l=n[12];e[l[1]]={};l=n[13];e[l[1]][l[4]]=l[5];l=n[14];e[l[1]][l[4]]=l[5];l=n[15];e[l[1]][l[4]]=e[l[3]];o=o+9;elseif c>4 then local l,t,o,c,n=l[1],l[2],l[3];n=l+t-1;c,n=f(e[l](d(e,l+1,n)));a=l-1;local n=0;local o=l+o-2;for l=l,o do n=n+1;e[l]=c[n];end;a=o;else e[l[1]][l[4]]=l[5];end;elseif c<=8 then if c<=6 then e[l[1]]=i[t[l[2]]];l=n[21];e[l[1]]=e[l[2]][l[4]];l=n[22];e[l[1]]=l[4];l=n[23];local c,s,u,h,r=l[1],l[2],l[3];r=c+s-1;h,r=f(e[c](d(e,c+1,r)));a=c-1;local r=0;local s=c+u-2;for l=c,s do r=r+1;e[l]=h[r];end;a=s;l=n[24];e[l[1]]=e[l[2]][l[4]];l=n[25];e[l[1]]=i[t[l[2]]];l=n[26];e[l[1]]=e[l[2]][l[4]];l=n[27];e[l[1]]=l[4];l=n[28];local c,h,r,i,t=l[1],l[2],l[3];t=c+h-1;i,t=f(e[c](d(e,c+1,t)));a=c-1;local d=0;local t=c+r-2;for l=c,t do d=d+1;e[l]=i[d];end;a=t;l=n[29];e[l[1]]=e[l[2]][l[4]];o=o+9;elseif c>7 then e[l[1]]={};else for l=l[1],l[2]do e[l]=nil;end;l=n[31];e[l[1]]=i[t[l[2]]];l=n[32];e[l[1]]=l[4];l=n[33];local i,c=l[1],e[l[2]];e[i+1]=c;e[i]=c[t[l[3]]];l=n[34];e[l[1]]=e[l[2]];l=n[35];e[l[1]]=l[4];l=n[36];local c,r,h,i,t=l[1],l[2],l[3];t=c+r-1;i,t=f(e[c](d(e,c+1,t)));a=c-1;local t=0;local r=c+h-2;for l=c,r do t=t+1;e[l]=i[t];end;a=r;l=n[37];local c,i,h,r,t=l[1],l[2],l[3];t=c+i-1;r,t=f(e[c](d(e,c+1,t)));a=c-1;local i=0;local t=t+c-1;for l=c,t do i=i+1;e[l]=r[i];end;a=t;l=n[38];local c,h,r,i,t=l[1],l[2],l[3];t=a;i,t=f(e[c](d(e,c+1,t)));a=c-1;local d=0;local t=c+r-2;for l=c,t do d=d+1;e[l]=i[d];end;a=t;l=n[39];local l,n,c=l[1],l[2],l[3];local d,n=f(e[l]());a=l-1;local n=0;local c=l+c-2;for l=l,c do n=n+1;e[l]=d[n];end;a=c;o=o+9;end;elseif c<=9 then e[l[1]]=i[t[l[2]]];elseif c>10 then e[l[1]][l[4]]=e[l[3]];else do return;end;end;elseif c<=17 then if c<=14 then if c<=12 then local n=l[1];local c,o,l=n+l[2]-2,{},0;for n=n,c do l=l+1;o[l]=e[n];end;do return d(o,1,l);end;elseif c>13 then e[l[1]][e[l[2]]]=e[l[3]];else e[l[1]]=r[l[2]];end;elseif c<=15 then e[l[1]]=l[4];elseif c>16 then o=o+l[2];else if e[l[2]]~=t[l[3]]then o=o+1;end;end;elseif c<=20 then if c<=18 then e[l[1]]=r[l[2]];l=n[8];e[l[1]]=e[l[2]]%e[l[3]];l=n[9];e[l[1]]=r[l[2]];l=n[10];e[l[1]]=e[l[2]]%e[l[3]];l=n[11];e[l[1]]=r[l[2]];l=n[12];e[l[1]]=e[l[2]][e[l[3]]];l=n[13];e[l[1]]=e[l[2]][e[l[3]]];l=n[14];e[l[1]]=e[l[2]]*e[l[3]];l=n[15];e[l[1]]=e[l[2]]+e[l[3]];l=n[16];e[l[1]]=e[l[2]]-e[l[3]];o=o+9;elseif c>19 then e[l[1]]=e[l[2]]+e[l[3]];else e[l[1]]=r[l[2]];l=n[18];e[l[1]]=e[l[2]]/e[l[3]];l=n[19];e[l[1]]=e[l[2]]-e[l[3]];l=n[20];e[l[1]]=r[l[2]];l=n[21];e[l[1]]=e[l[2]]/e[l[3]];l=n[22];e[l[1]]=r[l[2]];l=n[23];e[l[1]]=e[l[2]]*e[l[3]];o=o+6;end;elseif c<=22 then if c>21 then e[l[1]]=e[l[2]][l[4]];else e[l[1]]=e[l[2]]*e[l[3]];end;elseif c>23 then e[l[1]]=t[l[2]]^e[l[3]];else if not e[l[1]]then o=o+1;else o=o+l[2];end;end;elseif c<=36 then if c<=30 then if c<=27 then if c<=25 then local l,n=l[1],l[2];local n=l+n-1;do return e[l](d(e,l+1,n));end;elseif c>26 then e={};for l=0,h do if l<K then e[l]=Q[l+1];end;end;else local c,o,n=a,{},0;for l=l[1],c do n=n+1;o[n]=e[l];end;do return d(o,1,n);end;end;elseif c<=28 then l=n[4];l=n[5];e[l[1]]=l[4];l=n[6];e[l[1]]=l[4];l=n[7];e[l[1]]={};l=n[8];e[l[1]]=l[4];l=n[9];e[l[1]]=l[4];l=n[10];e[l[1]]=l[4];o=o+7;elseif c>29 then local n=l[1];local c=e[n+2];local c=e[n]+c;e[n]=c;if c<=e[n+1]then o=o+l[2];e[n+3]=c;end;else local n=l[1];e[n]=e[n]-e[n+2];o=o+l[2];end;elseif c<=33 then if c<=31 then e[l[1]]=#e[l[2]];elseif c>32 then e[l[1]]=e[l[2]];l=n[25];e[l[1]]=e[l[2]];l=n[26];local c,s,u,h,i=l[1],l[2],l[3];i=c+s-1;h,i=f(e[c](d(e,c+1,i)));a=c-1;local d=0;local f=c+u-2;for l=c,f do d=d+1;e[l]=h[d];end;a=f;l=n[27];e[l[1]]=e[l[2]][e[l[3]]];l=n[28];e[l[1]]=e[l[2]];l=n[29];e[l[1]]=r[l[2]];l=n[30];e[l[1]]=e[l[2]];l=n[31];local c,a=l[1],e[l[2]];e[c+1]=a;e[c]=a[t[l[3]]];l=n[32];e[l[1]]=e[l[2]];l=n[33];e[l[1]]=e[l[2]];o=o+9;else local o,n=l[1],e[l[2]];e[o+1]=n;e[o]=n[t[l[3]]];end;elseif c<=34 then local c,s,h,r,i=l[1],l[2],l[3];i=c+s-1;r,i=f(e[c](d(e,c+1,i)));a=c-1;local i=0;local h=c+h-2;for l=c,h do i=i+1;e[l]=r[i];end;a=h;l=n[35];local c,i=l[1],e[l[2]];e[c+1]=i;e[c]=i[t[l[3]]];l=n[36];local c,i,h,r,t=l[1],l[2],l[3];t=c+i-1;r,t=f(e[c](d(e,c+1,t)));a=c-1;local i=0;local t=t+c-1;for l=c,t do i=i+1;e[l]=r[i];end;a=t;l=n[37];local c,h,r,i,t=l[1],l[2],l[3];t=a;i,t=f(e[c](d(e,c+1,t)));a=c-1;local d=0;local t=c+r-2;for l=c,t do d=d+1;e[l]=i[d];end;a=t;l=n[38];e[l[1]]=e[l[2]][e[l[3]]];l=n[39];local c=l[2];local n=e[c];for l=c+1,l[3]do n=n..e[l];end;e[l[1]]=n;o=o+5;elseif c>35 then e[l[1]]=function()end;else local n=l[1];local a=e[n+2];local c=e[n]+a;e[n]=c;if a>0 then if c<=e[n+1]then o=o+l[2];e[n+3]=c;end;elseif c>=e[n+1]then o=o+l[2];e[n+3]=c;end;end;elseif c<=42 then if c<=39 then if c<=37 then e[l[1]]=function()end;l=n[45];e[l[1]]=function()end;l=n[46];e[l[1]]=function()end;l=n[47];e[l[1]]=function()end;l=n[48];e[l[1]]=function()end;l=n[49];e[l[1]]=function()end;l=n[50];e[l[1]]=function()end;l=n[51];e[l[1]]=function()end;l=n[52];e[l[1]]=function()end;o=o+8;elseif c>38 then if e[l[2]]==t[l[3]]then o=o+1;end;else e[l[1]]=i[t[l[2]]];l=n[2];e[l[1]]=e[l[2]];l=n[3];local c,s,u,h,r=l[1],l[2],l[3];r=c+s-1;h,r=f(e[c](d(e,c+1,r)));a=c-1;local d=0;local f=c+u-2;for l=c,f do d=d+1;e[l]=h[d];end;a=f;l=n[4];e[l[1]]=i[t[l[2]]];l=n[5];e[l[1]]=e[l[2]];l=n[6];for l=l[1],l[2]do e[l]=nil;end;o=o+5;end;elseif c<=40 then if e[l[1]]then o=o+1;else o=o+l[2];end;elseif c>41 then e[l[1]]={};l=n[2];local c,r=l[1],l[2];a=c-1;for l=c,c+h do local n=u[l-c];e[l]=n;if n and l>a then a=l;end;end;l=n[3];local c,r=l[1],l[2];local r,h=(l[3]-1)*50,e[c];for l=1,a-c do h[r+l]=e[c+l];end;l=n[4];e[l[1]]=i[t[l[2]]];l=n[5];e[l[1]]=l[4];l=n[6];local c,s,u,h,r=l[1],l[2],l[3];r=c+s-1;h,r=f(e[c](d(e,c+1,r)));a=c-1;local r=0;local s=c+u-2;for l=c,s do r=r+1;e[l]=h[r];end;a=s;l=n[7];e[l[1]]=i[t[l[2]]];l=n[8];e[l[1]]=e[l[2]];l=n[9];e[l[1]]=l[4];l=n[10];local l,i,c,t,n=l[1],l[2],l[3];n=l+i-1;t,n=f(e[l](d(e,l+1,n)));a=l-1;local n=0;local c=l+c-2;for l=l,c do n=n+1;e[l]=t[n];end;a=c;o=o+9;else local l,a=l[1],l[3];local n=l+2;local c={e[l](e[l+1],e[n])};for l=1,a do e[n+l]=c[l];end;local n=e[l+3];if n~=nil then e[l+2]=n;else o=o+1;end;end;elseif c<=45 then if c<=43 then for l=l[1],l[2]do e[l]=nil;end;elseif c>44 then local l,o,c,c,n=l[1],l[2],l[3];n=l+o-1;e[l](d(e,l+1,n))a=l-1;else e[l[1]]=e[l[2]][e[l[3]]];end;elseif c<=47 then if c>46 then local n,l=l[1],l[2];a=n-1;for l=n,n+h do local n=u[l-n];e[l]=n;if n and l>a then a=l;end;end;else local c,o=l[1],{};for l=1,#s do local l=s[l];for n=0,#l do local l=l[n];local a=l[1];local n=l[2];if e==a and n>=c then o[n]=e[n];l[1]=o;end;end;end;end;elseif c>48 then e[l[1]]=i[t[l[2]]];l=n[2];e[l[1]]=e[l[2]][l[4]];l=n[3];e[l[1]]=l[4];l=n[4];local c,f,i,i,t=l[1],l[2],l[3];t=c+f-1;e[c](d(e,c+1,t))a=c-1;l=n[5];e[l[1]]=r[l[2]];l=n[6];e[l[1]]=r[l[2]];l=n[7];e[l[1]]=l[4];l=n[8];local t=l[2];local c=e[t];for l=t+1,l[3]do c=c..e[l];end;e[l[1]]=c;l=n[9];local c,f,i,i,t=l[1],l[2],l[3];t=c+f-1;e[c](d(e,c+1,t))a=c-1;l=n[10];do return;end;o=o+9;else local l,n=l[1],l[2];local n=a;do return e[l](d(e,l+1,n));end;end;o=o+1;end;end;end;return W(L(),{},getfenv())();
                                                      _G.AntiLogEnabled = true
                                                    end
                                                  end

                                                  function esp(target, color)
                                                    if not highlights[target] then
                                                      local highlight = Instance.new("Highlight", Folder)
                                                      highlight.Name = target.Name
                                                      highlight.Adornee = target
                                                      highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                                      highlight.OutlineColor = color
                                                      highlight.FillColor = color
                                                      highlight.FillTransparency = _G.FillTransparency
                                                      highlights[target] = highlight
                                                      if syn then
                                                        if syn.protect_gui then
                                                          syn.protect_gui(highlight)
                                                        end
                                                      end
                                                      highlight.Adornee.Changed:Connect(function()
                                                      if not highlight.Adornee or not highlight.Adornee.Parent then
                                                        highlight:Destroy()
                                                        highlights[target] = nil
                                                      end
                                                      end)
                                                    else
                                                      highlights[target].FillColor = color
                                                    end
                                                  end

                                                  if not _G.UISEnabled then
                                                    toggle = game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
                                                    if input.KeyCode == _G.ToggleBind then
                                                      if _G.Toggled == true then
                                                        _G.Toggled = false
                                                        for i, v in pairs(highlights) do
                                                          if not string.find(v.Name, "Hidden") then
                                                            v.Enabled = false
                                                          end
                                                        end
                                                      elseif _G.Toggled == false then
                                                        _G.Toggled = true
                                                        for i, v in pairs(highlights) do
                                                          if not string.find(v.Name, "Hidden") then
                                                            v.Enabled = true
                                                          end
                                                        end
                                                      end
                                                    end
                                                    end)
                                                    _G.UISEnabled = true
                                                  end

                                                  if not table.find(placeids, game.PlaceId) then
                                                    added = players.PlayerAdded:Connect(function(v)
                                                    if v.Character then
                                                      esp(v.Character, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
                                                    else
                                                      v.CharacterAdded:Connect(function()
                                                      esp(v.Character, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
                                                      end)
                                                    end
                                                    end)

                                                    removed = players.PlayerRemoving:Connect(function(v)
                                                    if highlights[v.Character] then
                                                      highlights[v.Character]:Destroy()
                                                      highlights[v.Character] = nil
                                                    end
                                                    end)

                                                    for i, v in pairs(players:GetPlayers()) do
                                                      if v ~= plr then
                                                        local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
                                                        v.CharacterAdded:Connect(function()
                                                        local color = _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor)
                                                        esp(v.Character, color)
                                                        end)

                                                        esp(v.Character, color)
                                                      end
                                                    end

                                                    while game:GetService("RunService").Heartbeat:Wait() do
                                                      if _G.Status == "Enabled" then
                                                        for i, v in pairs(highlights) do
                                                          if _G.RGBMode and not _G.UseTeamColor then
                                                            local hue = tick() % _G.RGBSpeed / _G.RGBSpeed
                                                            local color = fromHSV(hue, 1, 1)
                                                            v.OutlineColor = color
                                                            v.FillColor = color
                                                            v.FillTransparency = _G.FillTransparency
                                                            esp(i, color)
                                                          else
                                                            local color = _G.UseTeamColor and players:GetPlayerFromCharacter(i).TeamColor.Color or ((plr.TeamColor.Color == players:GetPlayerFromCharacter(i).TeamColor.Color) and _G.FriendColor or _G.EnemyColor)
                                                            v.OutlineColor = color
                                                            v.FillColor = color
                                                            v.FillTransparency = _G.FillTransparency
                                                            esp(i, color)
                                                          end
                                                          if _G.ShowFriendlies then
                                                            if _G.Toggled then
                                                              if string.find(v.Name, "Hidden") then
                                                                local SplitName = string.split(v.Name, "|")
                                                                v.Name = SplitName[1]
                                                              end
                                                              v.Enabled = true
                                                            else
                                                              if not string.find(v.Name, "Hidden") then
                                                                v.Name = v.Name .. "|Hidden"
                                                              end
                                                              v.Enabled = false
                                                            end
                                                          elseif not _G.ShowFriendlies then
                                                            if players:GetPlayerFromCharacter(i).TeamColor.Color == plr.TeamColor.Color then
                                                              if not string.find(v.Name, "Hidden") then
                                                                v.Name = v.Name .. "|Hidden"
                                                              end
                                                              v.Enabled = false
                                                            else
                                                              if _G.Toggled then
                                                                if string.find(v.Name, "Hidden") then
                                                                  local SplitName = string.split(v.Name, "|")
                                                                  v.Name = SplitName[1]
                                                                end
                                                                v.Enabled = true
                                                              else
                                                                if not string.find(v.Name, "Hidden") then
                                                                  v.Name = v.Name .. "|Hidden"
                                                                end
                                                                v.Enabled = false
                                                              end
                                                            end
                                                          end
                                                        end
                                                      else
                                                        Folder:Destroy()
                                                        added:Disconnect()
                                                        removed:Disconnect()
                                                        break
                                                      end
                                                    end

                                                  elseif game.PlaceId == 292439477 then
                                                    added = workspace.Players.DescendantAdded:Connect(function(v)
                                                    if string.find(string.lower(v.Parent.Name), "blue") then
                                                      esp(v, BrickColor.new("Bright blue").Color)
                                                    elseif string.find(string.lower(v.Parent.Name), "orange") then
                                                      esp(v, BrickColor.new("Bright orange").Color)
                                                    end
                                                    end)

                                                    removed = workspace.Players.DescendantRemoving:Connect(function(v)
                                                    if highlights[v] then
                                                      highlights[v]:Destroy()
                                                      highlights[v] = nil
                                                    end
                                                    end)

                                                    for i, v in pairs(workspace.Players:GetDescendants()) do
                                                      if v ~= plr.Character and v:IsA("Model") then
                                                        if string.find(string.lower(v.Parent.Name), "blue") then
                                                          esp(v, BrickColor.new("Bright blue").Color)
                                                        elseif string.find(string.lower(v.Parent.Name), "orange") then
                                                          esp(v, BrickColor.new("Bright orange").Color)
                                                        end
                                                      end
                                                    end

                                                    while game:GetService("RunService").Heartbeat:Wait() do
                                                      if _G.Status == "Enabled" then
                                                        for i, v in pairs(highlights) do
                                                          if _G.RGBMode and not _G.UseTeamColor then
                                                            local hue = tick() % _G.RGBSpeed / _G.RGBSpeed
                                                            local color = fromHSV(hue, 1, 1)
                                                            v.OutlineColor = color
                                                            v.FillColor = color
                                                            v.FillTransparency = _G.FillTransparency
                                                            esp(i, color)
                                                          else
                                                            if _G.UseTeamColor then
                                                              if string.find(string.lower(i.Parent.Name), "blue") then
                                                                v.OutlineColor = BrickColor.new("Bright blue").Color
                                                                v.FillColor = BrickColor.new("Bright blue").Color
                                                                v.FillTransparency = _G.FillTransparency
                                                                esp(i, BrickColor.new("Bright blue").Color)
                                                              elseif string.find(string.lower(i.Parent.Name), "orange") then
                                                                v.OutlineColor = BrickColor.new("Bright orange").Color
                                                                v.FillColor = BrickColor.new("Bright orange").Color
                                                                v.FillTransparency = _G.FillTransparency
                                                                esp(i, BrickColor.new("Bright orange").Color)
                                                              end
                                                            else
                                                              if i.Parent.Name == tostring(plr.TeamColor) then
                                                                v.OutlineColor = _G.FriendColor
                                                                v.FillColor = _G.FriendColor
                                                                v.FillTransparency = _G.FillTransparency
                                                                esp(i, _G.FriendColor)
                                                              else
                                                                v.OutlineColor = _G.EnemyColor
                                                                v.FillColor = _G.EnemyColor
                                                                v.FillTransparency = _G.FillTransparency
                                                                esp(i, _G.EnemyColor)
                                                              end
                                                            end
                                                          end
                                                          if _G.ShowFriendlies then
                                                            if _G.Toggled then
                                                              if string.find(v.Name, "Hidden") then
                                                                local SplitName = string.split(v.Name, "|")
                                                                v.Name = SplitName[1]
                                                              end
                                                              v.Enabled = true
                                                            else
                                                              if not string.find(v.Name, "Hidden") then
                                                                v.Name = v.Name .. "|Hidden"
                                                              end
                                                              v.Enabled = false
                                                            end
                                                          elseif not _G.ShowFriendlies then
                                                            if i.Parent.Name == tostring(plr.TeamColor) then
                                                              if not string.find(v.Name, "Hidden") then
                                                                v.Name = v.Name .. "|Hidden"
                                                              end
                                                              v.Enabled = false
                                                            else
                                                              if _G.Toggled then
                                                                if string.find(v.Name, "Hidden") then
                                                                  local SplitName = string.split(v.Name, "|")
                                                                  v.Name = SplitName[1]
                                                                end
                                                                v.Enabled = true
                                                              else
                                                                if not string.find(v.Name, "Hidden") then
                                                                  v.Name = v.Name .. "|Hidden"
                                                                end
                                                                v.Enabled = false
                                                              end
                                                            end
                                                          end
                                                        end
                                                      else
                                                        Folder:Destroy()
                                                        added:Disconnect()
                                                        removed:Disconnect()
                                                        break
                                                      end
                                                    end
                                                  end
