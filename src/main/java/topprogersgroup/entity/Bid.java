package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by aalle on 09.06.2017.
 */
//Заявка
@Data
@Entity
@Table(name = "bid")
public class Bid {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    //Дата отправления
    @Column(name = "departureDate")
    private Date departureDate;

    @Column(name = "countPet")
    private int countPet;

    @Column(name = "countOfSeats")
    private int countOfSeats;

    @Column(name = "status")
    private String status;

//    private Route route;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "pet_bid",
            joinColumns = @JoinColumn(name = "pet_id"),
            inverseJoinColumns = @JoinColumn(name = "bid_id"))
    private List<Pet> pets;

}
