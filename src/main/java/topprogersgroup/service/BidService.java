package topprogersgroup.service;

import org.springframework.data.domain.Pageable;
import topprogersgroup.entity.Bid;
import topprogersgroup.entity.Owner;

import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
public interface BidService {

    Bid save(Bid bid);

    Bid findOne(Integer id);

    List<Bid> findForPageIsDeleted(Pageable pageable);

    List<Bid> findForPageIsNotDeleted(Pageable pageable);

    List<Bid> getBidListByOwner(Owner owner);

    void delete(Bid bid);
}
