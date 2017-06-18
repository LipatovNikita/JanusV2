package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Owner;
import topprogersgroup.entity.Pet;
import topprogersgroup.entity.User;
import topprogersgroup.repository.OwnerRepository;
import topprogersgroup.repository.PetRepository;
import topprogersgroup.service.OwnerService;

import java.util.ArrayList;
import java.util.List;

@Service
public class OwnerServiceImpl implements OwnerService {

    @Autowired
    private OwnerRepository ownerRepository;


    @Autowired
    private PetRepository petRepository;

    @Override
    public Owner save(Owner owner) {
        return ownerRepository.save(owner);
    }

    @Override
    public Owner findOne(Integer id) {
        Owner owner = ownerRepository.findOne(id);
        List<Pet> petList = new ArrayList<>();
        List<Pet> pets = owner.getPet();
        for(Pet pet:pets){
            petList.add(petRepository.findOneByGuidAndIsDeletedAndIsLast(pet.getGuid(),false,true));
        }
        owner.setPet(petList);
        return owner;
    }

    @Override
    public List<Owner> findForPageIsDeleted(Pageable pageable) {
        List<Owner> ownerList = new ArrayList<>();
        List<Pet> petList = new ArrayList<>();
        List<Owner> owners = ownerRepository.findByIsDeleted(true, pageable);
        for(Owner owner:owners){
            List<Pet> pets = owner.getPet();
            for(Pet pet:pets){
                petList.add(petRepository.findOneByGuidAndIsDeletedAndIsLast(pet.getGuid(),false,true));
            }
            owner.setPet(petList);
            ownerList.add(owner);
        }
        return ownerList;
    }

    @Override
    public List<Owner> findForPageIsNotDeleted(Pageable pageable) {
        return ownerRepository.findByIsDeleted(false, pageable);
    }

    @Override
    public void delete(Owner owner) {
        owner.setDeleted(true);
        ownerRepository.save(owner);
    }

    @Override
    public Owner getOwnerByUser(User user) {
        return ownerRepository.findByUserAndIsDeleted(user, false);
    }
}
