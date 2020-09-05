<cfoutput>
	<footer>
		<div class="py-5 bg-light">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 mb-4">
						<h4>About</h4>
						<p>Mura's rich feature set and powerful extensibility provides a toolkit for tackling and completing challenging Web projects, even those requiring deep integration and custom development. Our professional services team can assist your developers or lead the project from conception to delivery.</p>
					</div>

					<div class="col-lg-6 col-xl-3 mb-4">
						<h4>Contact Info</h4>
						<ul class="list-unstyled">
							<li class="mb-2">
								<i class="fas fa-mobile mr-1" aria-hidden="true"></i>
								<a href="tel:1-414-555-1212">+1(414)555-1212 <strong>Local</strong></a>
							</li>
							<li class="mb-2">
								<i class="fas fa-mobile-alt mr-1" aria-hidden="true"></i>
								<a href="tel:1-800-555-1212">+1(888)555-1212 <strong>Toll Free</strong></a>
							</li>
							<li class="mb-2">
								<i class="fas fa-envelope mr-1" aria-hidden="true"></i>
								<a href="mailto:steve@digitalmine.com">steve@digitalmine.com</a>
							</li>
						</ul>

						<ul class="list-unstyled">
							<li class="mb-2">
								<i class="fas fa-window-maximize-alt mr-1" aria-hidden="true"></i>
								<a href="##myModal" data-toggle="modal">Sample Modal Window</a>
							</li>
							<li class="mb-2">
								<i class="fas fa-crown mr-1" aria-hidden="true"></i>
								<a href="https://www.digitalmine.com">Training by digitalmine LLC</a>
							</li>
						</ul>
					</div>

					<div class="col-lg-12 col-xl-3 mb-4">
						<h4>Follow</h4>
						<div>
							<a class="btn btn-sm btn-primary" href="https://github.com/digitalminellc">
								<i class="fab fa-lg fa-github" aria-hidden="true"></i>
								<span class="sr-only">Github</span>
							</a>
							<a class="btn btn-sm btn-primary" href="https://twitter.com/stevewithington">
								<i class="fab fa-lg fa-twitter" aria-hidden="true"></i>
								<span class="sr-only">Twitter</span>
							</a>
							<a class="btn btn-sm btn-primary" href="https://www.linkedin.com/in/stevewithington/">
								<i class="fab fa-lg fa-linkedin" aria-hidden="true"></i>
								<span class="sr-only">LinkedIn</span>
							</a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="py-2 bg-secondary text-light">
			<div class="container">
				<p class="mb-0">&copy; #esapiEncode('html', $.siteConfig('site'))# #year(now())#</p>
			</div>
		</div>
	</footer>
	#$.dspThemeInclude('modules/examples/sampleModalWindow.cfm')#
</cfoutput>
