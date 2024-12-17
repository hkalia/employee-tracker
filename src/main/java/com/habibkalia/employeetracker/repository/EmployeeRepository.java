package com.habibkalia.employeetracker.repository;

import com.habibkalia.employeetracker.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
}
