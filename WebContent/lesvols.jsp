<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	                <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!doctype html>
<html class="no-js"  lang="en">
 <body>
		
		<jsp:include page="Menu.jsp" />
		
		<section id="spo" class="special-offer">
			<div class="container">
				<div class="special-offer-content">
					<div class="row">
						<div class="col-sm-12">
							<div class="single-special-offer">
								<div class="single-special-offer-txt">
									<h2>Details Vols</h2>
									
                                    <button onclick="myFunction()" class="LegSummary_container__129Ld LegSummary_opened__3AINT">
           
                                        <div   class="tm-recommended-description-box">
                                            <div class="LegDetails_container__3uhle LegSummary_legDetailsWithChevron__333Y2" aria-hidden="false">
                                                <div class="LogoImage_container__2Q2Ny LegLogo_logoContainer__1Zf8A LegSummary_legLogo__3WRVi" style="margin-left:0;">
                                                    <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xs__1ycc8">          ${volform.avion.nom}  </span>
                                                </div>
                                                <br>
                                                <br>
                                                <br>
                                                <br>
                                                <div class="LegInfo_legInfo__2UyXp" style="margin-left:35%;">
                                                    <div class="LegInfo_routePartialDepart__Ix_Rt">
                                                        <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--lg__1PdnC LegInfo_routePartialTime__ngmkT">
                                                            <div>
                                                                <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xl__HqAik">  ${volform.heureDepart} </span>
                                                            </div>
                                                        </span>
                                                        <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ">
                                                            <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ LegInfo_routePartialCityTooltip__Ao7U-">   ${volform.airport1.nom }  </span>
                                                        </span>
                                                    </div>
                                                    <div class="LegInfo_stopsContainer__2Larg">
                                                        <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xs__1ycc8 Duration_duration__2Evn6">   ${volform.duree}h </span>
                                                        <div class="LegInfo_stopLine__3Zhmj">
                                                            <span class="LegInfo_stopDot__3pQwb"></span>
                                                    <span class="LegInfo_stopDot__3pQwb"></span>
                                                    <span class="LegInfo_stopDot__3pQwb"></span>
                                                    <svg version="1.1" id="Layer_1" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 12 12" enable-background="new 0 0 12 12" xml:space="preserve" class="LegInfo_planeEnd__sWZ93">
                                                        <path fill="#898294" d="M3.922,12h0.499c0.181,0,0.349-0.093,0.444-0.247L7.949,6.8l3.233-0.019C11.625,6.791,11.989,6.44,12,6 c-0.012-0.44-0.375-0.792-0.818-0.781L7.949,5.2L4.866,0.246C4.77,0.093,4.602,0,4.421,0L3.922,0c-0.367,0-0.62,0.367-0.489,0.71 L5.149,5.2l-2.853,0L1.632,3.87c-0.084-0.167-0.25-0.277-0.436-0.288L0,3.509L1.097,6L0,8.491l1.196-0.073 C1.382,8.407,1.548,8.297,1.632,8.13L2.296,6.8h2.853l-1.716,4.49C3.302,11.633,3.555,12,3.922,12"></path>
                                                    </svg>
                                                </div>
                                                <div class="LegInfo_stopsLabelContainer__1S6VX">
                                                    <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xs__1ycc8 LegInfo_stopsLabelRed__33562">
                                                       ${volform.nbescale } escales
                                                    </span>
                                                  
                                                    &nbsp;
                                            </div>
                                            </div>
                                            <div class="LegInfo_routePartialArrive__1fHVy">
                                                <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--lg__1PdnC LegInfo_routePartialTime__ngmkT">
                                                    <div>
                                                        <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--xl__HqAik">  ${volform.heureArrivee }  </span>
                                                    </div>
                                                </span>
                                                <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ">
                                                    <span class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ LegInfo_routePartialCityTooltip__Ao7U-">
                                                    ${volform.airport2.nom }
                                                    </span>
                                                </div>
                                            </div>
                                            
                                            </div> 
                                        </div>
                                    </button>
                                    
                                    
                                    <div   id="myDIV" style="height: auto; overflow: visible; transition: height 200ms ease 0s;display:none;width: 100%; "  >
                                        <div class="DetailsPanelContent_covidContainer__3c8mU" >

  <div class="FlexibleTicketPolicy_container__SbRnx" data-testid="FlexibleTicketPolicy">
      <p class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ BpkText_bpk-text--bold__NhE9P FlexibleTicketPolicy_title__uhIjc">
      COVID-19
      &nbsp;:
       voyagez en toute sérénité
      </p>
      <div class="FlexibleTicketPolicy_subtitle__2qJLa FlexibleTicketPolicy_isItSafeTitle__YUSSM">
     
      <p class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ FlexibleTicketPolicy_message__1xlBA">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18" class="FlexibleTicketPolicy_icon__1iD4F" style="   fill: #ff5100;width: 1.125rem; height: 1.125rem;">
              <path d="M22.192 2.943a2.562 2.562 0 0 0-1.442-1.454 26.458 26.458 0 0 0-17.5 0 2.562 2.562 0 0 0-1.442 1.454A3.867 3.867 0 0 0 1.5 4.416v6.542a12.483 12.483 0 0 0 3.45 8.137 24.682 24.682 0 0 0 5.184 4.363 3.481 3.481 0 0 0 3.732 0 24.709 24.709 0 0 0 5.185-4.363 12.48 12.48 0 0 0 3.45-8.137V4.416a3.87 3.87 0 0 0-.309-1.473zM11.706 9.135a2.39 2.39 0 0 0-1.07 1.07l-.567 1.133a1.195 1.195 0 0 1-2.138 0l-.567-1.133a2.4 2.4 0 0 0-1.069-1.07l-1.134-.567a1.196 1.196 0 0 1 0-2.138l1.133-.567a2.391 2.391 0 0 0 1.07-1.07L7.93 3.66h.001a1.196 1.196 0 0 1 2.138 0l.567 1.133a2.391 2.391 0 0 0 1.07 1.07l1.133.567a1.196 1.196 0 0 1 0 2.138zm6.21 4.72a.797.797 0 0 1-.357.357l-.755.378a1.594 1.594 0 0 0-.713.713l-.378.755a.797.797 0 0 1-1.426 0l-.378-.755a1.594 1.594 0 0 0-.713-.713l-.755-.378a.797.797 0 0 1 0-1.426l.755-.378a1.587 1.587 0 0 0 .713-.713h.001l.377-.755a.797.797 0 0 1 1.426 0l.378.755a1.587 1.587 0 0 0 .713.713l.755.378a.797.797 0 0 1 .357 1.069z"></path>
          </svg>
          Mesures de sécurité&nbsp;: en réponse à la pandémie de COVID-19, les compagnies aériennes ont mis en place des mesures spécifiques à bord. Voici les dispositions mises en place .
      </p>
      </div>

  </div>



  <table class="BpkTable_bpk-table__2AncS AirlineSafetyGrid_tableLayout__3jSvb" >
<tbody>
<tr>
<td class="BpkTable_bpk-table__cell__HQevH">
&nbsp;
</td>
<th scope="col" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_airlineHeader__2SwzB">
</th>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M22.612 4.93a2.148 2.148 0 0 0-1.322-1.16 3.277 3.277 0 0 0-2.744.546 9.288 9.288 0 0 0-2.093 2.043 25.839 25.839 0 0 0-2.338 3.71L7.7 8.036a3 3 0 0 0-2.434.278L3.097 9.6a7.754 7.754 0 0 1 .841-2.939 4.786 4.786 0 0 1 2.403-2.065v-.001a1.608 1.608 0 0 1 1.215.002c.169.093.421.328.421 1.053a.997.997 0 0 0 1.994 0 2.994 2.994 0 0 0-1.447-2.785 3.595 3.595 0 0 0-2.855-.136l-.044.015-.043.018a6.795 6.795 0 0 0-3.385 2.933 11.13 11.13 0 0 0-1.185 5.138L1 10.84l.003.34c-.002.137-.003.275-.003.414a.983.983 0 0 0 .029.238c.242 4.166 2.057 9.668 7.8 9.668a13.095 13.095 0 0 0 11.075-5.887c.2-.268.391-.546.571-.83a17.567 17.567 0 0 0 1.905-4.198 12.277 12.277 0 0 0 .611-4.002 4.25 4.25 0 0 0-.379-1.653zm-2.14 5.08a15.613 15.613 0 0 1-1.683 3.716 9.114 9.114 0 0 1-1.428 1.773c-.833-.488-1.424-1.773-1.324-4.802h.001a22.907 22.907 0 0 1 1.99-3.122 7.336 7.336 0 0 1 1.617-1.606 1.317 1.317 0 0 1 1.082-.298c.003.001.005.001.014.009a.423.423 0 0 1 .082.123 2.361 2.361 0 0 1 .177.88 10.33 10.33 0 0 1-.528 3.327z">
</path>
</svg>
Port du masque obligatoire
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M8.378 4.523a.942.942 0 0 0-1.263.442.867.867 0 0 0 .415 1.13l4.97 2.39a1.841 1.841 0 0 1 .984 2.463l-.064.123a1.022 1.022 0 0 1-1.342.428.938.938 0 0 1-.468-1.24l.021-.044a.131.131 0 0 0-.055-.176l-.007-.004-4.98-2.253A2.745 2.745 0 0 1 5.277 4.21 2.688 2.688 0 0 1 9 2.792l6.625 3.057a2.9 2.9 0 0 1 1.568 1.872l2.035 9.617A.955.955 0 0 1 18.5 18.5a1.005 1.005 0 0 1-1.213-.696l-2.034-9.618a.966.966 0 0 0-.523-.624l-6.352-3.04zM15.5 20.5a1.075 1.075 0 0 1 1-1h4a1 1 0 0 1 0 2h-4a1.075 1.075 0 0 1-1-1z">
</path>
<path d="M4.682 11.5A2.555 2.555 0 0 0 2.5 14.056v1.27a.69.69 0 0 0 .99.515 3.5 3.5 0 0 1 4.668 4.668.692.692 0 0 0 .516.991h3.644a2.155 2.155 0 0 0 2.182-2.127V18.31a6.836 6.836 0 0 0-6.545-6.81z">
</path>
<path d="M5 21.5A2.5 2.5 0 1 0 2.5 19 2.5 2.5 0 0 0 5 21.5z">
</path>
</svg>
Nettoyage quotidien de l’avion en profondeur
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M20.224 5.755l-2.526-3.19a3.368 3.368 0 0 0-3.922-.739l-.673.323a1.024 1.024 0 0 0-.488 1.4 1.112 1.112 0 0 0 1.462.467l.674-.323a1.123 1.123 0 0 1 1.307.247l1.23 1.555H6.712l1.23-1.555a1.123 1.123 0 0 1 1.308-.247l.673.323a1.112 1.112 0 0 0 1.462-.468 1.023 1.023 0 0 0-.488-1.4l-.673-.323a3.37 3.37 0 0 0-3.922.74l-2.526 3.19A3 3 0 0 0 2 8.495v2a3.998 3.998 0 0 0 2 3.465v.991a7.26 7.26 0 0 0 5 7.044 9.079 9.079 0 0 0 6 0 7.26 7.26 0 0 0 5-7.044v-.99a4 4 0 0 0 2-3.466v-2a3 3 0 0 0-1.776-2.74zM20 10.495a2 2 0 0 1-2 2h-3.543l-.732-.925a2.2 2.2 0 0 0-3.45 0l-.732.925H6a2 2 0 0 1-2-2v-2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1z">
</path>
</svg>
Personnel navigant muni d’un équipement de protection individuelle
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M16.55 2.423a.5.5 0 0 1 .292-.644l3-1 .036-.012a.5.5 0 0 1 .28.96l-3 1a.5.5 0 0 1-.608-.304zm4.45.83h-4a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1zm-.842 2.526l-3-1a.5.5 0 0 0-.316.948l3 1 .036.012a.5.5 0 0 0 .28-.96zM16.5 15.92v3.333a4 4 0 0 1-4 4h-6a4 4 0 0 1-4-4V14.91a4 4 0 0 1 1.172-2.829l2.535-2.535a1 1 0 0 0 .293-.707V6.753a.615.615 0 0 0-.495-.562A2 2 0 0 1 4.5 4.253v-1a2 2 0 0 1 2-2h7a1 1 0 0 1 .878.52.786.786 0 0 0 .622.48.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5.786.786 0 0 0-.622.48 1 1 0 0 1-.878.52H13a.424.424 0 0 0-.441.496 7.339 7.339 0 0 0 1.167 2.58.496.496 0 0 1-.426.813 5.755 5.755 0 0 1-2.24-.89.357.357 0 0 0-.56.262v.572a1 1 0 0 0 .615.923l2.924 1.218A4 4 0 0 1 16.5 15.92zm-4 1.333a1 1 0 0 0-1-1h-1v-1a1 1 0 0 0-2 0v1h-1a1 1 0 0 0 0 2h1v1a1 1 0 0 0 2 0v-1h1a1 1 0 0 0 1-1z">
</path>
</svg>
Mise à disposition de lingettes désinfectantes
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M18 2a1 1 0 0 1 .993.884L19 3v18a1 1 0 0 1-1.993.117L17 21v-5h-1a1 1 0 0 1-.993-.883L15 15V7c0-2.21 1.5-5 3-5zm-6 0a1 1 0 0 1 .993.884L13 3v5a4.002 4.002 0 0 1-3 3.874V21a1 1 0 0 1-1.993.117L8 21v-9.126a4.002 4.002 0 0 1-2.995-3.668L5 8V3a1 1 0 0 1 1.993-.117L7 3v5a2 2 0 0 0 1 1.732V3a1 1 0 0 1 1.993-.117L10 3l.001 6.732a2 2 0 0 0 .992-1.563L11 8V3a1 1 0 0 1 1-1z">
</path>
</svg>
Adaptation du service de restauration
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
</tbody>
  </table>


</div>
                            
                                     </div>
                                     <div class="about-btn" style="margin:auto;">
                                     <button onclick="myFunction3()"  class="about-view travel-btn " style="width:100%;margin-top:.375rem;">Passagers
                                    </button>
                                    </div>
                                   
                                   
                                              

                                        <div id="myDIV3"   style="display:none;"  LegSegmentSummary_containerConfigBackground__2Qp5O >
                                                                                                                                           <c:forEach begin="1" end="${volform.nbPassagers }" var="i">
                                                                                       
                                                                                       
                                                                                        <form class="contact100-form validate-form">
                                        
                                            <div class="wrap-contact100 " style="margin: auto;">
                                                   
                                                 
                                              <c:out value="Passager ${i}"/><br>
                                
                                                    <div class="wrap-input100 validate-input bg1 ">
                                                        <div class="wrap-contact100-form-radio">
                                                            <span class="label-input100">Sexe</span>
                                    
                                                            <div class="contact100-form-radio m-t-15">
                                                            <input type="radio" class="input-radio100" id="radio01" value="physical" name="type-product"  checked="checked" />
                                                               
                                                                <label class="label-radio100" for="radio1">
                                                           Homme                                                               
                                                            </label>
                                                            </div>
                                    
                                                            <div class="contact100-form-radio  ">
                                                             <input type="radio" class="input-radio100" id="radio02" value="digital" name="type-product"   />
                                                            
                                                                <label class="label-radio100" for="radio2">
                                                           Femme                                                                
                                                           </label>
                                                            </div>
                                    
                                                        </div>
                                                    </div>
                                                    
                                    
                                                    <div class="wrap-input100 bg1    safae "  style="width:100%;">
                                                        <span class="label-input100">Nom</span>
                                                        <input class="input100" type="text" >
                                                    </div>
                                    
                                    
                                                    <div class="wrap-input100 validate-input bg1    safae" style="width:100%;">
                                                        <span class="label-input100">Prenom</span>
                                                        <input class="input100" type="text"  >
                                                    </div>
                                                    
                                                    </div>
                                                    
                                    
                                    
                             </form>
                                                                 </c:forEach>
                             
                                            </div>
                                        </div>
                                        
                                        
                                             <c:if test="${!empty sessionScope.sessionUtilisateur}">           
                            <!-- lien vers formulaire reservation -->
                                        <div class="about-btn" style="margin:auto;">
                                        
                                     <a name="reserver" class="about-view travel-btn " style="width:100%;margin-top:.375rem;" href="<c:url value="/reservation.jsp"/>">
                                     Réserver
                                    </a>
                                    </div>
                                    </c:if>
                                        
                             <c:if test="${empty sessionScope.sessionUtilisateur}">           
                            
                                        <div class="about-btn" style="margin:auto;">
                                     <button onclick="myFunction2()"  class="about-view travel-btn " style="width:100%;margin-top:.375rem;">Réserver
                                    </button>
                                    </div>
                                    </c:if>
                                    
                                        	
									
										<div  id="myDIV2" style="display:none;">
											<form class="modal-content animate" style="width: 50%;" method="post" action="Reservation.vol">
												
												<div  class="container">
												<div class="gallary-header ">
												<h2 style="font-size: 20px;margin-left:90px;">Veuillez d'abord vous connecter</h2>
												</div>
													<label style="font-family: 'Poppins', sans-serif"><b>Email</b></label> <br>
													<input style="width: 45%;" type="text" placeholder="Enter email" name="email"required><br>
													 
													<label style="font-family: 'Poppins', sans-serif"><b>Mots passe</b></label><br>
													<input style="width: 45%;"type="password" placeholder="Enter mots passe" name="mdp" required><br>
													<span> ${form.resultat}</span><br>
													<button name="seConnecter" type="submit" class="book-btn" style="width: 45%;margin-top:10px;">SE CONNECTER</button>
											</form>
													
													
													
													<div class="gallary-header ">
												    <h2 style="font-size: 20px;margin-left:150px;margin-top:20px;">Nouveau utilisateur</h2>
												      </div>
													
													
											<form method="get" action="Gestion.reserv">
													<button name="creerCompte" type="submit" class="book-btn" style="width: 45%;margin-top:5px;">CREER UN COMPTE</button>
		                                      </form>
		</div>
		
                                                    
                                                </form>
                                            </div>
                                        </div>
										
									</div><!--/.offer-btn-group-->
								</div><!--/.single-special-offer-txt-->
							</div><!--/.single-special-offer-->
						</div><!--/.col-->
						<div class="col-sm-4">
							
						</div><!--/.col-->
					</div><!--/.row-->
				</div><!--/.special-offer-content-->
			</div><!--/.container-->

		</section><!--/.special-offer end-->
		<!--special-offer end-->

		<!--blog start-->
		<section id="blog" class="blog">
			<div class="container">
				<div class="blog-details">
						<div class="gallary-header text-center">
							
<div class="DetailsPanelContent_covidContainer__3c8mU" >

  <div class="FlexibleTicketPolicy_container__SbRnx" data-testid="FlexibleTicketPolicy">
      <p class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ BpkText_bpk-text--bold__NhE9P FlexibleTicketPolicy_title__uhIjc">
      COVID-19
      &nbsp;:
       voyagez en toute sérénité
      </p>
      <div class="FlexibleTicketPolicy_subtitle__2qJLa FlexibleTicketPolicy_isItSafeTitle__YUSSM">
     
      <p class="BpkText_bpk-text__2VouB BpkText_bpk-text--base__3REoZ FlexibleTicketPolicy_message__1xlBA">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18" class="FlexibleTicketPolicy_icon__1iD4F" style="   fill: #ff5100;width: 1.125rem; height: 1.125rem;">
              <path d="M22.192 2.943a2.562 2.562 0 0 0-1.442-1.454 26.458 26.458 0 0 0-17.5 0 2.562 2.562 0 0 0-1.442 1.454A3.867 3.867 0 0 0 1.5 4.416v6.542a12.483 12.483 0 0 0 3.45 8.137 24.682 24.682 0 0 0 5.184 4.363 3.481 3.481 0 0 0 3.732 0 24.709 24.709 0 0 0 5.185-4.363 12.48 12.48 0 0 0 3.45-8.137V4.416a3.87 3.87 0 0 0-.309-1.473zM11.706 9.135a2.39 2.39 0 0 0-1.07 1.07l-.567 1.133a1.195 1.195 0 0 1-2.138 0l-.567-1.133a2.4 2.4 0 0 0-1.069-1.07l-1.134-.567a1.196 1.196 0 0 1 0-2.138l1.133-.567a2.391 2.391 0 0 0 1.07-1.07L7.93 3.66h.001a1.196 1.196 0 0 1 2.138 0l.567 1.133a2.391 2.391 0 0 0 1.07 1.07l1.133.567a1.196 1.196 0 0 1 0 2.138zm6.21 4.72a.797.797 0 0 1-.357.357l-.755.378a1.594 1.594 0 0 0-.713.713l-.378.755a.797.797 0 0 1-1.426 0l-.378-.755a1.594 1.594 0 0 0-.713-.713l-.755-.378a.797.797 0 0 1 0-1.426l.755-.378a1.587 1.587 0 0 0 .713-.713h.001l.377-.755a.797.797 0 0 1 1.426 0l.378.755a1.587 1.587 0 0 0 .713.713l.755.378a.797.797 0 0 1 .357 1.069z"></path>
          </svg>
          Mesures de sécurité&nbsp;: en réponse à la pandémie de COVID-19, les compagnies aériennes ont mis en place des mesures spécifiques à bord. Voici les dispositions mises en place .
      </p>
      </div>

  </div>



  <table class="BpkTable_bpk-table__2AncS AirlineSafetyGrid_tableLayout__3jSvb" >
<tbody>
<tr>
<td class="BpkTable_bpk-table__cell__HQevH">
&nbsp;
</td>
<th scope="col" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_airlineHeader__2SwzB">
</th>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M22.612 4.93a2.148 2.148 0 0 0-1.322-1.16 3.277 3.277 0 0 0-2.744.546 9.288 9.288 0 0 0-2.093 2.043 25.839 25.839 0 0 0-2.338 3.71L7.7 8.036a3 3 0 0 0-2.434.278L3.097 9.6a7.754 7.754 0 0 1 .841-2.939 4.786 4.786 0 0 1 2.403-2.065v-.001a1.608 1.608 0 0 1 1.215.002c.169.093.421.328.421 1.053a.997.997 0 0 0 1.994 0 2.994 2.994 0 0 0-1.447-2.785 3.595 3.595 0 0 0-2.855-.136l-.044.015-.043.018a6.795 6.795 0 0 0-3.385 2.933 11.13 11.13 0 0 0-1.185 5.138L1 10.84l.003.34c-.002.137-.003.275-.003.414a.983.983 0 0 0 .029.238c.242 4.166 2.057 9.668 7.8 9.668a13.095 13.095 0 0 0 11.075-5.887c.2-.268.391-.546.571-.83a17.567 17.567 0 0 0 1.905-4.198 12.277 12.277 0 0 0 .611-4.002 4.25 4.25 0 0 0-.379-1.653zm-2.14 5.08a15.613 15.613 0 0 1-1.683 3.716 9.114 9.114 0 0 1-1.428 1.773c-.833-.488-1.424-1.773-1.324-4.802h.001a22.907 22.907 0 0 1 1.99-3.122 7.336 7.336 0 0 1 1.617-1.606 1.317 1.317 0 0 1 1.082-.298c.003.001.005.001.014.009a.423.423 0 0 1 .082.123 2.361 2.361 0 0 1 .177.88 10.33 10.33 0 0 1-.528 3.327z">
</path>
</svg>
Port du masque obligatoire
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M8.378 4.523a.942.942 0 0 0-1.263.442.867.867 0 0 0 .415 1.13l4.97 2.39a1.841 1.841 0 0 1 .984 2.463l-.064.123a1.022 1.022 0 0 1-1.342.428.938.938 0 0 1-.468-1.24l.021-.044a.131.131 0 0 0-.055-.176l-.007-.004-4.98-2.253A2.745 2.745 0 0 1 5.277 4.21 2.688 2.688 0 0 1 9 2.792l6.625 3.057a2.9 2.9 0 0 1 1.568 1.872l2.035 9.617A.955.955 0 0 1 18.5 18.5a1.005 1.005 0 0 1-1.213-.696l-2.034-9.618a.966.966 0 0 0-.523-.624l-6.352-3.04zM15.5 20.5a1.075 1.075 0 0 1 1-1h4a1 1 0 0 1 0 2h-4a1.075 1.075 0 0 1-1-1z">
</path>
<path d="M4.682 11.5A2.555 2.555 0 0 0 2.5 14.056v1.27a.69.69 0 0 0 .99.515 3.5 3.5 0 0 1 4.668 4.668.692.692 0 0 0 .516.991h3.644a2.155 2.155 0 0 0 2.182-2.127V18.31a6.836 6.836 0 0 0-6.545-6.81z">
</path>
<path d="M5 21.5A2.5 2.5 0 1 0 2.5 19 2.5 2.5 0 0 0 5 21.5z">
</path>
</svg>
Nettoyage quotidien de l’avion en profondeur
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M20.224 5.755l-2.526-3.19a3.368 3.368 0 0 0-3.922-.739l-.673.323a1.024 1.024 0 0 0-.488 1.4 1.112 1.112 0 0 0 1.462.467l.674-.323a1.123 1.123 0 0 1 1.307.247l1.23 1.555H6.712l1.23-1.555a1.123 1.123 0 0 1 1.308-.247l.673.323a1.112 1.112 0 0 0 1.462-.468 1.023 1.023 0 0 0-.488-1.4l-.673-.323a3.37 3.37 0 0 0-3.922.74l-2.526 3.19A3 3 0 0 0 2 8.495v2a3.998 3.998 0 0 0 2 3.465v.991a7.26 7.26 0 0 0 5 7.044 9.079 9.079 0 0 0 6 0 7.26 7.26 0 0 0 5-7.044v-.99a4 4 0 0 0 2-3.466v-2a3 3 0 0 0-1.776-2.74zM20 10.495a2 2 0 0 1-2 2h-3.543l-.732-.925a2.2 2.2 0 0 0-3.45 0l-.732.925H6a2 2 0 0 1-2-2v-2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1z">
</path>
</svg>
Personnel navigant muni d’un équipement de protection individuelle
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M16.55 2.423a.5.5 0 0 1 .292-.644l3-1 .036-.012a.5.5 0 0 1 .28.96l-3 1a.5.5 0 0 1-.608-.304zm4.45.83h-4a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1zm-.842 2.526l-3-1a.5.5 0 0 0-.316.948l3 1 .036.012a.5.5 0 0 0 .28-.96zM16.5 15.92v3.333a4 4 0 0 1-4 4h-6a4 4 0 0 1-4-4V14.91a4 4 0 0 1 1.172-2.829l2.535-2.535a1 1 0 0 0 .293-.707V6.753a.615.615 0 0 0-.495-.562A2 2 0 0 1 4.5 4.253v-1a2 2 0 0 1 2-2h7a1 1 0 0 1 .878.52.786.786 0 0 0 .622.48.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5.786.786 0 0 0-.622.48 1 1 0 0 1-.878.52H13a.424.424 0 0 0-.441.496 7.339 7.339 0 0 0 1.167 2.58.496.496 0 0 1-.426.813 5.755 5.755 0 0 1-2.24-.89.357.357 0 0 0-.56.262v.572a1 1 0 0 0 .615.923l2.924 1.218A4 4 0 0 1 16.5 15.92zm-4 1.333a1 1 0 0 0-1-1h-1v-1a1 1 0 0 0-2 0v1h-1a1 1 0 0 0 0 2h1v1a1 1 0 0 0 2 0v-1h1a1 1 0 0 0 1-1z">
</path>
</svg>
Mise à disposition de lingettes désinfectantes
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
<tr class="AirlineSafetyGrid_safetyGridRow__163HR">
<th scope="row" class="BpkTable_bpk-table__cell__HQevH BpkTable_bpk-table__cell--head__O1PC6 AirlineSafetyGrid_descriptionCell__2Rnha">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_featureIcon__2Io98" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M18 2a1 1 0 0 1 .993.884L19 3v18a1 1 0 0 1-1.993.117L17 21v-5h-1a1 1 0 0 1-.993-.883L15 15V7c0-2.21 1.5-5 3-5zm-6 0a1 1 0 0 1 .993.884L13 3v5a4.002 4.002 0 0 1-3 3.874V21a1 1 0 0 1-1.993.117L8 21v-9.126a4.002 4.002 0 0 1-2.995-3.668L5 8V3a1 1 0 0 1 1.993-.117L7 3v5a2 2 0 0 0 1 1.732V3a1 1 0 0 1 1.993-.117L10 3l.001 6.732a2 2 0 0 0 .992-1.563L11 8V3a1 1 0 0 1 1-1z">
</path>
</svg>
Adaptation du service de restauration
</th>
<td class="BpkTable_bpk-table__cell__HQevH AirlineSafetyGrid_tableCell__2nacw" aria-label="yes">
<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" class="AirlineSafetyGrid_tickIcon__1wLQ0" aria-hidden="true" style="width: 1.5rem; height: 1.5rem;">
<path d="M12 2a10 10 0 1 0 10 10A10.03 10.03 0 0 0 12 2zm4.707 7.858L11.064 16l-3.701-3.329a1.155 1.155 0 0 1-.134-1.532.946.946 0 0 1 1.408-.146l2.299 2.068 4.357-4.743a.944.944 0 0 1 1.414 0 1.16 1.16 0 0 1 0 1.54z">
</path>
</svg>
</td>
</tr>
</tbody>
  </table>


</div>
						</div><!--/.gallery-header-->
						
					</div><!--/.blog-details-->
				</div><!--/.container-->

        </section><!--/.blog-->
        
		<!--blog end-->
		<!-- footer-copyright start -->
		<footer  class="footer-copyright">
			<div class="container">
				<div class="footer-content">
					<div class="row">

						<div class="col-sm-3">
							<div class="single-footer-item">
								<div class="footer-logo">
									<a href="index.html">
										tour<span>Nest</span>
									</a>
									<p>
										best travel agency
									</p>
								</div>
							</div><!--/.single-footer-item-->
						</div><!--/.col-->

						<div class="col-sm-3">
							<div class="single-footer-item">
								<h2>link</h2>
								<div class="single-footer-txt">
									<p><a href="#">home</a></p>
									<p><a href="#">destination</a></p>
									<p><a href="#">spacial packages</a></p>
									<p><a href="#">special offers</a></p>
									<p><a href="#">blog</a></p>
									<p><a href="#">contacts</a></p>
								</div><!--/.single-footer-txt-->
							</div><!--/.single-footer-item-->

						</div><!--/.col-->

						<div class="col-sm-3">
							<div class="single-footer-item">
								<h2>popular destination</h2>
								<div class="single-footer-txt">
									<p><a href="#">china</a></p>
									<p><a href="#">venezuela</a></p>
									<p><a href="#">brazil</a></p>
									<p><a href="#">australia</a></p>
									<p><a href="#">london</a></p>
								</div><!--/.single-footer-txt-->
							</div><!--/.single-footer-item-->
						</div><!--/.col-->

						<div class="col-sm-3">
							<div class="single-footer-item text-center">
								<h2 class="text-left">contacts</h2>
								<div class="single-footer-txt text-left">
									<p>+1 (300) 1234 6543</p>
									<p class="foot-email"><a href="#">info@tnest.com</a></p>
									<p>North Warnner Park 336/A</p>
									<p>Newyork, USA</p>
								</div><!--/.single-footer-txt-->
							</div><!--/.single-footer-item-->
						</div><!--/.col-->

					</div><!--/.row-->

				</div><!--/.footer-content-->
				<hr>
				<div class="foot-icons ">
					<ul class="footer-social-links list-inline list-unstyled">
		                <li><a href="#" target="_blank" class="foot-icon-bg-1"><i class="fa fa-facebook"></i></a></li>
		                <li><a href="#" target="_blank" class="foot-icon-bg-2"><i class="fa fa-twitter"></i></a></li>
		                <li><a href="#" target="_blank" class="foot-icon-bg-3"><i class="fa fa-instagram"></i></a></li>
		        	</ul>
		        	<p>&copy; 2017 <a href="https://www.themesine.com">ThemeSINE</a>. All Right Reserved</p>

		        </div><!--/.foot-icons-->
				<div id="scroll-Top">
					<i class="fa fa-angle-double-up return-to-top" id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
				</div><!--/.scroll-Top-->
			</div><!-- /.container-->

		</footer><!-- /.footer-copyright-->
		<!-- footer-copyright end -->




		<script src="assets/js/jquery.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->

		<!--modernizr.min.js-->
		<script  src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>


		<!--bootstrap.min.js-->
		<script  src="assets/js/bootstrap.min.js"></script>

		<!-- bootsnav js -->
		<script src="assets/js/bootsnav.js"></script>

		<!-- jquery.filterizr.min.js -->
		<script src="assets/js/jquery.filterizr.min.js"></script>

		<script  src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

		<!--jquery-ui.min.js-->
        <script src="assets/js/jquery-ui.min.js"></script>

        <!-- counter js -->
		<script src="assets/js/jquery.counterup.min.js"></script>
		<script src="assets/js/waypoints.min.js"></script>

		<!--owl.carousel.js-->
        <script  src="assets/js/owl.carousel.min.js"></script>

        <!-- jquery.sticky.js -->
		<script src="assets/js/jquery.sticky.js"></script>

        <!--datepicker.js-->
        <script  src="assets/js/datepicker.js"></script>

		<!--Custom JS-->
		<script src="assets/js/custom.js"></script>
        <script>
            function myFunction() {
              var x = document.getElementById("myDIV");
              if (x.style.display === "none") {
                x.style.display = "block";
              } else {
                x.style.display = "none";

              }
            }
            </script>
             <script>
                function myFunction2() {
                  var x = document.getElementById("myDIV2");
                  if (x.style.display === "none") {
                    x.style.display = "block";
                  } else {
                    x.style.display = "none";
    
                  }
                }
             </script>
              <script>
                function myFunction3() {
                  var x = document.getElementById("myDIV3");
                  if (x.style.display === "none") {
                    x.style.display = "block";
                  } else {
                    x.style.display = "none";
    
                  }
                }
             </script>
            

	</body>

</html>