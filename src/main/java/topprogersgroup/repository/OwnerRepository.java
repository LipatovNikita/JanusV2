package topprogersgroup.repository;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.Owner;

import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
public interface OwnerRepository extends JpaRepository<Owner,Integer> {
    List<Owner> findByIsDeleted(boolean isDeleted, Pageable pageable);
    Owner findOneByDocumentnumber(String documentnumber);
}
