package com.demo.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.demo.model.Employee;

@Component
public class EmployeeDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	
	
	@Transactional
	public void addEmployee(Employee emp)
	{
		hibernateTemplate.save(emp);
	}
	
	
	
	public List<Employee> getAllEmp()
	{
		return hibernateTemplate.loadAll(Employee.class);
	}
	
	
	public Employee getEmpById(Long id)
	{
		Employee emp= hibernateTemplate.get(Employee.class, id);
		return emp;
	}
	
	
	
	@Transactional
	public void updateEmp(Employee emp)
	{
		hibernateTemplate.update(emp);
	}
	
	
	
	@Transactional
	public void deleteEmp(Long id)
	{
		hibernateTemplate.delete(hibernateTemplate.load(Employee.class, id));
	}
}
