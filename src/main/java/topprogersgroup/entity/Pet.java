package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

//@Data
//@Entity
//@Table(name = "pet")
public class Pet {

//    @Id
@GeneratedValue(strategy= GenerationType.IDENTITY)
@Column(name = "id", unique = true, nullable = false)
private int id;

    @Column(name = "guid", nullable = false)
    private String guid;

    @Column(name = "isLast", nullable = false)
    private boolean isLast;

    @OneToOne
    @JoinColumn(name = "passport_id")
    private Passport passport;

    @OneToOne
    @JoinColumn(name = "quarantine_id")
    private Quarantine quarantine;

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private Owner owner;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "pet_bid",
            joinColumns = @JoinColumn(name = "bid_id"),
            inverseJoinColumns = @JoinColumn(name = "pet_id"))
    private List<Bid> bids;
}
