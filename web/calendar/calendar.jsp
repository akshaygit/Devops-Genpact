<html>
<head>
<title>FlatCalendarXP 9.8.285 Lite Edition - Copyright 2003-2007 Idemfactor Solutions, Inc.</title>
<script id='dynaScript' type='text/javascript'></script>
<script type='text/javascript'>
// WARNING: Do NOT make any modification to this file, nor should you use this file in any commercial website or product.
// Using it without a proper license will be prosecuted by law.
var gd=new Date(), gToday=[gd.getFullYear(),gd.getMonth()+1,gd.getDate()];
var ua=navigator.userAgent.toLowerCase();
var KO=ua.match(/konqueror\/(\d+)/),KO3=KO&&KO[1]==3,SA=ua.match(/safari\/(\d+)/),SA1=SA&&SA[1]<86; KO=!!KO; SA=!!SA;
var MAC=/mac/.test(ua),OP=!!self.opera,WEBTV=/webtv/.test(ua),IE=/msie/.test(ua)&&!OP&&!WEBTV&&!SA&&!KO,GK=/gecko/.test(ua),OP8=/opera 8/.test(ua)&&OP;
var NN4=IE4=NS6=false,IE5=IE&&![].push&&!IE4;
var gfSelf=fGetById(parent.document,self.name);
var gTheme=self.name.split(":");
var gCurMonth=eval(gTheme[0]); gCurMonth=fCalibrate(gCurMonth[0],gCurMonth[1]);
var gContainer=parent,gDays=[31,31,28,31,30,31,30,31,31,30,31,30,31],g445=[1,5,9,14,18,22,27,31,35,40,44,48];
var fOnResize,fRepaint,fHoliday,fOnChange,fAfterSelected,fOnDrag,gcOtherDayBG,fOnWeekClick,fIsSelected,fParseInput,fFormatInput,fOnDoWClick,fOnload;
var __agenda=[], popkey=["Lite"], flatkey=["Lite"], __stub=[], _charset=gTheme[5]?" charset='"+gTheme[5]+"' ":"";
var MILLIDAY=86400000, giInitDelay=200, _lineThru=true, _noBound=false, _mcafee=false, _preferOOR=true, gbHideCalMiddle=false, _cacheOther=true, gb445=false;
if (![].push) Array.prototype.push=function () {
	for (var i=0; i<arguments.length; i++)
		this[this.length]=arguments[i];
	return this.length;
}

function varDate() {
	alert("Missing or invalid licence for FlatCalendarXP!\nPlease make sure the licence file is in the right place.");
}

function fCalibrate(y,m) {
	if (m<1) { y--; m+=12; }
	else if (m>12) { y++; m-=12; }
	return [y,m];
}

function fGetById(doc, id) {
	return doc.getElementById(id);
}

function fLoadScript(url) {
	if (!(IE4||IE&&MAC)) fGetById(document, "dynaScript").src=url;
}

function fFilterNull(str) {
	return str==null||str=="null"?null:str;
}

function fAddEvent(y,m,d,message,action,bgcolor,fgcolor,bgimg,boxit,html,etc) {
	var ag=gbShareAgenda?eval(gsAgShared):__agenda;
	ag[y+"-"+m+"-"+d]=[message,fFilterNull(action),fFilterNull(bgcolor),fFilterNull(fgcolor),fFilterNull(bgimg),fFilterNull(boxit),fFilterNull(html),etc];
}

function fGetEvent(y,m,d) {
	var ag=gbShareAgenda?eval(gsAgShared):__agenda, id=y+"-"+m+"-"+d;
	return ag[id]?ag[id].slice(0):null;
}

function fRemoveEvent(y,m,d) {
	var ag=gbShareAgenda?eval(gsAgShared):__agenda;
	ag[y+"-"+m+"-"+d]=null;
}

function fWeekOffset(dow) {
	return dow<=3?1:0;
}

function fGetDays(y) {
	gDays[2]=y%4==0&&y%100!=0||y%400==0?29:28;
	return gDays;
}

document.write("<scr"+"ipt type='text/javascript' "+_charset+" src='"+gTheme[1]+".js?"+(_cacheOther?0:gd.getTime())+"'></scr"+"ipt>");
</script>
</head>
<body leftmargin=0 topmargin=0 marginwidth=0 marginheight=0 hspace=0 vspace=0 onload="fInitRange();if(fOnload)fOnload()" onselectstart="return false" ondraggesture="return false" ondragstart="return false" oncontextmenu="return false" onmouseup="top.defaultStatus='Powered by FlatCalendarXP 9.8.285 Lite Edition (c)2003-2007 Idemfactor Solutions, Inc.';fDragIt(0,0,0,2,event);return true;">
<script type='text/javascript'>
var gdBegin,gdEnd,gcbMon,gcbYear,gcTemp,giSat,giSun,gRange=[],__cal=[];
for (var i=0;i<6;i++) { __cal[i]=[]; for (var j=0;j<7;j++) __cal[i][j]=[]; }
with (document) {
	write("<scr"+"ipt type='text/javascript' "+_charset+" src='"+(gTheme[4]?gTheme[4]+(/\?/.test(gTheme[4])?"&":"?"):"plugins.js?")+(_cacheOther?0:gd.getTime())+"'></scr"+"ipt>");
	write("<lin"+"k rel='stylesheet' type='text/css' "+_charset+" href='"+gTheme[1]+".css?"+(_cacheOther?0:gd.getTime())+"'>");
}
</script>
<script type='text/javascript'>
giSat=(6-giFirstDOW)%7;
giSun=(7-giFirstDOW)%7;
gCurMonth=fCalibrate(gCurMonth[0],gCurMonth[1]);
gdSelect=gdSelect.slice(0); gBegin=gBegin.slice(0); gEnd=gEnd.slice(0);
if (!_noBound){if (gCurMonth[0]>gEnd[0]||gCurMonth[0]==gEnd[0]&&gCurMonth[1]>gEnd[1]) gCurMonth=gEnd.slice(0);
if (gCurMonth[0]<gBegin[0]||gCurMonth[0]==gBegin[0]&&gCurMonth[1]<gBegin[1]) gCurMonth=gBegin.slice(0);}
gWeekDay=gWeekDay.slice(giFirstDOW).concat(gWeekDay.slice(0,giFirstDOW));

if (!fIsSelected)
	fIsSelected=function(y,m,d) {
		return gdSelect[2]==d&&gdSelect[1]==m&&gdSelect[0]==y;
	}

if (fOnDrag&&!(IE&&MAC||OP)) {
	var __om=IE4||IE5?gContainer.document.onmouseover:gContainer.document.onmouseup;
	if (IE4||IE5) gContainer.document.onmouseover=fOm;
	else gContainer.document.onmouseup=fOm;
}
function fOm(e){
	if(!e)e=gContainer.event;var t=e.target?e.target:e.srcElement;
	if(t.name!=self.name)__lastDrag=null;if(__om)__om(e)
}

var __lastDrag=null;
function fDragIt(y,m,d,aStat,e) {
	if (!fOnDrag||!(__lastDrag&&aStat>0||aStat==0)) return false;
	var dt=[y,m,d];
	if (aStat==1&&__lastDrag+''==dt+'') return false;
	__lastDrag=aStat==2||IE&&MAC||OP?null:dt;
	return fOnDrag(dt[0],dt[1],dt[2],aStat,e);
}

function fRepaint() {
	fSetCal(gCurMonth[0],gCurMonth[1],0,false,null);
}

function fUpdSelect(y,m,d) {
	gdSelect[0]=y; gdSelect[1]=m; gdSelect[2]=d;
}


function fGetXY(a,offset) {
	var p=offset?offset.slice(0):[0,0],tn;
	while(a) {
		tn=a.tagName.toUpperCase();
		p[0]+=a.offsetLeft-(!KO3&&tn=="DIV"&&a.scrollLeft?a.scrollLeft:0);
		p[1]+=a.offsetTop-(!KO3&&tn=="DIV"&&a.scrollTop?a.scrollTop:0);
		if (tn=="BODY") break;
		a=a.offsetParent;
	}
	return p;
}

function fInitRange(r) {
	gRange=r?r:[];
	var rb=gRange[0]?r[0]:gBegin;
	gdBegin=new Date(rb[0],rb[1]-1,rb[2]);
	gRange[0]=rb;
	var re=gRange[1]?r[1]:gEnd;
	gdEnd=new Date(re[0],re[1]-1,re[2]);
	gRange[1]=re;

	if (gcbYear) {
	 	for(var i=0;i+rb[0]<=re[0];i++) gcbYear.options[i]=new Option(i+rb[0],i+rb[0]);
 		for(var j=gcbYear.options.length-1;j>=i;j--) gcbYear.options[j]=null;
	}
	if (!gRange[2]) gRange[2]=rb.slice(0);
	if (fIsOutRange(gCurMonth[0],gCurMonth[1]))
		fSetCal(gRange[2][0],gRange[2][1],0);
	else fRepaint();
}

function fGetAgenda(y,m,d,taint) {
	var s=fCalibrate(y,m),cm=gCurMonth;
	var def=["",gsAction,gcCellBG,null,guCellBGImg,false,gsCellHTML];
	if (taint) if ((giShowOther&4)&&(s[0]<cm[0]||s[0]==cm[0]&&s[1]<cm[1])||(giShowOther&8)&&(s[0]>cm[0]||s[0]==cm[0]&&s[1]>cm[1]))
		return null;
	var ag=fHoliday?fHoliday(s[0],s[1],d):fGetEvent(y,m,d);
	if (ag==null) ag=def;
	else {
		for (var i=0;i<7;i++) {
			if (gAgendaMask[i]!=-1) ag[i]=gAgendaMask[i];
			if (ag[i]==null&&i!=1) ag[i]=def[i];
		}
		if (taint&&s[1]!=cm[1]&&!(giShowOther&1)) {
			def[0]=ag[0]; def[1]=ag[1]; ag=null; ag=def;
		}
	}
	if (taint&&s[1]!=cm[1]) {
		if (gcOtherDayBG&&ag[2]==gcCellBG) ag[2]=gcOtherDayBG;
		ag[3]=gcOtherDay;
	}
	if (!fValidRange(s[0],s[1],d)) {
		ag[1]=null;
		if (_preferOOR&&gsOutOfRange) ag[0]=gsOutOfRange;
		if (_preferOOR&&guOutOfRange) ag[4]=guOutOfRange;
	}
	return ag;
}

function fGetDOW(y,m,d) {
	return (7+(new Date(y,m-1,d).getDay())-giFirstDOW)%7;
}

function fGetWeekNo(y,m,d) {
	var dow=fGetDOW(y,1,1);
	return Math.ceil(((Date.UTC(y,m-1,d)-Date.UTC(y,0,1))/MILLIDAY+dow-6)/7)+fWeekOffset(dow);
}

function fW2Date(y,w,wd) { // w > 0, wd > 0
	var dow=fGetDOW(y,1,1);
	w-=fWeekOffset(dow);
	var date=new Date(new Date(y,0,1)-0+(w*7+wd-dow-1)*MILLIDAY);
	return [date.getFullYear(),date.getMonth()+1,date.getDate()];
}

function fDate2W(y,m,d) {
	var w=fGetWeekNo(y,m,d), wd=fGetDOW(y,m,d)+1;
	if (w==0) { y--; w=fGetWeekNo(y,12,31); }
	else if (w>52) {
		var w1=fGetWeekNo(y+1,1,1);
		if (w1>0) { y++; w=w1; }
	}
	return [y,w,wd];
}

function fGetDateByDOW(y,m,q,dow) { // q: 1-5; dow: 0-6
	var dom=new Date(y,m-1,1).getDay();
	var d=7*q-6+dow-dom;
	if (dom>dow) d+=7;
	if (d>fGetDays(y)[m]) d-=7;
	return d;	// 1-31
}

function fValidRange(y,m,d) {
	for (var i=3; i<gRange.length; i++)
		if (gRange[i][2]==d&&gRange[i][1]==m&&gRange[i][0]==y)
			return false;
	var dt=new Date(y,m-1,d);
	return (dt>=gdBegin)&&(dt<=gdEnd);
}

function fBuildCal(y,m) {
	var days=fGetDays(y),iDay1=fGetDOW(y,m,1),wk=fDate2W(y,m,1);
	var iLast=days[m-1]-iDay1+1,iDate=1,iNext=1, wi=0;
	var w445=g445[m-1];

	if (gb445&&wk[1]==w445+1) {
		for (var d=0;d<7;d++) {
			__cal[wi][d][0]=m-1;
			__cal[wi][d][1]=iLast-7+d;
		}
		wi++;
	}
	for (var d=0;d<7;d++) {
		__cal[wi][d][0]=d<iDay1?m-1:m;
		__cal[wi][d][1]=d<iDay1?iLast+d:iDate++;
	}
	if (!(gb445&&(wk[1]<w445||wk[0]<y)))
		wi++;
	for (var w=1;w<6;w++) {
		for (var d=0;d<7;d++) {
			__cal[wi][d][0]=iDate<=days[m]?m:m+1;
			__cal[wi][d][1]=iDate<=days[m]?iDate++:iNext++;
		}
		wi++;
		if (wi>5&&wk[0]==y||wi>6&&wk[1]==53) break;
	}
}

function fIsOutRange(y,m) {
	return (y>gRange[1][0]||y<gRange[0][0]||y==gRange[0][0]&&m<gRange[0][1]||y==gRange[1][0]&&m>gRange[1][1]);
}
function fBfRange(y,m) {
	return y<gRange[0][0]||y==gRange[0][0]&&m<=gRange[0][1];
}
function fAfRange(y,m) {
	return y>gRange[1][0]||y==gRange[1][0]&&m>=gRange[1][1];
}
function fToggleNavs(y,m) {
	var n=fGetById(document,"navPrev"); if(n)n.style.visibility=fBfRange(y,m)?"hidden":"visible";
	n=fGetById(document,"navNext"); if(n)n.style.visibility=fAfRange(y,m)?"hidden":"visible";
}

function fCheckRange(y,m) {
	if (!_noBound&&fIsOutRange(y,m)) {
		stopShowMon();
		if (gsOutOfRange!="") alert(gsOutOfRange);
		return false;
	}
	return true;
}

function fSetCal(y,m,d,bTriggerOnChg,e) {
	var t=fCalibrate(parseInt(y,10),parseInt(m,10));
	y=t[0];	m=t[1];
	if (!fCheckRange(y,m)||bTriggerOnChg&&fOnChange&&fOnChange(y,m,d,e)) {
		if (gcbMon) gcbMon.options[gCurMonth[1]-1].selected=true;
		if (gcbYear) gcbYear.options[gCurMonth[0]-gcbYear.options[0].value].selected=true;
		return false;
	}
	if (d>0) fUpdSelect(y,m,d);
	var htmStr=fDrawCal(y,m);
	if (!gbHideCalMiddle){
		var iDiv=fGetById(document,"innerDiv");
		fGetById(document,"innerDiv").innerHTML=htmStr;
	}
	if (gcbMon) gcbMon.options[m-1].selected=true;
	if (gcbYear) gcbYear.options[y-gcbYear.options[0].value].selected=true;
	if (!gbHideTop&&giDCStyle>0) fGetById(document,"calTitle").innerHTML=eval(gsCalTitle)+"\n";
	fToggleNavs(y,m);
	gcTemp=null;
	setTimeout("fResize()",giInitDelay+giResizeDelay);
	return true;
}

function fResize() {
	if (fOnResize) fOnResize();
	giInitDelay=0;
	var ptb=fGetById(document,"outerTable");
	if (!ptb) return;
	var ow=ptb.offsetWidth;
	var oh=ptb.offsetHeight;
	if (ow) gfSelf.style.width=ow+"px";
	if (oh) gfSelf.style.height=oh+"px";
}

function fSetDate(y,m,d,taint,e) {
	var ag=fGetAgenda(y,m,d,taint);
	if (ag==null||ag[1]==null) return false;
	if (!fSetCal(y,m,d,true,e)) return false;
	eval(ag[1].replace(/\n/g,"\\n"));
	if (fAfterSelected) fAfterSelected(y,m,d,e);
	return true;
}

function fPrevMonth(e) {
	return fSetCal(gCurMonth[0],gCurMonth[1]-1,0,true,e);
}
function fNextMonth(e) {
	return fSetCal(gCurMonth[0],gCurMonth[1]+1,0,true,e);
}
function showPrevMon() {
	if (!__stub[1]&&fPrevMonth()&&!fBfRange(gCurMonth[0],gCurMonth[1])) __stub[1]=setInterval("fPrevMonth()", giShowInterval);
}
function showNextMon() {
	if (!__stub[1]&&fNextMonth()&&!fAfRange(gCurMonth[0],gCurMonth[1])) __stub[1]=setInterval("fNextMonth()", giShowInterval);
}
function stopShowMon() {
	clearInterval(__stub[1]); __stub[1]=null;
}

function fMouseOver(t) {
	if (!gbFocus) return;
	gcTemp=t.style.backgroundColor;
	t.style.backgroundColor=gcToggle;
}

function fMouseOut(t) {
	if (!gbFocus||gcTemp==null) return;
	t.style.backgroundColor=gcTemp?gcTemp:"transparent";
}

function fHint(t,id) {
	t.title=__tis[id];
	gContainer.status=__tis[id];
}



var __sWH="<td class='WeekHead'><div style='position:relative;width:"+giWeekWidth+"px;top:"+giHeadTop+"px;'>",
__sWC="<td class='WeekCol'><div style='position:relative;width:100%;top:"+giWeekTop+"px;'>",
__sCC=" class='CalCol'><div class='CalCell' style='position:relative;width:100%;height:"+giCellHeight+"px;",
__sDIVTD="</div></td>",
__tis=[];

function fDrawCal(y,m) {
	var cw=giCellWidth<0?Math.floor((gfSelf.parentNode.offsetWidth-(giWeekCol>=0?giWeekWidth:0))/7)-6:giCellWidth;
	var td,htm,bo,ag,i,c,c1,dayNo,dc,cbg,isT,isS,weekNo,cd,ex,bfb,sCellDate,sWkCol,weekYear,w;
	var ms=giMarkSelected,ht=giMarkToday;
	var a=["<TABLE width='100%' ",gsInnerTable,"><tr>"];
	gCurMonth[0]=y; gCurMonth[1]=m;
	fBuildCal(y,m);
	for (var wd=0,i=0; i<8; i++)
		if (i==giWeekCol) a.push(__sWH,gsWeekHead,__sDIVTD);
		else if (i!=7||giWeekCol>=0) {
			var sDoW=fOnDoWClick?"<a class='DoWAnchor' href='javascript:void(0)' onclick='fOnDoWClick("
       +y+","+m+","+(giFirstDOW+wd)%7+");return false;'>"+gWeekDay[wd]+"</a>":"<span class='DoWAnchor'>"+gWeekDay[wd]+"</span>"
			a.push("<td class='CalHead'><div style='position:relative;width:",cw,"px;height:",giHeadHeight,"px;top:",giHeadTop,"px;'>",sDoW,__sDIVTD); wd++;
		}
	a.push("</tr>");
	if (giWeekCol>=0) {
		w=fDate2W(y,__cal[0][0][0],__cal[0][0][1]);
		weekYear=w[0];
		weekNo=w[1];
	}
	w=fDate2W(y,12,31);
	for (var week=0; week<6; week++) {
		ex=week>3&&__cal[week][0][1]<15;
		var e445=gb445&&(m%3!=0&&week>3||week>4&&!(m==12&&w[1]==53));
		if ((ex||e445)&&gbShrink2fit) break;
		a.push("<tr>");
		for (var day=-1,i=0; i<8; i++)
			if (i==giWeekCol) {
				sWkCol=fOnWeekClick?"<a class='WeekAnchor' href='javascript:void(0)' onclick='fOnWeekClick("+weekYear+","
       +weekNo+");return false;'>"+eval(gsWeeks)+"</a>":"<span class='WeekAnchor'>"+eval(gsWeeks)+"</span>";
				a.push(__sWC,(giShowOther&8)&&!(giShowOther&16)&&ex||e445?"<span class='WeekAnchor'>&nbsp;</span>":sWkCol,__sDIVTD);
				if (m==1&&weekNo>50||m==12&&weekNo>=52&&weekNo>=w[1]) {
					weekNo=0; weekYear++;
				}
				weekNo++;
			} else if (i!=7||giWeekCol>=0) {
				day++; dayNo=__cal[week][day][1];
				var tid=week*10+day;
				cd=fCalibrate(y,__cal[week][day][0]);
				isT=gToday[2]==dayNo&&gToday[1]==cd[1]&&gToday[0]==cd[0];
				ag=e445?null:fGetAgenda(cd[0],cd[1],dayNo,true);
				var hs=ag&&ag[1]?";cursor:pointer":";cursor:default";
				if (ag==null) {
					dc=giShowOther&16&&(week<2&&(giShowOther&4)||week>3&&(giShowOther&8))?gcOtherDay:"";
					cbg=null; bo=false; __tis[tid]=td=htm=""; bfb=gbFlatBorder; c=c1=gcOtherDayBG;
				} else {
					isS=fIsSelected(cd[0],cd[1],dayNo)&&ag[1]!=null;
					var bt=ag[5]+""=="true";
					if (cd[1]==m||(giShowOther&2)) {
						c=isS&&(ms&2)?gcBGSelected:ag[5]?bt?ag[2]:ag[5]:ag[2]==gcCellBG&&isT&&(ht&3)?gcBGToday:ag[2];
						c1=isS&&(ms&1)&&gcBGSelected?gcBGSelected:ag[2]==gcCellBG||bt?isT&&(ht&1)&&gcBGToday?gcBGToday:gcCellBG:ag[2];
						bo=isS&&(ms&4)||isT&&(ht&4);
						dc=isS&&(ms&8)?gcFGSelected:ag[3]==null&&isT&&(ht&8)?gcFGToday:ag[3];
						cbg=isS&&(ms&16)?guSelectedBGImg:ag[4]==guCellBGImg&&isT&&(ht&16)?guTodayBGImg:ag[4];
					} else {
						bo=false; c=ag[5]&&!bt?ag[5]:ag[2]; c1=bt?gcCellBG:ag[2]; dc=ag[3]; cbg=ag[4];
					}
					bo=gbBoldAgenda&&ag[0]&&ag[0]!=gsOutOfRange||bo;
					bfb=gbFlatBorder&&c1!=gcCellBG;
					htm=ag[6]?ag[6]:"";
					td=ag[1]==null&&_lineThru?";text-decoration:line-through":"";
					__tis[tid]=isS&&gsSelectedTip?gsSelectedTip:ag[0]?ag[0]:isT&&gsTodayTip?gsTodayTip:"";
					if (day==giSun&&gcSunBG){c1=c1==gcCellBG?gcSunBG:c1; c=c==gcCellBG?gcSunBG:c;}
					if (day==giSat&&gcSatBG){c1=c1==gcCellBG?gcSatBG:c1; c=c==gcCellBG?gcSatBG:c;}
					if (dc==null) dc=day==giSun?gcSun:day==giSat?gcSat:gcWorkday;
				}
				if (gbInvertBold) bo=!bo;
				if (gbInvertBorder) bfb=!bfb;
				sCellDate=cd[0]+","+cd[1]+","+dayNo;
				a.push("<td valign='top'");if(c)a.push(" bgcolor='",c,"'");if(bfb)a.push(" style='border-style:solid;border-color:",c1,"'");a.push(__sCC,hs);if(c1)a.push(";background-color:",c1);
				if(cbg)a.push(";background-image:url(",cbg,")");if(dc=="")a.push("' ><span class='CellAnchor'>&nbsp;</span>",__sDIVTD);else{
				if(!_mcafee)a.push("' onmouseover='fHint(this,",tid,");fMouseOver(this);fDragIt(",sCellDate,",1,event);return true' onmouseout='fMouseOut(this)' onmousedown='fDragIt(",sCellDate,",0,event)' onmouseup='fDragIt(",sCellDate,",2,event)");
				a.push("' onclick='fSetDate(",sCellDate,",true,event)'><A href='javascript:void(0)' class='CellAnchor' style='color:",dc,hs);
				if(bo)a.push(";font-weight:bold");a.push(td,"' onmouseover='fHint(this,",tid,")' >",eval(gsDays),"</A>",htm,__sDIVTD);}
				ag=null;
			}
		a.push("</tr>");
	}
	a.push("</TABLE>\n");
	return a.join('');
}

with (document) {
	body.bgColor=gcCalBG;
	var a=["<TABLE id='outerTable' ",gsOuterTable,"><FORM name='cxpTopForm' style='margin:0;padding:0'>"];
	if (!gbHideTop)
	if (giDCStyle==2)
		a.push("<TR><TD class='CalTop' nowrap><SPAN id='calTitle' class='CalTitle'>",eval(gsCalTitle),"</SPAN></TD></TR>");
	else if (giDCStyle==1){
		a.push("<TR><TD class='CalTop' nowrap><table border=0 cellspacing=0 cellpadding=0 width='100%'><tr><TD align='left' nowrap>",gsNavPrev,"</TD><TD class='CalTitle' nowrap><SPAN id='calTitle'>");
		a.push(eval(gsCalTitle));
		a.push("</SPAN></TD><TD align='right' nowrap>",gsNavNext,"</TD></tr></table></TD></TR>");
	} else {
		a.push("<TR><TD class='CalTop' nowrap>",gsNavPrev," ");
		var mstr=["<SELECT id='MonSelect' class='CalTitle' onchange='fSetCal(gcbYear.value, gcbMon.value,0,true,event)'>"];
		for (var i=0; i<12; i++) mstr.push("<OPTION value='",i+1,"'>",gMonths[i],"</OPTION>");
		mstr.push("</SELECT>"); mstr=mstr.join('');
		var ystr=["<SELECT id='YearSelect' class='CalTitle' onchange='fSetCal(gcbYear.value, gcbMon.value,0,true,event)'>"];
		for(var i=gBegin[0];i<=gEnd[0];i++)
			ystr.push("<OPTION value='",i,"'>",i,"</OPTION>");
		ystr.push("</SELECT>"); ystr=ystr.join('');
		if (gbDCSeq) a.push(mstr,ystr);
		else a.push(ystr,mstr);
		a.push(" ",gsNavNext,"</TD></TR>");
	}
	a.push("</FORM>");
	if (!gbHideCalMiddle) a.push("<TR><TD class='CalMiddle'><DIV id='innerDiv' style='background:",gcCalFrame,guCalBG?" url("+guCalBG+") ":"",";'></DIV></TD></TR>");
	if (!gbHideBottom) a.push("<FORM name='cxpBottomForm' style='margin:0;padding:0'><TR><TD class='CalBottom' nowrap>",gsBottom,"</TD></TR></FORM>");
	a.push("</TABLE>");
	for (var i=0;i<giFreeDiv;i++)
		a.push("<DIV class='FreeDiv' id='freeDiv",i,"' style='position:absolute;visibility:hidden;z-index:500'></DIV>");
	write(a.join(''));
	close();
}
</script>
<!--a href="http://www.calendarxp.net" style="display:none">JavaScript Calendar</a><a href="http://www.idemfactor.com" style="display:none">Idemfactor Solutions Inc.</a-->
<script type='text/javascript'>
if (giDCStyle==0) {
	gcbMon=fGetById(document,"MonSelect");
	gcbYear=fGetById(document,"YearSelect");
}
function fAgReady(ctxName) {
	var ctx=eval("gContainer."+ctxName);
	if (ctx) {
		clearInterval(__stub[0]);
		fHoliday=ctx.fHoliday;
		if (gRange.length>0) fRepaint();
	}
}
var __isAS=gTheme[2]&&gTheme[2].substring(0,6)=="share[";
if (gbShareAgenda==true) {
	if (!eval(gsAgShared)) eval(gsAgShared+"=[]");
	if (__isAS) __stub[0]=setInterval("fAgReady('"+gTheme[2].split('[')[1].split(']')[0]+"')",350);
}
if (gTheme[2]&&!__isAS) document.write("<scr"+"ipt type='text/javascript' "+_charset+" src='"+gTheme[2]+(gbCacheAgenda?"":(/\?/.test(gTheme[2])?"&":"?")+gd.getTime())+"'></scr"+"ipt>");
</script>
<script type='text/javascript'>
if (gTheme[3]) eval("parent."+gTheme[3]+"=parent.frames[self.name]");
</script>
<form name="calendarForm">
<input type="hidden" name="abc" value="calendar"/>
</form>
</body>
</html>
