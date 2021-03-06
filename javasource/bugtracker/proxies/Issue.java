// This file was generated by Mendix Studio Pro.
//
// WARNING: Code you write here will be lost the next time you deploy the project.

package bugtracker.proxies;

public class Issue
{
	private final com.mendix.systemwideinterfaces.core.IMendixObject issueMendixObject;

	private final com.mendix.systemwideinterfaces.core.IContext context;

	/**
	 * Internal name of this entity
	 */
	public static final java.lang.String entityName = "BugTracker.Issue";

	/**
	 * Enum describing members of this entity
	 */
	public enum MemberNames
	{
		IssueType("IssueType"),
		Description("Description"),
		ShortSummary("ShortSummary"),
		IssueID("IssueID"),
		State("State"),
		Priority("Priority"),
		_IsNew("_IsNew"),
		Comments("Comments"),
		Issue_User_AssignedTo("BugTracker.Issue_User_AssignedTo"),
		Issue_User_ReportedBy("BugTracker.Issue_User_ReportedBy"),
		Issue_Project("BugTracker.Issue_Project");

		private java.lang.String metaName;

		MemberNames(java.lang.String s)
		{
			metaName = s;
		}

		@java.lang.Override
		public java.lang.String toString()
		{
			return metaName;
		}
	}

	public Issue(com.mendix.systemwideinterfaces.core.IContext context)
	{
		this(context, com.mendix.core.Core.instantiate(context, "BugTracker.Issue"));
	}

	protected Issue(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject issueMendixObject)
	{
		if (issueMendixObject == null)
			throw new java.lang.IllegalArgumentException("The given object cannot be null.");
		if (!com.mendix.core.Core.isSubClassOf("BugTracker.Issue", issueMendixObject.getType()))
			throw new java.lang.IllegalArgumentException("The given object is not a BugTracker.Issue");

		this.issueMendixObject = issueMendixObject;
		this.context = context;
	}

	/**
	 * @deprecated Use 'Issue.load(IContext, IMendixIdentifier)' instead.
	 */
	@java.lang.Deprecated
	public static bugtracker.proxies.Issue initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		return bugtracker.proxies.Issue.load(context, mendixIdentifier);
	}

	/**
	 * Initialize a proxy using context (recommended). This context will be used for security checking when the get- and set-methods without context parameters are called.
	 * The get- and set-methods with context parameter should be used when for instance sudo access is necessary (IContext.createSudoClone() can be used to obtain sudo access).
	 */
	public static bugtracker.proxies.Issue initialize(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixObject mendixObject)
	{
		return new bugtracker.proxies.Issue(context, mendixObject);
	}

	public static bugtracker.proxies.Issue load(com.mendix.systemwideinterfaces.core.IContext context, com.mendix.systemwideinterfaces.core.IMendixIdentifier mendixIdentifier) throws com.mendix.core.CoreException
	{
		com.mendix.systemwideinterfaces.core.IMendixObject mendixObject = com.mendix.core.Core.retrieveId(context, mendixIdentifier);
		return bugtracker.proxies.Issue.initialize(context, mendixObject);
	}

	public static java.util.List<bugtracker.proxies.Issue> load(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String xpathConstraint) throws com.mendix.core.CoreException
	{
		java.util.List<bugtracker.proxies.Issue> result = new java.util.ArrayList<bugtracker.proxies.Issue>();
		for (com.mendix.systemwideinterfaces.core.IMendixObject obj : com.mendix.core.Core.retrieveXPathQuery(context, "//BugTracker.Issue" + xpathConstraint))
			result.add(bugtracker.proxies.Issue.initialize(context, obj));
		return result;
	}

	/**
	 * Commit the changes made on this proxy object.
	 */
	public final void commit() throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Commit the changes made on this proxy object using the specified context.
	 */
	public final void commit(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		com.mendix.core.Core.commit(context, getMendixObject());
	}

	/**
	 * Delete the object.
	 */
	public final void delete()
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}

	/**
	 * Delete the object using the specified context.
	 */
	public final void delete(com.mendix.systemwideinterfaces.core.IContext context)
	{
		com.mendix.core.Core.delete(context, getMendixObject());
	}
	/**
	 * Set value of IssueType
	 * @param issuetype
	 */
	public final bugtracker.proxies.Enumeration_IssueType getIssueType()
	{
		return getIssueType(getContext());
	}

	/**
	 * @param context
	 * @return value of IssueType
	 */
	public final bugtracker.proxies.Enumeration_IssueType getIssueType(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.IssueType.toString());
		if (obj == null)
			return null;

		return bugtracker.proxies.Enumeration_IssueType.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of IssueType
	 * @param issuetype
	 */
	public final void setIssueType(bugtracker.proxies.Enumeration_IssueType issuetype)
	{
		setIssueType(getContext(), issuetype);
	}

	/**
	 * Set value of IssueType
	 * @param context
	 * @param issuetype
	 */
	public final void setIssueType(com.mendix.systemwideinterfaces.core.IContext context, bugtracker.proxies.Enumeration_IssueType issuetype)
	{
		if (issuetype != null)
			getMendixObject().setValue(context, MemberNames.IssueType.toString(), issuetype.toString());
		else
			getMendixObject().setValue(context, MemberNames.IssueType.toString(), null);
	}

	/**
	 * @return value of Description
	 */
	public final java.lang.String getDescription()
	{
		return getDescription(getContext());
	}

	/**
	 * @param context
	 * @return value of Description
	 */
	public final java.lang.String getDescription(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Description.toString());
	}

	/**
	 * Set value of Description
	 * @param description
	 */
	public final void setDescription(java.lang.String description)
	{
		setDescription(getContext(), description);
	}

	/**
	 * Set value of Description
	 * @param context
	 * @param description
	 */
	public final void setDescription(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String description)
	{
		getMendixObject().setValue(context, MemberNames.Description.toString(), description);
	}

	/**
	 * @return value of ShortSummary
	 */
	public final java.lang.String getShortSummary()
	{
		return getShortSummary(getContext());
	}

	/**
	 * @param context
	 * @return value of ShortSummary
	 */
	public final java.lang.String getShortSummary(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.ShortSummary.toString());
	}

	/**
	 * Set value of ShortSummary
	 * @param shortsummary
	 */
	public final void setShortSummary(java.lang.String shortsummary)
	{
		setShortSummary(getContext(), shortsummary);
	}

	/**
	 * Set value of ShortSummary
	 * @param context
	 * @param shortsummary
	 */
	public final void setShortSummary(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String shortsummary)
	{
		getMendixObject().setValue(context, MemberNames.ShortSummary.toString(), shortsummary);
	}

	/**
	 * @return value of IssueID
	 */
	public final java.lang.Long getIssueID()
	{
		return getIssueID(getContext());
	}

	/**
	 * @param context
	 * @return value of IssueID
	 */
	public final java.lang.Long getIssueID(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Long) getMendixObject().getValue(context, MemberNames.IssueID.toString());
	}

	/**
	 * Set value of IssueID
	 * @param issueid
	 */
	public final void setIssueID(java.lang.Long issueid)
	{
		setIssueID(getContext(), issueid);
	}

	/**
	 * Set value of IssueID
	 * @param context
	 * @param issueid
	 */
	public final void setIssueID(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Long issueid)
	{
		getMendixObject().setValue(context, MemberNames.IssueID.toString(), issueid);
	}

	/**
	 * Set value of State
	 * @param state
	 */
	public final bugtracker.proxies.Enumeration_IssueState getState()
	{
		return getState(getContext());
	}

	/**
	 * @param context
	 * @return value of State
	 */
	public final bugtracker.proxies.Enumeration_IssueState getState(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.State.toString());
		if (obj == null)
			return null;

		return bugtracker.proxies.Enumeration_IssueState.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of State
	 * @param state
	 */
	public final void setState(bugtracker.proxies.Enumeration_IssueState state)
	{
		setState(getContext(), state);
	}

	/**
	 * Set value of State
	 * @param context
	 * @param state
	 */
	public final void setState(com.mendix.systemwideinterfaces.core.IContext context, bugtracker.proxies.Enumeration_IssueState state)
	{
		if (state != null)
			getMendixObject().setValue(context, MemberNames.State.toString(), state.toString());
		else
			getMendixObject().setValue(context, MemberNames.State.toString(), null);
	}

	/**
	 * Set value of Priority
	 * @param priority
	 */
	public final bugtracker.proxies.Enumeration_IssuePriority getPriority()
	{
		return getPriority(getContext());
	}

	/**
	 * @param context
	 * @return value of Priority
	 */
	public final bugtracker.proxies.Enumeration_IssuePriority getPriority(com.mendix.systemwideinterfaces.core.IContext context)
	{
		Object obj = getMendixObject().getValue(context, MemberNames.Priority.toString());
		if (obj == null)
			return null;

		return bugtracker.proxies.Enumeration_IssuePriority.valueOf((java.lang.String) obj);
	}

	/**
	 * Set value of Priority
	 * @param priority
	 */
	public final void setPriority(bugtracker.proxies.Enumeration_IssuePriority priority)
	{
		setPriority(getContext(), priority);
	}

	/**
	 * Set value of Priority
	 * @param context
	 * @param priority
	 */
	public final void setPriority(com.mendix.systemwideinterfaces.core.IContext context, bugtracker.proxies.Enumeration_IssuePriority priority)
	{
		if (priority != null)
			getMendixObject().setValue(context, MemberNames.Priority.toString(), priority.toString());
		else
			getMendixObject().setValue(context, MemberNames.Priority.toString(), null);
	}

	/**
	 * @return value of _IsNew
	 */
	public final java.lang.Boolean get_IsNew()
	{
		return get_IsNew(getContext());
	}

	/**
	 * @param context
	 * @return value of _IsNew
	 */
	public final java.lang.Boolean get_IsNew(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.Boolean) getMendixObject().getValue(context, MemberNames._IsNew.toString());
	}

	/**
	 * Set value of _IsNew
	 * @param _isnew
	 */
	public final void set_IsNew(java.lang.Boolean _isnew)
	{
		set_IsNew(getContext(), _isnew);
	}

	/**
	 * Set value of _IsNew
	 * @param context
	 * @param _isnew
	 */
	public final void set_IsNew(com.mendix.systemwideinterfaces.core.IContext context, java.lang.Boolean _isnew)
	{
		getMendixObject().setValue(context, MemberNames._IsNew.toString(), _isnew);
	}

	/**
	 * @return value of Comments
	 */
	public final java.lang.String getComments()
	{
		return getComments(getContext());
	}

	/**
	 * @param context
	 * @return value of Comments
	 */
	public final java.lang.String getComments(com.mendix.systemwideinterfaces.core.IContext context)
	{
		return (java.lang.String) getMendixObject().getValue(context, MemberNames.Comments.toString());
	}

	/**
	 * Set value of Comments
	 * @param comments
	 */
	public final void setComments(java.lang.String comments)
	{
		setComments(getContext(), comments);
	}

	/**
	 * Set value of Comments
	 * @param context
	 * @param comments
	 */
	public final void setComments(com.mendix.systemwideinterfaces.core.IContext context, java.lang.String comments)
	{
		getMendixObject().setValue(context, MemberNames.Comments.toString(), comments);
	}

	/**
	 * @return value of Issue_User_AssignedTo
	 */
	public final bugtracker.proxies.User getIssue_User_AssignedTo() throws com.mendix.core.CoreException
	{
		return getIssue_User_AssignedTo(getContext());
	}

	/**
	 * @param context
	 * @return value of Issue_User_AssignedTo
	 */
	public final bugtracker.proxies.User getIssue_User_AssignedTo(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		bugtracker.proxies.User result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Issue_User_AssignedTo.toString());
		if (identifier != null)
			result = bugtracker.proxies.User.load(context, identifier);
		return result;
	}

	/**
	 * Set value of Issue_User_AssignedTo
	 * @param issue_user_assignedto
	 */
	public final void setIssue_User_AssignedTo(bugtracker.proxies.User issue_user_assignedto)
	{
		setIssue_User_AssignedTo(getContext(), issue_user_assignedto);
	}

	/**
	 * Set value of Issue_User_AssignedTo
	 * @param context
	 * @param issue_user_assignedto
	 */
	public final void setIssue_User_AssignedTo(com.mendix.systemwideinterfaces.core.IContext context, bugtracker.proxies.User issue_user_assignedto)
	{
		if (issue_user_assignedto == null)
			getMendixObject().setValue(context, MemberNames.Issue_User_AssignedTo.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.Issue_User_AssignedTo.toString(), issue_user_assignedto.getMendixObject().getId());
	}

	/**
	 * @return value of Issue_User_ReportedBy
	 */
	public final bugtracker.proxies.User getIssue_User_ReportedBy() throws com.mendix.core.CoreException
	{
		return getIssue_User_ReportedBy(getContext());
	}

	/**
	 * @param context
	 * @return value of Issue_User_ReportedBy
	 */
	public final bugtracker.proxies.User getIssue_User_ReportedBy(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		bugtracker.proxies.User result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Issue_User_ReportedBy.toString());
		if (identifier != null)
			result = bugtracker.proxies.User.load(context, identifier);
		return result;
	}

	/**
	 * Set value of Issue_User_ReportedBy
	 * @param issue_user_reportedby
	 */
	public final void setIssue_User_ReportedBy(bugtracker.proxies.User issue_user_reportedby)
	{
		setIssue_User_ReportedBy(getContext(), issue_user_reportedby);
	}

	/**
	 * Set value of Issue_User_ReportedBy
	 * @param context
	 * @param issue_user_reportedby
	 */
	public final void setIssue_User_ReportedBy(com.mendix.systemwideinterfaces.core.IContext context, bugtracker.proxies.User issue_user_reportedby)
	{
		if (issue_user_reportedby == null)
			getMendixObject().setValue(context, MemberNames.Issue_User_ReportedBy.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.Issue_User_ReportedBy.toString(), issue_user_reportedby.getMendixObject().getId());
	}

	/**
	 * @return value of Issue_Project
	 */
	public final bugtracker.proxies.Project getIssue_Project() throws com.mendix.core.CoreException
	{
		return getIssue_Project(getContext());
	}

	/**
	 * @param context
	 * @return value of Issue_Project
	 */
	public final bugtracker.proxies.Project getIssue_Project(com.mendix.systemwideinterfaces.core.IContext context) throws com.mendix.core.CoreException
	{
		bugtracker.proxies.Project result = null;
		com.mendix.systemwideinterfaces.core.IMendixIdentifier identifier = getMendixObject().getValue(context, MemberNames.Issue_Project.toString());
		if (identifier != null)
			result = bugtracker.proxies.Project.load(context, identifier);
		return result;
	}

	/**
	 * Set value of Issue_Project
	 * @param issue_project
	 */
	public final void setIssue_Project(bugtracker.proxies.Project issue_project)
	{
		setIssue_Project(getContext(), issue_project);
	}

	/**
	 * Set value of Issue_Project
	 * @param context
	 * @param issue_project
	 */
	public final void setIssue_Project(com.mendix.systemwideinterfaces.core.IContext context, bugtracker.proxies.Project issue_project)
	{
		if (issue_project == null)
			getMendixObject().setValue(context, MemberNames.Issue_Project.toString(), null);
		else
			getMendixObject().setValue(context, MemberNames.Issue_Project.toString(), issue_project.getMendixObject().getId());
	}

	/**
	 * @return the IMendixObject instance of this proxy for use in the Core interface.
	 */
	public final com.mendix.systemwideinterfaces.core.IMendixObject getMendixObject()
	{
		return issueMendixObject;
	}

	/**
	 * @return the IContext instance of this proxy, or null if no IContext instance was specified at initialization.
	 */
	public final com.mendix.systemwideinterfaces.core.IContext getContext()
	{
		return context;
	}

	@java.lang.Override
	public boolean equals(Object obj)
	{
		if (obj == this)
			return true;

		if (obj != null && getClass().equals(obj.getClass()))
		{
			final bugtracker.proxies.Issue that = (bugtracker.proxies.Issue) obj;
			return getMendixObject().equals(that.getMendixObject());
		}
		return false;
	}

	@java.lang.Override
	public int hashCode()
	{
		return getMendixObject().hashCode();
	}

	/**
	 * @return String name of this class
	 */
	public static java.lang.String getType()
	{
		return "BugTracker.Issue";
	}

	/**
	 * @return String GUID from this object, format: ID_0000000000
	 * @deprecated Use getMendixObject().getId().toLong() to get a unique identifier for this object.
	 */
	@java.lang.Deprecated
	public java.lang.String getGUID()
	{
		return "ID_" + getMendixObject().getId().toLong();
	}
}
