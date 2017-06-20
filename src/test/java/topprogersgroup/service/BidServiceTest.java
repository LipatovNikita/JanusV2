package topprogersgroup.service;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import topprogersgroup.entity.Bid;
import topprogersgroup.repository.BidRepository;
import topprogersgroup.service.Impl.BidServiceImpl;

import javax.annotation.Resource;


import static org.junit.Assert.*;

/**
 * Created by aalle on 20.06.2017.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringBootTest
public class BidServiceTest {

    @Autowired
    private BidService bidService;

    @Test
    public void findOne() throws Exception {
        System.out.print(bidService.findOne(1));
    }

    @Test
    public void findForPageByStatusAndSortDate() throws Exception {
        Pageable pageable = new PageRequest(1,2);
        System.out.print(bidService.findForPageByStatusAndSortDate("processed",false,pageable));
    }

    @Test
    public void delete() throws Exception {
        Bid bid = bidService.findOne(1);
        bidService.delete(bid);
    }

}