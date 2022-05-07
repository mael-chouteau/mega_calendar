$mc_filters = {}
$mc_filters['assignee'] = {
  :type => 'lookup',
  :label => 'field_assigned_to',
  :db_field => 'issues.assigned_to_id',
  :db_field_holiday => 'holidays.user_id',
  :lookup_id => 'id',
  :operators => [:contains, :not_contains],
  :lookup_value => 'login',
  :lookup_query_model => 'Holiday',
  :lookup_query_method => 'get_activated_users',
  :lookup_query_order => nil,
  :condition => nil,
  :condition_holiday => nil
}
$mc_filters['assignee_group'] = {
  :type => 'lookup',
  :label => 'label_group',
  :db_field => 'issues.assigned_to_id',
  :db_field_holiday => 'holidays.user_id',
  :lookup_id => 'id',
  :operators => [:contains, :not_contains],
  :lookup_value => 'lastname',
  :lookup_query_model => 'Holiday',
  :lookup_query_method => 'get_activated_groups',
  :lookup_query_order => nil,
  :condition => '##FIELD_ID## IN (SELECT user_id FROM groups_users WHERE group_id ##OPERATOR## (?)) OR ##FIELD_ID## ##OPERATOR## (?)',
  :condition_holiday => '##FIELD_ID## IN (SELECT user_id FROM groups_users WHERE group_id ##OPERATOR## (?))'
}
$mc_filters['status'] = {
  :type => 'lookup',
  :label => 'label_issue_status',
  :db_field => 'issues.status_id',
  :lookup_id => 'id',
  :operators => [:contains, :not_contains],
  :lookup_value => 'name',
  :lookup_query_model => 'IssueStatus',
  :lookup_query_method => 'all',
  :lookup_query_order => "issue_statuses.name ASC",
  :condition => nil,
  :condition_holiday => nil
}
$mc_filters['project'] = {
  :type => 'lookup',
  :label => 'label_project',
  :db_field => 'issues.project_id',
  :lookup_id => 'id',
  :operators => [:contains, :not_contains],
  :lookup_value => 'name',
  :lookup_query_model => 'Project',
  :lookup_query_method => 'all',
  :lookup_query_order => "projects.name ASC",
  :condition => nil,
  :condition_holiday => nil
}
$mc_filters['tracker'] = {
  :type => 'lookup',
  :label => 'label_tracker',
  :db_field => 'issues.tracker_id',
  :lookup_id => 'id',
  :operators => [:contains, :not_contains],
  :lookup_value => 'name',
  :lookup_query_model => 'Tracker',
  :lookup_query_method => 'all',
  :lookup_query_order => "trackers.name ASC",
  :condition => nil,
  :condition_holiday => nil
}
$mc_filters['priority'] = {
  :type => 'lookup',
  :label => 'field_priority',
  :db_field => 'issues.priority_id',
  :lookup_id => 'id',
  :operators => [:contains, :not_contains],
  :lookup_value => 'name',
  :lookup_query_model => 'IssuePriority',
  :lookup_query_method => 'all',
  :lookup_query_order => nil,
  :condition => nil,
  :condition_holiday => nil
}
$mc_filters['version'] = {
  :type => 'lookup',
  :label => 'field_version',
  :db_field => 'issues.fixed_version_id',
  :lookup_id => 'id',
  :operators => [:contains, :not_contains],
  :lookup_value => 'name',
  :lookup_query_model => 'Version',
  :lookup_query_method => 'all',
  :lookup_query_order => "versions.name ASC",
  :condition => nil,
  :condition_holiday => nil
}
