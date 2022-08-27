package com.AbcJobs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.AbcJobs.security.ApplicationUserDetail;
import com.AbcJobs.service.AbcService;
import com.AbcJobs.beans.ApplyJob;
import com.AbcJobs.beans.BulkEmail;
import com.AbcJobs.beans.Job;
import com.AbcJobs.beans.Thread;
import com.AbcJobs.beans.User;

@Controller
public class AbcController {
	@Autowired
	AbcService myservice;
	
//	Home Page
	@GetMapping(value = "/")
	public String myHomePage() {
		return "Home";		
	}

//Login Page
	@GetMapping(value = "/login")
	public String loginpage() {		
		return "Login";
	}
	
//emailconfirmation Page
	@GetMapping(value = "/emailvalidation")
	public String EmailConfirmation() {
		return "EmailConfirmation";
	}
	
//forget password code page
	@GetMapping(value = "/verifcode")
	public String forgetPasswordCode() {
		return "ForgetPasswordCode";
	}
	
//forget password email 
	@GetMapping(value = "/verifemail")
	public String forgetPasswordEmail() {
		return "ForgetPasswordEmail";
	}
	
//forget password
	@GetMapping(value = "/forgotpassword")
	public String forgotPassword(@ModelAttribute("data")User user) {
		return "ForgotPassword";
	}
	
//Register Page
	@GetMapping(value = "/register")
	public String myRegisterPage(@ModelAttribute("vajresh") User us) {
		return "Registration";
		
	}

	@PostMapping(value = "/myreg")
	public String addRegisterPage(@ModelAttribute("vajresh") User us, @RequestParam String email, ModelMap map) {
		myservice.addUser(us);
		System.out.println(us);
		map.addAttribute("emailval", email);
		return "Thankyou";
	}
	
//Admin Page
	@GetMapping(value = "/admin")
	public ModelAndView myadminPage() {
		List<User> Udata=myservice.showAll();
		System.out.println(Udata);
		return new ModelAndView("Adminpage","testv",Udata);
	}

//public profile page
	@GetMapping(value = "/user")
	public String myuserPage(HttpSession ses, @AuthenticationPrincipal ApplicationUserDetail appDetail) {
		String username = appDetail.getUsername();
		User user = myservice.ulogin(username);
		ses.setAttribute("userid", user.getUserid());
		ses.setAttribute("username", user.getUsername());
		ses.setAttribute("firstname", user.getFirstname());
		ses.setAttribute("lastname", user.getLastname());
		ses.setAttribute("email", user.getEmail());
		ses.setAttribute("contact", user.getContact());
		ses.setAttribute("country", user.getCountry());

		return "PublicProfile";
	
	}	

//public profile admin page
	@GetMapping(value = "/ppadmin")
	public String myadminPage(HttpSession ses, @AuthenticationPrincipal ApplicationUserDetail appDetail) {
		String username = appDetail.getUsername();
		User user = myservice.ulogin(username);
		ses.setAttribute("userid", user.getUserid());
		ses.setAttribute("username", user.getUsername());
		ses.setAttribute("firstname", user.getFirstname());
		ses.setAttribute("lastname", user.getLastname());
		ses.setAttribute("email", user.getEmail());
		ses.setAttribute("contact", user.getContact());
		ses.setAttribute("country", user.getCountry());
		return "PublicProfile-Admin";
		}	
//	Update Profile Page
	@GetMapping(value = "/updateProfile/{userid}")
	public ModelAndView updateProfile(@PathVariable("userid")Integer userid) {
		User user=myservice.searchUser(userid);
		return new ModelAndView("UpdateProfile","updt", user);
	}
	@GetMapping(value = "/updateProfile/updateprofile")
	public String updateprodata(@RequestParam("userid")Integer userid,
	@RequestParam("username")String username,
	@RequestParam("firstname")String firstname,
	@RequestParam("lastname")String lastname,		
	@RequestParam("email")String email,
	@RequestParam("role")String role,
	@RequestParam("contact")String contact,
	@RequestParam("country")String country,
	@RequestParam("password")String password) {
		
		System.out.println("success");
		User user = new User(userid, username, firstname, lastname, email,role, contact, country, password);
		myservice.updtUser(user);
		return "redirect:/user";
	}
	
//	Update Profile admin Page
	@GetMapping(value = "/updateProfile-admin/{userid}")
	public ModelAndView updateProfileadmin(@PathVariable("userid")Integer userid) {
		User user=myservice.searchUser(userid);
		return new ModelAndView("UpdateProfile-Admin","updt", user);
	}
	@GetMapping(value = "/updateProfile-admin/updateprofile-admin")
	public String updateprodata1(@RequestParam("userid")Integer userid,
	@RequestParam("username")String username,
	@RequestParam("firstname")String firstname,
	@RequestParam("lastname")String lastname,		
	@RequestParam("email")String email,
	@RequestParam("role")String role,
	@RequestParam("contact")String contact,
	@RequestParam("country")String country,
	@RequestParam("password")String password) {
		
		System.out.println("success");
		User user = new User(userid, username, firstname, lastname, email,role, contact, country, password);
		myservice.updtUser(user);
		return "redirect:/ppadmin";
	}
	
//update-user Page
		@GetMapping(value = "/updateUser/{userid}")
		public ModelAndView update(@PathVariable("userid")Integer userid) {
			User user=myservice.searchUser(userid);
			return new ModelAndView("Update-User","updt", user);
		}
		
		@GetMapping(value = "/updateUser/update")
		public String updatedata(@RequestParam("userid")Integer userid,
		@RequestParam("username")String username,
		@RequestParam("firstname")String firstname,
		@RequestParam("lastname")String lastname,		
		@RequestParam("email")String email,
		@RequestParam("role")String role,
		@RequestParam("contact")String contact,
		@RequestParam("country")String country,
		@RequestParam("password")String password) {
			
			System.out.println("success");
			User user = new User(userid, username, firstname, lastname, email,role, contact, country, password);
			myservice.updtUser(user);
			
			return "redirect:/admin";
		}
	@GetMapping("/deleteUser/{id}")
				public String deleteuser(@PathVariable(value = "id") Integer userid) {
					this.myservice.deleteUserData(userid);
					return "redirect:/admin";
				}
//search page		
	@GetMapping(value = "/search")
	public String search(@ModelAttribute("searchu")User username) {
			return "Search";
	}
//search page admin		
	@GetMapping(value = "/search-admin")
	public String searchadmin(@ModelAttribute("searchu")User username) {
		return "Search-Admin";
		}
//search result page
	@PostMapping(value = "/searchus")
	public ModelAndView SearchUser(@ModelAttribute("searchu") User username) {
		String searchname = username.getUsername();
		List<User> UU=myservice.showuser(searchname);
		return new ModelAndView("SearchResult","searchu",UU);
	}
//search result page admin
	@PostMapping(value = "/searchusadmin")
	public ModelAndView SearchUserAdmin(@ModelAttribute("searchu") User username) {
		String searchname = username.getUsername();
		List<User> UU=myservice.showuser(searchname);
		return new ModelAndView("SearchResult-Admin","searchu",UU);
	}

////postjob
	@GetMapping(value = "/postjob")
	public String getpostjob(@ModelAttribute("job") Job jobs) {
		return "PostJob";
	}
	
	@PostMapping(value = "/viewjob-admin")
	public String viewjobadmin(@ModelAttribute("job")Job jobs) {
		myservice.addJob(jobs);
		System.out.println("ye");
		return "redirect:/viewjobadmin";
	}

	
//viewjobadmin
	@GetMapping(value = "/viewjobadmin")
	public ModelAndView viewjobadmin() {
		List<Job> JobData=myservice.showJobs();
//		System.out.println(JobData);
		return new ModelAndView("ViewJob-Admin","viewjob",JobData);
	}

//viewjobuser
	@GetMapping(value = "/viewjob")
	public ModelAndView viewjob(@ModelAttribute ("applyjob") ApplyJob applyjob) {
		List<Job> JobData=myservice.showJobs();
//		System.out.println(JobData);
		return new ModelAndView("ViewJob","viewjob",JobData);
	}

//delete-job Page
	@GetMapping("/deleteJob/{id}")
		public String deleteJob(@PathVariable(value = "id") Integer jobid) {
		this.myservice.deleteJobData(jobid);
		return "redirect:/viewjobadmin";
				}

//Applyjob
	@PostMapping("/applyingjob")
	public String applyingforjob(@ModelAttribute ("applyjob") ApplyJob applyjob ) {
		myservice.appliedJob(applyjob);
		System.out.println("job has been applied");
		return "redirect:/viewjob";
	}
	
//viewresult
		@GetMapping(value = "/viewjobresult/{jobid}")
		public ModelAndView viewjobresult(@PathVariable("jobid")Integer id) {
			Job job = myservice.uJob(id);
			return new ModelAndView("ViewJobResult","job",job);
		}

//viewresultadmin
	@GetMapping(value = "/viewjobresultadmin/{jobid}")
	public ModelAndView viewjobresultadmin(@PathVariable("jobid")Integer id) {
		Job job = myservice.uJob(id);
		return new ModelAndView("ViewJobResult-Admin","job",job);
	}
//Bulk Email 
		@GetMapping(value = "/bulkemail")
		public String bulkemail(@ModelAttribute("bulkemail") BulkEmail bulkemail) {
			return "BulkEmail";
		}
		
		@PostMapping(value = "/sendbulkemail")
		public String SendBulk(@ModelAttribute("bulkemail") BulkEmail bulkemail) {
			String to=(String) bulkemail.getRecipients();
			String[] receivers=to.split(", ");
			
			for(int i = 0; i < receivers.length; i++) {
				BulkEmail sendEmail = new BulkEmail();
				sendEmail.setRecipients(receivers[i]);
				sendEmail.setSubject(bulkemail.getSubject());
				sendEmail.setEmailMessages(bulkemail.getEmailMessages());
				
				myservice.addBulkEmail(sendEmail);
				myservice.sendBulkEmail(receivers[i], sendEmail.getSubject(), sendEmail.getEmailMessages());
				myservice.saveBulk(bulkemail);
			}
			return "redirect:/resultBulkEmail";
		}

//List bulk email
		
		@GetMapping(value = "/resultBulkEmail")
		public ModelAndView ListBulkEmail() {
			List<BulkEmail> EmailData=myservice.showBulkEmail();
			System.out.println(EmailData);
			return new ModelAndView("ListBulkEmail","bulkemail",EmailData);
		}
		
//Post thread  
		@GetMapping(value = "/postthreaduser")
		public String getthreaduser(@ModelAttribute("thread") Thread threads) {
			return "PostThread";
		}
		
		@PostMapping(value = "/Thread-user")
		public String viewthread(@ModelAttribute("thread") Thread threads) {
		myservice.addThread(threads);
		System.out.println("ye");
			return "redirect:/thread";
		}

//thread
		@GetMapping(value = "/thread")
		public ModelAndView thread(HttpSession ses, @AuthenticationPrincipal ApplicationUserDetail appDetail) {
			String username = appDetail.getUsername();
			User user = myservice.ulogin(username);
			ses.setAttribute("userid", user.getUserid());
			List<Thread>threadList=myservice.showThread();
			System.out.println(threadList);
			return new ModelAndView("Thread","viewthread",threadList);
		}


//Post thread admin 
		@GetMapping(value = "/postthread")
		public String getthread(@ModelAttribute("thread") Thread threads) {
			return "PostThread-Admin";
		}
		
		@PostMapping(value = "/Thread-admin")
		public String viewthreadadmin(@ModelAttribute("thread") Thread threads) {
			myservice.addThread(threads);
			System.out.println("ye");
			return "redirect:/viewthreadadmin";
		}
//thread admin
		@GetMapping(value = "/viewthreadadmin")
		public ModelAndView threadadmin(HttpSession ses, @AuthenticationPrincipal ApplicationUserDetail appDetail) {
			String username = appDetail.getUsername();
			User user = myservice.ulogin(username);
			ses.setAttribute("userid", user.getUserid());
			List<Thread> ThreadData=myservice.showThread();
			System.out.println(ThreadData);
			return new ModelAndView("Thread-Admin","viewthread",ThreadData);
		}
//message
		@GetMapping(value = "/message")
		public String message() {
			return "Message";
		}
//message admin
		@GetMapping(value = "/message-admin")
		public String messageadmin() {
			return "Message-Admin";
		}
//feedback 
		@GetMapping(value ="/feedback")
		public String feedback() {
			return "Feedback";
		}
//about us
		@GetMapping(value = "/about")
		public String about() {
			return "About";
		}
//Contact
		@GetMapping(value = "/contact")
		public String contact() {
			return "Contact";
		}
//feature
		@GetMapping(value = "/feature")
		public String feature() {
			return "Feature";
		}
//testimonial 
		@GetMapping(value = "/testimonial")
		public String testimonial() {
			return "Testimonial";
		}

}
