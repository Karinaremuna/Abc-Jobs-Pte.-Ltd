package com.AbcJobs.beans;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "job")
public class Job {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int jobid;
	private String jobTitle;
	private String jobAddress;
	private String jobFamilyGroup;
	private String jobVacancyLink;
	private String about;
	private String jobDescription;
	private String minimumQualification;
	private String preferredSkill;
	private String EmployeeType;
	private String ExperienceRange;
	
	@OneToMany(mappedBy = "applyJobId", cascade = CascadeType.ALL)
	private Set<ApplyJob> applyforjob;
	
	public Job() {
		
	}

	public Job(int jobid, String jobTitle, String jobAddress, String jobFamilyGroup, String jobVacancyLink,
			String about, String jobDescription, String minimumQualification, String preferredSkill,
			String employeeType, String experienceRange, Set<ApplyJob> applyforjob) {
		super();
		this.jobid = jobid;
		this.jobTitle = jobTitle;
		this.jobAddress = jobAddress;
		this.jobFamilyGroup = jobFamilyGroup;
		this.jobVacancyLink = jobVacancyLink;
		this.about = about;
		this.jobDescription = jobDescription;
		this.minimumQualification = minimumQualification;
		this.preferredSkill = preferredSkill;
		EmployeeType = employeeType;
		ExperienceRange = experienceRange;
		this.applyforjob = applyforjob;
	}

	public int getJobid() {
		return jobid;
	}

	public void setJobid(int jobid) {
		this.jobid = jobid;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getJobAddress() {
		return jobAddress;
	}

	public void setJobAddress(String jobAddress) {
		this.jobAddress = jobAddress;
	}

	public String getJobFamilyGroup() {
		return jobFamilyGroup;
	}

	public void setJobFamilyGroup(String jobFamilyGroup) {
		this.jobFamilyGroup = jobFamilyGroup;
	}

	public String getJobVacancyLink() {
		return jobVacancyLink;
	}

	public void setJobVacancyLink(String jobVacancyLink) {
		this.jobVacancyLink = jobVacancyLink;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getMinimumQualification() {
		return minimumQualification;
	}

	public void setMinimumQualification(String minimumQualification) {
		this.minimumQualification = minimumQualification;
	}

	public String getPreferredSkill() {
		return preferredSkill;
	}

	public void setPreferredSkill(String preferredSkill) {
		this.preferredSkill = preferredSkill;
	}

	public String getEmployeeType() {
		return EmployeeType;
	}

	public void setEmployeeType(String employeeType) {
		EmployeeType = employeeType;
	}

	public String getExperienceRange() {
		return ExperienceRange;
	}

	public void setExperienceRange(String experienceRange) {
		ExperienceRange = experienceRange;
	}

	public Set<ApplyJob> getApplyforjob() {
		return applyforjob;
	}

	public void setApplyforjob(Set<ApplyJob> applyforjob) {
		this.applyforjob = applyforjob;
	}

	@Override
	public String toString() {
		return "Job [jobid=" + jobid + ", jobTitle=" + jobTitle + ", jobAddress=" + jobAddress + ", jobFamilyGroup="
				+ jobFamilyGroup + ", jobVacancyLink=" + jobVacancyLink + ", about=" + about + ", jobDescription="
				+ jobDescription + ", minimumQualification=" + minimumQualification + ", preferredSkill="
				+ preferredSkill + ", EmployeeType=" + EmployeeType + ", ExperienceRange=" + ExperienceRange
				+ ", applyforjob=" + applyforjob + "]";
	}

	public Boolean applyChecker(int id) {
		for(ApplyJob applyjob : getApplyforjob()) {
			if (applyjob.getApplyJobUser().getUserid() == id) {
				return false;	
			} 
		}
		return true;
	}
	
	}