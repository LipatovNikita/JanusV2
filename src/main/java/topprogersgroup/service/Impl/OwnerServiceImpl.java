package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Owner;
import topprogersgroup.repository.OwnerRepository;
import topprogersgroup.service.OwnerService;

@Service
public class OwnerServiceImpl implements OwnerService {

    @Autowired
    private OwnerRepository ownerRepository;

    public void create(Owner owner) {
        ownerRepository.save(owner);
    }
}
