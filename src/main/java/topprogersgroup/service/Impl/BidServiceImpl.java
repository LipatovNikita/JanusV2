package topprogersgroup.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import topprogersgroup.entity.Bid;
import topprogersgroup.repository.BidRepository;
import topprogersgroup.service.BidService;

import java.util.List;

/**
 * Created by aalle on 16.06.2017.
 */
@Service
public class BidServiceImpl implements BidService {

    @Autowired
    private BidRepository bidRepository;

    @Override
    public Bid save(Bid bid) {
        return bidRepository.save(bid);
    }

    @Override
    public Bid findOne(Integer id) {
        return bidRepository.findOne(id);
    }

    @Override
    public List<Bid> findForPageIsDeleted(Pageable pageable) {
        return bidRepository.findByIsDeleted(true, pageable);
    }

    @Override
    public List<Bid> findForPageIsNotDeleted(Pageable pageable) {
        return bidRepository.findByIsDeleted(false, pageable);
    }

    @Override
    public void delete(Bid bid) {
        bid.setDeleted(true);
        bidRepository.save(bid);
    }
}
