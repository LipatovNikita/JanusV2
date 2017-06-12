package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "address")
public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private int id;

    @Column(name = "country")
    private String country;

    @Column(name = "region")
    private String region;

    @Column(name = "city")
    private String city;

    @Column(name = "street")
    private String street;

    @Column(name = "building")
    private String building;

    @Column(name = "apartment")
    private String apartment;

    @Column(name = "postcode")
    private int postcode;

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "address")
    private Owner owner;

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "addressOfLaboratory")
    private Quarantine quarantine;

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "address")
    private StateVeterinaryService stateVeterinaryService;
}
