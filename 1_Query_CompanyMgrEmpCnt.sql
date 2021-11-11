select cmpny.company_code,cmpny.founder,count(distinct lmgr.lead_manager_code),
    count(distinct smgr.senior_manager_code),count(distinct mgr.manager_code),
    count(distinct emp.employee_code) 
    from Company cmpny, Lead_manager lmgr, Senior_manager smgr, Manager mgr, Employee emp
        where cmpny.company_code = lmgr.company_code and
        lmgr.lead_manager_code = smgr.lead_manager_code and
        smgr.senior_manager_code = mgr.senior_manager_code and
        mgr.manager_code = emp.manager_code
            group by cmpny.company_code,cmpny.founder