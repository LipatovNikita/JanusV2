package topprogersgroup.entity;

import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private int id;

    @Column(name = "firstname", nullable = false)
    private String firstName;

    @Column(name = "lastname", nullable = false)
    private String lastName;

    @Column(name = "middlename", nullable = false)
    private String middleName;

    @Column(name = "documentnumber", nullable = false, unique = true)
    private int documentNumber;

    @Column(name = "phonenumber", nullable = false, unique = true)
    private String phoneNumber;

    // адрес проживания
    @Column(name = "residentialaddress", nullable = false)
    private String residentialAddress;

    // место работы (ГосВетСлужба)
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "veterinaryservice", nullable = false)
    private StateVeterinaryService stateVeterinaryService;

    // дата приёма на работу
    @Column(name = "employmentdate", nullable = false)
    private Date employmentDate;

    // должность
    @Column(name = "position", nullable = false)
    private String position;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user", unique = true)
    private User user;

    @Column(name = "isdeleted")
    @Type(type = "boolean")
    private boolean isDeleted;
}
