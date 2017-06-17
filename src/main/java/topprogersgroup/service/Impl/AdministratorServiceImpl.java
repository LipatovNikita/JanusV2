package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Administrator;
import topprogersgroup.repository.AdministratorRepository;
import topprogersgroup.service.AdministratorService;

@Service
public class AdministratorServiceImpl implements AdministratorService {

    @Autowired
    AdministratorRepository administratorRepository;

    public void create(Administrator administrator) {
        administratorRepository.save(administrator);
    }
}
