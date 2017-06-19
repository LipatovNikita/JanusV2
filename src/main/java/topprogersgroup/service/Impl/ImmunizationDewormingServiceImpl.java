package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.ImmunizationDeworming;
import topprogersgroup.entity.Passport;
import topprogersgroup.repository.ImmunizationDewormingRepository;
import topprogersgroup.service.ImmunizationDewormingService;

import java.util.List;

@Service
public class ImmunizationDewormingServiceImpl implements ImmunizationDewormingService {

    @Autowired
    private ImmunizationDewormingRepository immunizationDewormingRepository;

    public void create(ImmunizationDeworming immunizationDeworming) {
        immunizationDewormingRepository.save(immunizationDeworming);
    }

    public void delete(ImmunizationDeworming immunizationDeworming) {
        immunizationDewormingRepository.delete(immunizationDeworming);
    }

    public void edit(ImmunizationDeworming immunizationDeworming) {
        immunizationDewormingRepository.save(immunizationDeworming);
    }

    public List<ImmunizationDeworming> getImmunizationDewormingListByPassport(Passport passport) {
        return immunizationDewormingRepository.findByPassport(passport);
    }
}
