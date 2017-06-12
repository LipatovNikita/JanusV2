package topprogersgroup.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "owner")
public class Owner {

    @Id
    @Column(name = "numberAndSeriesOfPassport", unique = true, nullable = false)
    private String numberAndSeriesOfPassport;

    @Column(name = "firstName", nullable = false)
    private String firstName;

    @Column(name = "lastName", nullable = false)
    private String lastName;

    //отчество
    @Column(name = "patronymic", nullable = false)
    private String patronymic;

    @Column(name = "gender", nullable = false)
    private boolean gender;

    @Column(name = "dateOfBirth", nullable = false)
    @Temporal(value=TemporalType.DATE)
    private Date dateOfBirth;

    @Column(name = "phoneNumber", nullable = false)
    private String phoneNumber;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "owner")
    private Passport passport;

    @OneToMany(mappedBy = "owner", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Pet> pet;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;
}
