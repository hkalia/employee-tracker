package com.habibkalia.employeetracker.service;

import com.habibkalia.employeetracker.exception.EmployeeNotFoundException;
import com.habibkalia.employeetracker.model.Employee;
import com.habibkalia.employeetracker.repository.EmployeeRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeService {

    private final EmployeeRepository employeeRepository;

    EmployeeService(EmployeeRepository employeeRepository) {
        this.employeeRepository = employeeRepository;
    }

    public Employee getEmployeeById(Long id) {
        return employeeRepository.findById(id)
                .orElseThrow(() -> new EmployeeNotFoundException(id));
    }

    public List<Employee> getAllEmployees() {
        return employeeRepository.findAll();
    }

    public Employee addEmployee(Employee newEmployee) {
        return employeeRepository.save(newEmployee);
    }

    public void deleteEmployee(Long id) {
        employeeRepository.deleteById(id);
    }

    public Employee updateEmployee(Long id, Employee newEmployee) {
        return employeeRepository.findById(id)
                .map(employee -> {
                    employee.setName(newEmployee.getName());
                    employee.setDepartment(newEmployee.getDepartment());
                    employee.setSalary(newEmployee.getSalary());
                    return employeeRepository.save(employee);
                })
                .orElseGet(() -> employeeRepository.save(newEmployee));
    }
}
