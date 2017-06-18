package topprogersgroup.entity;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

@Data
@Entity
@Table(name = "owner")
public class Owner {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, unique = true)
    private int id;

    @Column(name = "documentnumber", unique = true, nullable = false)
    private String documentnumber;

    @Column(name = "firstname", nullable = false)
    @NotNull
    @Size(min = 2, max = 30)
    private String firstName;

    @Column(name = "lastname", nullable = false)
    @NotNull
    @Size(min = 2, max = 30, message = "")
    private String lastName;

    @Column(name = "middlename", nullable = false)
    private String middleName;

    @Column(name = "birthdate", nullable = false)
    @Temporal(value=TemporalType.DATE)
    private Date birthdate;

    @Column(name = "phonenumber")
    private String phoneNumber;

    @Column(name = "address", nullable = false)
    private String address;

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "owner")
    private Passport passport;

    @OneToMany(mappedBy = "owner", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Pet> pet;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "isdeleted")
    @Type(type = "boolean")
    private boolean isDeleted;
}
