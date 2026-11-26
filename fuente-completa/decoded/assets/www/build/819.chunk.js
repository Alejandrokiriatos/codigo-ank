"use strict";(self.rspackChunkcom_foxdebug_acode=self.rspackChunkcom_foxdebug_acode||[]).push([[819],{66366:function(e,t,a){function i(e,t){var a,i,l;e.accDescr&&(null==(a=t.setAccDescription)||a.call(t,e.accDescr)),e.accTitle&&(null==(i=t.setAccTitle)||i.call(t,e.accTitle)),e.title&&(null==(l=t.setDiagramTitle)||l.call(t,e.title))}(0,a(17808).K2)(i,"populateCommonDb"),a.d(t,{S:function(){return i}})},33038:function(e,t,a){a.r(t);var i=a(68967),l=a(66366),r=a(41983),n=a(56373),o=a(17808),s=a(22250),c=a(10194);function d(e,t,a,i,l,r,n){try{var o=e[r](n),s=o.value}catch(e){a(e);return}o.done?t(s):Promise.resolve(s).then(i,l)}var p=n.UI.pie,u={sections:new Map,showData:!1,config:p},f=u.sections,g=u.showData,h=structuredClone(p),m=(0,o.K2)(()=>structuredClone(h),"getConfig"),x=(0,o.K2)(()=>{f=new Map,g=u.showData,(0,n.IU)()},"clear"),v=(0,o.K2)(({label:e,value:t})=>{if(t<0)throw Error(`"${e}" has invalid value: ${t}. Negative values are not allowed in pie charts. All slice values must be >= 0.`);f.has(e)||(f.set(e,t),o.Rm.debug(`added new section: ${e}, with value: ${t}`))},"addSection"),w=(0,o.K2)(()=>f,"getSections"),S=(0,o.K2)(e=>{g=e},"setShowData"),$=(0,o.K2)(()=>g,"getShowData"),y={getConfig:m,clear:x,setDiagramTitle:n.ke,getDiagramTitle:n.ab,setAccTitle:n.SV,getAccTitle:n.iN,setAccDescription:n.EI,getAccDescription:n.m7,addSection:v,getSections:w,setShowData:S,getShowData:$},D=(0,o.K2)((e,t)=>{(0,l.S)(e,t),t.setShowData(e.showData),e.sections.map(t.addSection)},"populateDb"),T={parse:(0,o.K2)(e=>{var t;return(t=function*(){let t=yield(0,s.qg)("pie",e);o.Rm.debug(t),D(t,y)},function(){var e=this,a=arguments;return new Promise(function(i,l){var r=t.apply(e,a);function n(e){d(r,i,l,n,o,"next",e)}function o(e){d(r,i,l,n,o,"throw",e)}n(void 0)})})()},"parse")},C=(0,o.K2)(e=>`
  .pieCircle{
    stroke: ${e.pieStrokeColor};
    stroke-width : ${e.pieStrokeWidth};
    opacity : ${e.pieOpacity};
  }
  .pieOuterCircle{
    stroke: ${e.pieOuterStrokeColor};
    stroke-width: ${e.pieOuterStrokeWidth};
    fill: none;
  }
  .pieTitleText {
    text-anchor: middle;
    font-size: ${e.pieTitleTextSize};
    fill: ${e.pieTitleTextColor};
    font-family: ${e.fontFamily};
  }
  .slice {
    font-family: ${e.fontFamily};
    fill: ${e.pieSectionTextColor};
    font-size:${e.pieSectionTextSize};
    // fill: white;
  }
  .legend text {
    fill: ${e.pieLegendTextColor};
    font-family: ${e.fontFamily};
    font-size: ${e.pieLegendTextSize};
  }
`,"getStyles"),k=(0,o.K2)(e=>{let t=[...e.values()].reduce((e,t)=>e+t,0),a=[...e.entries()].map(([e,t])=>({label:e,value:t})).filter(e=>e.value/t*100>=1);return(0,c.rLf)().value(e=>e.value).sort(null)(a)},"createPieArcs"),b={parser:T,db:y,renderer:{draw:(0,o.K2)((e,t,a,l)=>{var s,d;o.Rm.debug("rendering pie chart\n"+e);let p=l.db,u=(0,n.D7)(),f=(0,r.$t)(p.getConfig(),u.pie),g=(0,i.D)(t),h=g.append("g");h.attr("transform","translate(225,225)");let{themeVariables:m}=u,[x]=(0,r.I5)(m.pieOuterStrokeWidth);null!=x||(x=2);let v=f.textPosition,w=(0,c.JLW)().innerRadius(0).outerRadius(185),S=(0,c.JLW)().innerRadius(185*v).outerRadius(185*v);h.append("circle").attr("cx",0).attr("cy",0).attr("r",185+x/2).attr("class","pieOuterCircle");let $=p.getSections(),y=k($),D=[m.pie1,m.pie2,m.pie3,m.pie4,m.pie5,m.pie6,m.pie7,m.pie8,m.pie9,m.pie10,m.pie11,m.pie12],T=0;$.forEach(e=>{T+=e});let C=y.filter(e=>"0"!==(e.data.value/T*100).toFixed(0)),b=(0,c.UMr)(D).domain([...$.keys()]);h.selectAll("mySlices").data(C).enter().append("path").attr("d",w).attr("fill",e=>b(e.data.label)).attr("class","pieCircle"),h.selectAll("mySlices").data(C).enter().append("text").text(e=>(e.data.value/T*100).toFixed(0)+"%").attr("transform",e=>"translate("+S.centroid(e)+")").style("text-anchor","middle").attr("class","slice");let A=h.append("text").text(p.getDiagramTitle()).attr("x",0).attr("y",-200).attr("class","pieTitleText"),K=[...$.entries()].map(([e,t])=>({label:e,value:t})),R=h.selectAll(".legend").data(K).enter().append("g").attr("class","legend").attr("transform",(e,t)=>"translate(216,"+(22*t-22*K.length/2)+")");R.append("rect").attr("width",18).attr("height",18).style("fill",e=>b(e.label)).style("stroke",e=>b(e.label)),R.append("text").attr("x",22).attr("y",14).text(e=>p.getShowData()?`${e.label} [${e.value}]`:e.label);let M=Math.max(...R.selectAll("text").nodes().map(e=>{var t;return null!=(t=null==e?void 0:e.getBoundingClientRect().width)?t:0})),z=null!=(s=null==(d=A.node())?void 0:d.getBoundingClientRect().width)?s:0,O=Math.min(0,225-z/2),W=Math.max(512+M,225+z/2)-O;g.attr("viewBox",`${O} 0 ${W} 450`),(0,n.a$)(g,450,W,f.useMaxWidth)},"draw")},styles:C};a.d(t,{diagram:function(){return b}})}}]);