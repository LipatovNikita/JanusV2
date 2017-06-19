package topprogersgroup.service;

import org.springframework.data.domain.Pageable;
import topprogersgroup.entity.Owner;

import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
public interface OwnerService {

    Owner save(Owner owner);

    Owner findOne(String documentnumber);

    Owner findOwnerByEmailUser(String email);

    List<Owner> findForPageIsDeleted(Pageable pageable);

    List<Owner> findForPageIsNotDeleted(Pageable pageable);

    void delete(Owner owner);
}
