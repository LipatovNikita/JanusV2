package topprogersgroup.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import topprogersgroup.entity.Bid;

import org.springframework.data.domain.Pageable;
import topprogersgroup.entity.Owner;

import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
public interface BidRepository extends JpaRepository<Bid,Integer> {
    List<Bid> findByIsDeleted(boolean isDeleted, Pageable pageable);
    List<Bid> findByOwnerAndIsDeleted(Owner owner, boolean isDeleted);
}
