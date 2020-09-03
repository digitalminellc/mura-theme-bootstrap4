<cfcomponent extends="mura.cfobject">

	<!---
			This is the THEME contentRenderer.cfc

			* Add theme-specific methods here
			* Any methods here will be accessible with the following notation:
				$.yourFunctionName()
	--->

	<cfscript>
		// GENERAL
		this.deferMuraJS = true;
		this.layoutmanager = true;
		this.legacyobjects = false;
		this.validateCSRFTokens = true; //This will eventually default to true
		this.jsLib = 'jquery';
		this.jsLibLoaded = true;
		this.suppressWhitespace = false;
		this.generalWrapperClass = '';
		this.generalWrapperBodyClass = '';
		this.bodymetaImageClass = '';

		// headings
		this.headline = "h1";
		this.subHead1 = "h2";
		this.subHead2 = "h3";
		this.subHead3 = "h4";
		this.subHead4 = "h5";

		// preloader markup for async objects
		this.preloaderMarkup='<i class="mura-preloader fa fa-refresh fa-spin"></i>';

		// nav and list item vars
		this.navWrapperClass = "mura-nav bg-light p-3 mb-5 border rounded";
		this.navWrapperBodyClass = "";
		this.navLIClass = "nav-item";
		this.liHasKidsClass = "";
		this.liHasKidsCustomString = "";
		this.liCurrentClass = "";
		this.liCurrentCustomString = "";
		this.aNotCurrentClass = "nav-link";
		this.aHasKidsClass = "";
		this.aHasKidsCustomString = "";
		this.aCurrentClass = "nav-link active";
		this.aCurrentCustomString = "";
		this.ulTopClass = "nav flex-column";
		this.ulNestedClass = "nav flex-column ml-3 bl-1";
		this.ulNestedCustomString = "";
		this.liNestedClass = "";

		this.navSubWrapperClass=this.navWrapperClass;
		this.navSubWrapperBodyClass=this.navWrapperBodyClass;
		this.navPeerWrapperClass=this.navWrapperClass;
		this.navPeerWrapperBodyClass=this.navWrapperBodyClass;
		this.navFolderWrapperClass=this.navWrapperClass;
		this.navFolderWrapperBodyClass=this.navWrapperBodyClass;
		this.navStandardWrapperClass=this.navWrapperClass;
		this.navStandardWrapperBodyClass=this.navWrapperBodyClass;
		this.navMultiLevelWrapperClass=this.navWrapperClass;
		this.navMultiLevelWrapperBodyClass=this.navWrapperBodyClass;
		this.navArchiveWrapperClass=this.navWrapperClass;
		this.navArchiveWrapperBodyClass=this.navWrapperBodyClass;
		this.navCategoryWrapperClass=this.navWrapperClass;
		this.navCategoryWrapperBodyClass=this.navWrapperBodyClass;

		//Queue async display objects to render when scrolled into view
		//this.queueObjects=true;

		// pagination vars
		this.ulPaginationClass="pagination";
		this.ulPaginationWrapperClass="";
		this.liPaginationCurrentClass="page-item active";
		this.liPaginationNotCurrentClass="page-item";
		this.aPaginationCurrentClass="page-link";
		this.aPaginationNotCurrentClass="page-link";

		//These are used as primary form settings as well as in the form builder.
		this.formWrapperClass = "";
		this.formWrapperClass=this.generalWrapperClass;
		this.formWrapperBodyClass=this.generalWrapperBodyClass;
		this.formErrorWrapperClass = "";
		this.formResponseWrapperClass = "";
		this.formFieldWrapperClass = "form-group";
		this.formFieldLabelClass = "control-label";
		this.formInputWrapperClass = "input-group";
		this.formInputClass ="form-control";
		this.formGeneralControlClass = "form-control";
		this.formInputClass=this.formGeneralControlClass;
		this.formSelectClass = this.formGeneralControlClass;
		this.formTextareaClass = this.formGeneralControlClass;
		this.formFileClass = this.formGeneralControlClass;
		this.formCheckboxClass = "form-check-input";
		this.formCheckboxLabelClass = "form-check-label";
		this.formCheckboxWrapperClass = "form-check";
		this.formRadioClass = "form-check-input";
		this.formRadioLabelClass = "form-check-label";
		this.formRadioWrapperClass = "form-check";
		this.formButtonWrapperClass = "btn-group";
		this.formButtonInnerClass="";
		this.formButtonClass = "btn btn-primary";
		this.formRequiredWrapperClass="";
		this.formButtomSubmitclass = "form-submit btn btn-primary";
		this.formButtonSubmitLabel = "Submit";
		this.formButtonNextClass = "form-nav";
		this.formButtonNextLabel = "Next";
		this.formButtonBackClass = "form-nav";
		this.formButtonBackLabel = "Back";
		this.formButtonCancelLabel = "Cancel";
		this.formButtonCancelClass = "form-cancel btn btn-danger";

		// images
		this.imageClass="img-thumbnail";

		// tables
		this.tableClass = "table table-bordered table-striped";
		this.tableHeadClass = "";
		this.tableHeaderClass = "";
		this.tableBodyClass = "";
		this.tableRowClass = "";
		this.tableCellClass = "";
		this.tableFooterClass = "";

		// alerts
		this.alertSuccessClass = "alert alert-success";
		this.alertInfoClass = "alert alert-info";
		this.alertWarningClass = "alert alert-warning";
		this.alertDangerClass = "alert alert-danger";

		// SPECIFIC (Display Objects)
		// Use these variables to pass-in specific classes without having to create custom versions of the include

		// calendar/dsp_showMonth.cfm
		this.calendarWrapperClass="";
		this.calendarTableClass=this.tableClass;
		//this.calendarTableHeaderClass="";

		// calendar/dspList.cfm
		this.calendarListWrapperClass="";

		// comments/index.cfm
		this.commentsWrapperClass="bg-light p-3 mb-5 border rounded";
		this.commentSortContainerClass="";
		this.commentSortWrapperClass="";
		this.commentSortSelectClass=this.formInputClass;
		this.commentFormWrapperClass=this.generalWrapperClass;
		this.commentFormClass="";
		this.commentNewClass=this.formButtonClass;
		this.commentFieldWrapperClass=this.formFieldWrapperClass;
		this.commentFieldLabelClass=this.formFieldLabelClass;
		this.commentInputWrapperClass="";
		this.commentInputClass=this.formInputClass;
		this.commentCheckboxClass="";
		this.commentPrefsInputWrapperClass="";
		this.commentSubmitButtonWrapperClass="";
		this.commentSubmitButtonClass=this.formButtonClass;
		this.commentMoreCommentsUpClass="btn btn-primary";
		this.commentMoreCommentsDownClass="btn btn-primary";
		this.commentMoreCommentsContainer="";
		this.commentRequiredWrapperClass="";
		this.commentThumbClass="img-thumbnail";
		this.commentSpamClass="";
		this.commentSpamLinkClass="";
		this.commentClass="";
		this.commentDateTimeClass="";
		this.commentReplyClass="";
		this.commentAwaitingApproval="";
		this.commentAdminButtonWrapperClass="btn-group pull-right";
		this.commentUserEmailClass="btn btn-default btn-sm";
		this.commentDeleteButtonClass="btn btn-default btn-sm";
		this.commentEditButtonClass="btn btn-default btn-sm";
		this.commentApproveButtonClass="btn btn-default btn-sm";

		// comments/dsp_comment.cfm
	 	this.emailLinkClass=this.formButtonClass;
		this.commentsLinkClass=this.formButtonClass;
		this.approveCommentLinkClass=this.formButtonClass;
		this.deleteCommentLinkClass=this.formButtonClass;

		// dataresponses/dsp_detail.cfm
		this.dataResponseListClass="dl-horizontal";

		// dataresponses/dsp_list.cfm
		this.dataResponseTableClass="table table-hover";
		this.dataResponsePaginationClass=this.ulPaginationClass;

		// draggablefeeds/index.cfm
		this.draggableBoxWrapperClass="row";
		this.draggableBoxHeaderClass="col-lg-12";
		this.draggableBoxRSSWrapperClass="";
		this.draggableBoxHeaderButtonClass=this.formButtonClass;
		//this.draggableBoxRSSeditFormClass="";
		this.draggableBoxAddFeedWrapperClass="";
		this.draggableBoxNewFeedFormClass="form-horizontal";
		this.draggableBoxSelectFeedWrapperClass="col-lg-6";
		this.draggableBoxSelectFeedRowClass="row";
		this.draggableBoxSelectFeedMenuClass=this.formFieldWrapperClass;
		this.draggableBoxSelectFeedMenuDivClass="col-lg-10";
		this.draggableFeedMenuSelectFieldClass=this.formInputClass;
		this.addFeedButtonWrapperDivClass=this.formFieldWrapperClass;
		this.addFeedButtonWrapperDivInnerClass="col-lg-2";
		this.addFeedButtonClass=this.formButtonClass;

		// dsp_categories_nest.cfm
		this.categoriesNestCheckboxClass="checkbox";

		// dsp_content_list.cfm
		this.contentListImageStyles=true;
		this.contentListImagePadding=20;  //must be pixels
		this.contentListPropertyMap={
			containerEl={tag="div"},
			itemEl={tag="dl"},
			labelEl={tag="span"},
			title={tag="dt"},
			date={tag="dt"},
			credits={tag="dd",showLabel=true,rbkey="list.by"},
			tags={tag="dd",showLabel=true,labelDelim=":",rbkey="tagcloud.tags"},
			rating={tag="dd",showLabel=true,labelDelim=":",rbkey="list.rating"},
			"default"={tag="dd"}
		};

		this.contentListWrapperDivClass="";
		this.contentListItemImageLinkClass="";
		this.aContentListCurrentClass='';
		this.aContentListCurrentAttributes='';
		this.aContentListNotCurrentClass='';

		//dsp_meta_list.cfm
		this.aMetaListCurrentClass='';
		this.aMetaListCurrentAttributes='';
		this.aMetaListNotCurrentClass='';

		// dsp_folder.cfm
		this.folderWrapperClass="";

		// dsp_edit_profile.cfm
		this.editProfileWrapperClass="";
		this.editProfileFormClass="form-horizontal";
		this.editProfileFormGroupWrapperClass=this.formFieldWrapperClass;
		this.editProfileFieldLabelClass="control-label";
		this.editProfileFormFieldsWrapperClass="";
		this.editProfileFormFieldsClass=this.formInputClass;
		this.editProfileExtAttributeDownloadClass="";
		this.editProfileHelpBlockClass="";
		this.editProfileExtAttributeFileWrapperClass="";
		this.editProfileExtAttributeDownloadClass="";
		this.editProfileExtAttributeDownloadButtonClass=this.formButtonClass;
		this.editProfileSubmitButtonWrapperClass="";
		this.editProfileSubmitButtonClass="btn btn-primary";
		this.editProfileSuccessMessageClass=this.alertSuccessClass;

		// dsp_email_dropdown.cfm
		this.emailDropdownSelectClass="dropdown";

		// dsp_event_reminder_form.cfm
		this.eventReminderFormWrapperClass="";
		this.eventReminderFormClass=this.generalWrapperClass;
		this.eventReminderFieldWrapperClass="";
		this.eventReminderFormLabelsClass=this.formFieldLabelClass;
		this.eventReminderSubmitClass=this.formButtonClass;

		// dsp_features.cfm
		this.featuresWrapperClass="";

		// dsp_feed.cfm
		this.localIndexWrapperClass="";
		this.remoteFeedWrapperClass="";

		// dsp_login.cfm
		this.loginWrapperClass="";
		this.loginWrapperInnerClass="";
		this.loginFormClass="form-horizontal form-signin";
		this.forgotPasswordFormClass="form-horizontal form-sendlogin";
		this.loginFormGroupWrapperClass=this.formFieldWrapperClass;
		this.loginFormFieldLabelClass="control-label";
		this.loginFormFieldWrapperClass="";
		this.loginFormFieldClass=this.formInputClass;
		this.loginFormPrefsClass="";
		this.loginFormCheckboxClass="checkbox";
		this.loginFormSubmitWrapperClass="";
		this.loginFormSubmitClass=this.formButtonClass;
		this.notRegisteredLinkClass="btn btn-primary";

		// dsp_mailing_list_master.cfm
		this.mailingListWrapperClass=this.generalWrapperClass;
		this.mailingListFormClass="form-horizontal";
		this.mailingListFormGroupWrapperClass=this.formFieldWrapperClass;
		this.mailingListFormLabelClass="control-label col-lg-2";
		this.mailingListFormFieldWrapperClass="col-lg-10";
		this.mailingListFormInputClass=this.formInputClass;
		this.mailingListCheckboxWrapperClass="col-lg-offset-2 col-lg-10";
		this.mailingListCheckboxClass="checkbox";
		this.mailingListSubmitWrapperClass="col-lg-offset-2 col-lg-10";
		this.mailingListSubmitClass=this.formButtonClass;

		// dsp_nextN.cfm
		this.nextNWrapperClass="";
		this.nextNInnerClass="";

		// dsp_search_form.cfm
		this.searchFormClass="";
		this.searchFormInputWrapperClass=this.formInputWrapperClass;
		this.searchFormInputClass=this.formInputClass;
		this.searchFormSubmitWrapperClass=this.formButtonInnerClass;
		this.searchFormSubmitClass="btn btn-primary";

		// dsp_search_results.cfm
		this.searchShowNumbers=0;
		this.searchResultWrapperClass="";
		this.searchResultInnerClass="lead";
		this.searchResultsRowClass="";
		this.searchResultsMoreResultsRowClass="bg-light py-2 px-3 mb-3 border rounded";
		this.searchResultsListClass="";
		this.searchResultsPagerClass="pager";
		this.searchAgainRowClass="card";
		this.searchAgainInnerClass="card-body";
		this.searchAgainFormClass="navbar-form";
		this.searchAgainInputWrapperClass=this.formInputWrapperClass;
		this.searchAgainFormInputClass=this.formInputClass;
		this.searchAgainButtonWrapperClass=this.formButtonInnerClass;
		this.searchAgainSubmitClass=this.formButtonClass;

		// dsp_user_tools.cfm
		this.userToolsLoginWrapperClass="bg-light p-3 mb-5 border rounded";
		this.userToolsLoginFormClass="";
		this.userToolsFormGroupWrapperClass=this.formFieldWrapperClass;
		this.userToolsLoginFormLabelClass="control-label";
		this.userToolsLoginFormInputWrapperClass="";
		this.userToolsLoginFormInputClass=this.formInputClass;
		this.userToolsLoginFormFieldInnerClass="";
		this.userToolsLoginFormCheckboxClass="checkbox";
		this.userToolsLoginFormSubmitClass=this.formButtonClass;
		this.userToolsNotRegisteredLinkClass="btn btn-primary";
		this.userToolsWrapperClass="bg-light p-3 mb-5 border rounded";
		this.userToolsEditProfileLinkClass="btn btn-primary";
		this.userToolsLogoutLinkClass="btn btn-primary";

		// formbuilder/dsp_form.cfm
		this.formBuilderFieldWrapperClass=this.formFieldWrapperClass;
		this.formBuilderButtonWrapperClass="";
		this.formBuilderSubmitClass=this.formButtonClass;

		// formbuilder/fields/dsp_checkbox.cfm
		// formbuilder/fields/dsp_dropdown.cfm
		// formbuilder/fields/dsp_file.cfm
		// formbuilder/fields/dsp_radio.cfm
		// formbuilder/fields/dsp_textfield.cfm

		this.formBuilderFormFieldsClass=this.formInputClass;

		// formbuilder/fields/field_dropdown.cfm
		this.formBuilderTabHeaderClass="dropdown";
		this.formBuilderDisabledInputClass="disabled";
		this.formBuilderCheckboxClass="checkbox";

		// gallery/index.cfm
		this.galleryWrapperClass="";
		this.galleryULClass="clearfix";
		this.galleryThumbnailClass="thumbnail";

		// nav/calendarNav/index.cfm
		this.navCalendarWrapperClass="";

		// nav/calendarNav/navTools.cfc
		this.navCalendarTableClass="table table-bordered";

		// nav/dsp_sequential.cfm
		this.navSequentialWrapperClass="";
		this.navSequentialULClass="";

		// nav/dsp_tag_cloud.cfm
		this.tagCloudWrapperClass="bg-light p-3 mb-5 border rounded";

		// navArchive
		//this.navArchiveWrapperClass="";
		//this.navArchiveListClass="";

		// navBreadcrumb
		this.navBreadcrumbULClass="breadcrumb";
		this.liBreadcrumbCurrentClass="breadcrumb-item active";
		this.liBreadcrumbNotCurrentClass="breadcrumb-item";
		this.aBreadcrumbCurrentClass="";
		this.aBreadcrumbNotCurrentClass="";

		// rater/index.cfm
		this.raterObjectWrapperClass="";
		this.raterWrapperClass="";
		this.avgRatingWrapperClass="";

		//7.1
		this.navPrevDecoration="";
		this.navNextDecoration="";
		this.userFavoritesWrapperClass="bg-light p-3 mb-5 border rounded";
		this.pageToolsWrapperClass="bg-light p-3 mb-5 border rounded";
	</cfscript>

	<cffunction name="dspCarouselByFeedName" output="false">
		<cfargument name="feedName" type="string" default="Slideshow" />
		<cfargument name="showCaption" type="boolean" default="true" />
		<cfargument name="cssID" type="string" default="myCarousel" />
		<cfargument name="size" type="string" default="custom" hint="If you want to use a custom height/width, then use 'custom' ... otherwise, you can use 'small, medium, large' OR any other predefined custom image size 'name' you created via the back-end administrator." />
		<cfargument name="width" type="numeric" default="1280" hint="width in pixels" />
		<cfargument name="height" type="numeric" default="500" hint="height in pixels" />
		<cfargument name="interval" type="any" default="5000" hint="Use either milliseconds OR use 'false' to NOT auto-advance to next slide." />
		<cfargument name="autoStart" type="boolean" default="true" />
		<cfargument name="showIndicators" type="boolean" default="true" />

		<cfscript>
			var local = {};
			local.imageArgs = {};

			if ( not ListFindNoCase('small,medium,large,custom', arguments.size) and variables.$.getBean('imageSize').loadBy(name=arguments.size,siteID=variables.$.event('siteID')).getIsNew() ) {
				arguments.size = 'custom';
			};

			if ( not Len(Trim(arguments.size)) or LCase(arguments.size) eq 'custom' ) {
				local.imageArgs.width = Val(arguments.width);
				local.imageArgs.height = Val(arguments.height);
			} else {
				local.imageArgs.size = arguments.size;
			};
		</cfscript>

		<cfsavecontent variable="local.str">
			<cfoutput>
				<!--- BEGIN: Bootstrap Carousel --->
				<!--- IMPORTANT: This will only output items that have associated images --->
				<cfset local.feed = variables.$.getBean('feed').loadBy(name=arguments.feedName)>
				<cfset local.iterator = local.feed.getIterator()>


					<cfif local.feed.getIsNew()>

						<div class="alert alert-warning alert-dismissible fade show" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							The <strong>#HTMLEditFormat(arguments.feedName)#</strong> Content Collection/Local Index does not exist.
						</div>

					<cfelseif local.iterator.hasNext()>

						<div id="#arguments.cssID#" class="carousel slide" data-ride="carousel" data-interval="#arguments.interval#">

							<!--- Indicators --->
							<cfif arguments.showIndicators>
								<ol class="carousel-indicators">
									<cfset local.iterator.reset()>
									<cfset local.idx = 0>
									<cfloop condition="local.iterator.hasNext()">
										<cfset local.item=iterator.next()>
										<cfif ListFindNoCase('jpg,jpeg,gif,png', ListLast(local.item.getImageURL(), '.'))>
											<li data-target="###arguments.cssID#" data-slide-to="#idx#" class="<cfif local.idx eq 0>active</cfif>"></li>
											<cfset local.idx++>
										</cfif>
									</cfloop>
								</ol>
							</cfif>

							<!--- Wrapper for slides --->
							<div class="carousel-inner">
								<cfset local.iterator.reset()>
								<cfset local.idx = 0>
								<cfloop condition="local.iterator.hasNext()">
									<cfset local.item=iterator.next()>
									<cfif ListFindNoCase('jpg,jpeg,gif,png', ListLast(local.item.getImageURL(), '.'))>
										<div class="carousel-item<cfif local.idx eq 0> active</cfif>">

											<img src="#local.item.getImageURL(argumentCollection=local.imageArgs)#" alt="#HTMLEditFormat(local.item.getTitle())#" class="d-block w-100">
											<cfif arguments.showCaption>
												<div class="carousel-caption d-none d-md-block p-md-5">
													<div class="container">
														<h3><a href="#local.item.getURL()#">#HTMLEditFormat(local.item.getTitle())#</a></h3>
														#local.item.getSummary()#
														<a class="btn btn-primary btn-sm mb-2" href="#local.item.getURL()#">Read More</a>
													</div>
												</div>
											</cfif>
										</div>
										<cfset local.idx++>
									</cfif>
								</cfloop>
							</div>

							<cfif local.idx>
								<!--- Controls --->
								<cfif local.idx gt 1>

									<a class="carousel-control-prev" href="###arguments.cssID#" role="button" data-slide="prev">
										<span class="carousel-control-prev-icon" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="carousel-control-next" href="###arguments.cssID#" role="button" data-slide="next">
										<span class="carousel-control-next-icon" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
									<!--- AutoStart --->
									<cfif arguments.autoStart>
										<script>jQuery(document).ready(function($){$('###arguments.cssID#').carousel({interval:#arguments.interval#});});</script>
									</cfif>

								</cfif>

							<cfelse>

								<div class="alert alert-warning alert-dismissible fade show" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									Your feed has no items <em>with images</em>.
								</div>

							</cfif>

						</div>
					<cfelse>

						<div class="alert alert-warning alert-dismissible fade show" role="alert">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<strong>Heads up!</strong> Your feed has no items.
						</div>

					</cfif>

			</cfoutput>
		</cfsavecontent>
		<cfreturn local.str />
	</cffunction>

	<cffunction name="dspPrimaryNavKids">
		<cfscript>
			var returnString = '';
			var kids = $.getFeed('content').set(arguments).getIterator();
			var kid = '';
			var started = false;
		</cfscript>

		<cfif kids.hasNext()>
			<cfsavecontent variable="returnString">
				<cfoutput>
					<div class="dropdown-menu">
						<cfloop condition="kids.hasNext()">
							<cfset kid=kids.next()>
							<cfif allowLink(kid.getRestricted(),kid.getRestrictGroups(),m.event('r').loggedIn)>
								<cfset started=true>
									<a class="dropdown-item" href="#kid.getURL()#">
									#encodeForHTML(kid.getMenuTitle())#
								</a>
							</cfif>
						</cfloop>
					</div>
				</cfoutput>
			</cfsavecontent>
		</cfif>

		<cfscript>
			return started
				? returnString
				: '';
		</cfscript>
	</cffunction>

</cfcomponent>
