package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Owner;
import topprogersgroup.entity.Pet;
import topprogersgroup.entity.User;
import topprogersgroup.repository.OwnerRepository;
import topprogersgroup.repository.PetRepository;
import topprogersgroup.repository.UserRepository;
import topprogersgroup.service.OwnerService;
import topprogersgroup.service.UserService;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class OwnerServiceImpl implements OwnerService {

    @Autowired
    private OwnerRepository ownerRepository;


    @Autowired
    private PetRepository petRepository;

    @Autowired
    private UserService userService;

    @Override
    public Owner save(Owner owner) {
        return ownerRepository.save(owner);
    }

    @Override
    public Owner findOne(String documentnumber) {
        Owner owner = ownerRepository.findOneByDocumentnumber(documentnumber);
        List<Pet> petList = new ArrayList<>();
        List<Pet> pets = owner.getPet();
        for(Pet pet:pets){
            petList.add(petRepository.findOneByGuidAndIsDeletedAndIsLast(pet.getGuid(),false,true));
        }
        owner.setPet(petList);
        return owner;
    }

    @Override
    public Owner findOwnerByEmailUser(String email) {
        User user = userService.getUserByEmail(email).get();
        return findOne(user.getOwner().getDocumentnumber());
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
