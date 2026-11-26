"use strict";(self.rspackChunkcom_foxdebug_acode=self.rspackChunkcom_foxdebug_acode||[]).push([[1480],{66366:function(t,e,r){function a(t,e){var r,a,n;t.accDescr&&(null==(r=e.setAccDescription)||r.call(e,t.accDescr)),t.accTitle&&(null==(a=e.setAccTitle)||a.call(e,t.accTitle)),t.title&&(null==(n=e.setDiagramTitle)||n.call(e,t.title))}(0,r(17808).K2)(a,"populateCommonDb"),r.d(e,{S:function(){return a}})},54363:function(t,e,r){r.r(e);var a=r(68967),n=r(66366),i=r(41983),l=r(56373),o=r(17808),s=r(22250);function c(t,e,r,a,n,i,l){try{var o=t[i](l),s=o.value}catch(t){r(t);return}o.done?e(s):Promise.resolve(s).then(a,n)}var u={showLegend:!0,ticks:5,max:null,min:0,graticule:"circle"},d={axes:[],curves:[],options:u},g=structuredClone(d),p=l.UI.radar,h=(0,o.K2)(()=>(0,i.$t)(function(t){for(var e=1;e<arguments.length;e++){var r=null!=arguments[e]?arguments[e]:{},a=Object.keys(r);"function"==typeof Object.getOwnPropertySymbols&&(a=a.concat(Object.getOwnPropertySymbols(r).filter(function(t){return Object.getOwnPropertyDescriptor(r,t).enumerable}))),a.forEach(function(e){var a;a=r[e],e in t?Object.defineProperty(t,e,{value:a,enumerable:!0,configurable:!0,writable:!0}):t[e]=a})}return t}({},p,(0,l.zj)().radar)),"getConfig"),x=(0,o.K2)(()=>g.axes,"getAxes"),m=(0,o.K2)(()=>g.curves,"getCurves"),f=(0,o.K2)(()=>g.options,"getOptions"),v=(0,o.K2)(t=>{g.axes=t.map(t=>{var e;return{name:t.name,label:null!=(e=t.label)?e:t.name}})},"setAxes"),$=(0,o.K2)(t=>{g.curves=t.map(t=>{var e;return{name:t.name,label:null!=(e=t.label)?e:t.name,entries:y(t.entries)}})},"setCurves"),y=(0,o.K2)(t=>{if(void 0==t[0].axis)return t.map(t=>t.value);let e=x();if(0===e.length)throw Error("Axes must be populated before curves for reference entries");return e.map(e=>{let r=t.find(t=>{var r;return(null==(r=t.axis)?void 0:r.$refText)===e.name});if(void 0===r)throw Error("Missing entry for axis "+e.label);return r.value})},"computeCurveEntries"),b={getAxes:x,getCurves:m,getOptions:f,setAxes:v,setCurves:$,setOptions:(0,o.K2)(t=>{var e,r,a,n,i,l,o,s,c,d;let p=t.reduce((t,e)=>(t[e.name]=e,t),{});g.options={showLegend:null!=(e=null==(l=p.showLegend)?void 0:l.value)?e:u.showLegend,ticks:null!=(r=null==(o=p.ticks)?void 0:o.value)?r:u.ticks,max:null!=(a=null==(s=p.max)?void 0:s.value)?a:u.max,min:null!=(n=null==(c=p.min)?void 0:c.value)?n:u.min,graticule:null!=(i=null==(d=p.graticule)?void 0:d.value)?i:u.graticule}},"setOptions"),getConfig:h,clear:(0,o.K2)(()=>{(0,l.IU)(),g=structuredClone(d)},"clear"),setAccTitle:l.SV,getAccTitle:l.iN,setDiagramTitle:l.ke,getDiagramTitle:l.ab,getAccDescription:l.m7,setAccDescription:l.EI},w=(0,o.K2)(t=>{(0,n.S)(t,b);let{axes:e,curves:r,options:a}=t;b.setAxes(e),b.setCurves(r),b.setOptions(a)},"populate"),C={parse:(0,o.K2)(t=>{var e;return(e=function*(){let e=yield(0,s.qg)("radar",t);o.Rm.debug(e),w(e)},function(){var t=this,r=arguments;return new Promise(function(a,n){var i=e.apply(t,r);function l(t){c(i,a,n,l,o,"next",t)}function o(t){c(i,a,n,l,o,"throw",t)}l(void 0)})})()},"parse")},M=(0,o.K2)((t,e,r,n)=>{var i;let l=n.db,o=l.getAxes(),s=l.getCurves(),c=l.getOptions(),u=l.getConfig(),d=l.getDiagramTitle(),g=K((0,a.D)(e),u),p=null!=(i=c.max)?i:Math.max(...s.map(t=>Math.max(...t.entries))),h=c.min,x=Math.min(u.width,u.height)/2;k(g,o,x,c.ticks,c.graticule),L(g,o,x,u),T(g,o,s,h,p,c.graticule,u),S(g,s,c.showLegend,u),g.append("text").attr("class","radarTitle").text(d).attr("x",0).attr("y",-u.height/2-u.marginTop)},"draw"),K=(0,o.K2)((t,e)=>{var r;let a=e.width+e.marginLeft+e.marginRight,n=e.height+e.marginTop+e.marginBottom,i={x:e.marginLeft+e.width/2,y:e.marginTop+e.height/2};return(0,l.a$)(t,n,a,null==(r=e.useMaxWidth)||r),t.attr("viewBox",`0 0 ${a} ${n}`),t.append("g").attr("transform",`translate(${i.x}, ${i.y})`)},"drawFrame"),k=(0,o.K2)((t,e,r,a,n)=>{if("circle"===n)for(let e=0;e<a;e++){let n=r*(e+1)/a;t.append("circle").attr("r",n).attr("class","radarGraticule")}else if("polygon"===n){let n=e.length;for(let i=0;i<a;i++){let l=r*(i+1)/a,o=e.map((t,e)=>{let r=2*e*Math.PI/n-Math.PI/2,a=l*Math.cos(r),i=l*Math.sin(r);return`${a},${i}`}).join(" ");t.append("polygon").attr("points",o).attr("class","radarGraticule")}}},"drawGraticule"),L=(0,o.K2)((t,e,r,a)=>{let n=e.length;for(let i=0;i<n;i++){let l=e[i].label,o=2*i*Math.PI/n-Math.PI/2;t.append("line").attr("x1",0).attr("y1",0).attr("x2",r*a.axisScaleFactor*Math.cos(o)).attr("y2",r*a.axisScaleFactor*Math.sin(o)).attr("class","radarAxisLine"),t.append("text").text(l).attr("x",r*a.axisLabelFactor*Math.cos(o)).attr("y",r*a.axisLabelFactor*Math.sin(o)).attr("class","radarAxisLabel")}},"drawAxes");function T(t,e,r,a,n,i,l){let o=e.length,s=Math.min(l.width,l.height)/2;r.forEach((e,r)=>{if(e.entries.length!==o)return;let c=e.entries.map((t,e)=>{let r=2*Math.PI*e/o-Math.PI/2,i=O(t,a,n,s);return{x:i*Math.cos(r),y:i*Math.sin(r)}});"circle"===i?t.append("path").attr("d",A(c,l.curveTension)).attr("class",`radarCurve-${r}`):"polygon"===i&&t.append("polygon").attr("points",c.map(t=>`${t.x},${t.y}`).join(" ")).attr("class",`radarCurve-${r}`)})}function O(t,e,r,a){return a*(Math.min(Math.max(t,e),r)-e)/(r-e)}function A(t,e){let r=t.length,a=`M${t[0].x},${t[0].y}`;for(let n=0;n<r;n++){let i=t[(n-1+r)%r],l=t[n],o=t[(n+1)%r],s=t[(n+2)%r],c={x:l.x+(o.x-i.x)*e,y:l.y+(o.y-i.y)*e},u={x:o.x-(s.x-l.x)*e,y:o.y-(s.y-l.y)*e};a+=` C${c.x},${c.y} ${u.x},${u.y} ${o.x},${o.y}`}return`${a} Z`}function S(t,e,r,a){if(!r)return;let n=(a.width/2+a.marginRight)*3/4,i=-(3*(a.height/2+a.marginTop))/4;e.forEach((e,r)=>{let a=t.append("g").attr("transform",`translate(${n}, ${i+20*r})`);a.append("rect").attr("width",12).attr("height",12).attr("class",`radarLegendBox-${r}`),a.append("text").attr("x",16).attr("y",0).attr("class","radarLegendText").text(e.label)})}(0,o.K2)(T,"drawCurves"),(0,o.K2)(O,"relativeRadius"),(0,o.K2)(A,"closedRoundCurve"),(0,o.K2)(S,"drawLegend");var P=(0,o.K2)((t,e)=>{let r="";for(let a=0;a<t.THEME_COLOR_LIMIT;a++){let n=t[`cScale${a}`];r+=`
		.radarCurve-${a} {
			color: ${n};
			fill: ${n};
			fill-opacity: ${e.curveOpacity};
			stroke: ${n};
			stroke-width: ${e.curveStrokeWidth};
		}
		.radarLegendBox-${a} {
			fill: ${n};
			fill-opacity: ${e.curveOpacity};
			stroke: ${n};
		}
		`}return r},"genIndexStyles"),D=(0,o.K2)(t=>{let e=(0,l.P$)(),r=(0,l.zj)(),a=(0,i.$t)(e,r.themeVariables),n=(0,i.$t)(a.radar,t);return{themeVariables:a,radarOptions:n}},"buildRadarStyleOptions"),I={parser:C,db:b,renderer:{draw:M},styles:(0,o.K2)(({radar:t}={})=>{let{themeVariables:e,radarOptions:r}=D(t);return`
	.radarTitle {
		font-size: ${e.fontSize};
		color: ${e.titleColor};
		dominant-baseline: hanging;
		text-anchor: middle;
	}
	.radarAxisLine {
		stroke: ${r.axisColor};
		stroke-width: ${r.axisStrokeWidth};
	}
	.radarAxisLabel {
		dominant-baseline: middle;
		text-anchor: middle;
		font-size: ${r.axisLabelFontSize}px;
		color: ${r.axisColor};
	}
	.radarGraticule {
		fill: ${r.graticuleColor};
		fill-opacity: ${r.graticuleOpacity};
		stroke: ${r.graticuleColor};
		stroke-width: ${r.graticuleStrokeWidth};
	}
	.radarLegendText {
		text-anchor: start;
		font-size: ${r.legendFontSize}px;
		dominant-baseline: hanging;
	}
	${P(e,r)}
	`},"styles")};r.d(e,{diagram:function(){return I}})}}]);