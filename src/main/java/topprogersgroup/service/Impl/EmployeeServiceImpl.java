package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Employee;
import topprogersgroup.repository.EmployeeRepository;
import topprogersgroup.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    public void create(Employee employee) {
        employeeRepository.save(employee);
    }
}
